-- 
-- send message in case of a smart card auth failure
--
USE Winlogon

DECLARE @bSendmail bit
SET @bSendmail = 1

DECLARE @crlf nvarchar(2)
SET @crlf = CHAR(13) + CHAR(10)

DECLARE @SCARD_W_WRONG_CHV bigint
SET @SCARD_W_WRONG_CHV = -2146434965

DECLARE @SCARD_W_INVALID_CHV bigint
SET @SCARD_W_INVALID_CHV = -2146435030

DECLARE @MessageBody nvarchar(4000)
SET @MessageBody = ""

DECLARE @dtChecktime datetime, @dtCurrenttime datetime
SET @dtChecktime = DATEADD(minute, -6, GETDATE())
SET @dtCurrenttime = DATEADD(minute, 1, GETDATE())
--SET @dtChecktime = DATEADD(day, -1, GETDATE())

DECLARE authmon_cursor CURSOR FOR
SELECT BUILDLAB, CARD, CERTISSUER, DC, DOMAIN, MACHINENAME, READER, SESSION, STATUS, TIMESTAMP, UNLOCK, USERNAME
FROM AuthMonitor
WHERE CARD <> ""
AND STATUS <> 0
AND STATUS <> @SCARD_W_WRONG_CHV
AND STATUS <> @SCARD_W_INVALID_CHV
AND TIMESTAMP > @dtChecktime
AND TIMESTAMP < @dtCurrenttime

DECLARE @stBuildlab nvarchar(64)
DECLARE @stCard nvarchar(32)
DECLARE @stCertIssuer nvarchar(32)
DECLARE @stDC nvarchar(32)
DECLARE @stDomain nvarchar(32)
DECLARE @stMachinename nvarchar(32)
DECLARE @stReader nvarchar(32)
DECLARE @bSession bit
DECLARE @iStatus int
DECLARE @dtTimestamp datetime
DECLARE @bUnlock bit
DECLARE @stUsername nvarchar(16)

OPEN authmon_cursor
FETCH NEXT FROM authmon_cursor
INTO @stBuildlab, @stCard, @stCertIssuer, @stDC, @stDomain, @stMachinename, @stReader, @bSession, @iStatus, @dtTimestamp, @bUnlock, @stUsername

DECLARE @iNumFailures int
SET @iNumFailures = 0

WHILE @@FETCH_STATUS = 0
BEGIN

    -- ignore some people that are playing with the stuff a lot.
    IF LOWER(LEFT(@stMachineName, 7)) <> 'kschutz'  AND
       LOWER(LEFT(@stMachineName, 8)) <> 'ericperl' AND 
       LOWER(LEFT(@stMachineName, 5)) <> 'reidk'
    BEGIN

        SET @iNumFailures = @iNumFailures + 1
 
        DECLARE @stOperation nvarchar(10)
        IF @bUnlock = 0
            SET @stOperation = "Logon"
        ELSE
            SET @stOperation = "Unlock"

        DECLARE @stSession nvarchar(20)
        IF @bSession = 0
            SET @stSession = "Local"
        ELSE
            SET @stSession = "TS Client"

        DECLARE @stHex nvarchar(8), @stError nvarchar(32)
        EXEC #Dec2Error @iStatus, @stHex OUTPUT, @stError OUTPUT
        
        SET @MessageBody = @MessageBody + 
                           "Time:       " + CAST(@dtTimestamp AS nvarchar(20)) + @crlf +
                           "User:       " + @stUsername + @crlf +
                           "Operation:  " + @stOperation + @crlf + 
                           "Session:    " + @stSession + @crlf + 
                           "Status:     " + @stError + " (0x" + @stHex + ")" + @crlf +
                           "Machine:    " + @stMachinename + @crlf +
                           "Build:      " + @stBuildlab + @crlf +
                           "Domain:     " + @stDomain + @crlf +
                           "DC:         " + @stDC + @crlf +
                           "Card:       " + @stCard + @crlf +
                           "Certissuer: " + @stCertissuer + @crlf +
                           "Reader:     " + @stReader + @crlf + 
                           @crlf
    END

    FETCH NEXT FROM authmon_cursor
    INTO @stBuildlab, @stCard, @stCertIssuer, @stDC, @stDomain, @stMachinename, @stReader, @bSession, @iStatus, @dtTimestamp, @bUnlock, @stUsername
END

CLOSE authmon_cursor
DEALLOCATE authmon_cursor

IF @bSendmail = 0 AND @iNumFailures <> 0
    PRINT @MessageBody

IF @bSendmail = 1 AND @iNumFailures <> 0
BEGIN
    DECLARE @Return int
    EXEC @Return = master.dbo.xp_sendmail 
         @recipients = 'smcaft', 
         @message =  @MessageBody,
         @subject = 'Smart card authentication failure'

    IF @Return <> 0
        RAISERROR ("xp_sendmail failed", 1, 1)
END
GO
