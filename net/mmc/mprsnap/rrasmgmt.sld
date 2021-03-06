<?xml version="1.0" encoding="UTF-16"?>
<!DOCTYPE DCARRIER SYSTEM "mantis.dtd" [
<!-- RegKey registry types (map to REG_SZ etc) -->
<!ENTITY RegTypeNone                        "0" >
<!ENTITY RegTypeSz                          "1" >
<!ENTITY RegTypeExpandSz                    "2" >
<!ENTITY RegTypeBinary                      "3" >
<!ENTITY RegTypeDword                       "4" >
<!ENTITY RegTypeDwordBigEndian              "5" >
<!ENTITY RegTypeLink                        "6" >
<!ENTITY RegTypeMultiSz                     "7" >
<!ENTITY RegTypeResourceList                "8" >
<!ENTITY RegTypeFullResourceDescriptor      "9" >
<!ENTITY RegTypeResourceRequirementsList    "10" >
<!ENTITY RegTypeQword                       "11" >

<!-- RegKey registry operations -->
<!ENTITY RegOpWrite               "1" >
<!ENTITY RegOpDelete              "2" >
<!ENTITY RegOpEdit                "3" >

<!-- RegKey registry conditionals -->
<!ENTITY RegCondAlways            "1" >
<!ENTITY RegCondIfExists          "2" >
<!ENTITY RegCondIfNotExists       "3" >

<!-- RawDep dependency types -->
<!ENTITY RawDepNone               "None" >
<!ENTITY RawDepCLSID              "CLSID" >
<!ENTITY RawDepFile               "File" >
<!ENTITY RawDepRegKey             "RegKey" >
<!ENTITY RawDepRegValue           "RegValue" >
<!ENTITY RawDepRegPath            "RegPath" >
]>
<DCARRIER CarrierRevision="1">
	<TOOLINFO ToolName="iCat"><![CDATA[<?xml version="1.0"?>
<!DOCTYPE TOOL SYSTEM "file://mess/icat/tool.dtd">
<TOOL>
	<CREATED><NAME>iCat</NAME><VSGUID>{f802f157-4623-426a-8b39-ac2eb4332c74}</VSGUID><VERSION>1.0.0.244</VERSION><BUILD>244</BUILD><DATE>4/19/2000</DATE></CREATED><LASTSAVED><NAME>iCat</NAME><VSGUID>{f802f157-4623-426a-8b39-ac2eb4332c74}</VSGUID><VERSION>1.0.0.244</VERSION><BUILD>244</BUILD><DATE>4/20/2000</DATE></LASTSAVED></TOOL>
]]></TOOLINFO><COMPONENT ComponentVSGUID="{959A96C0-853E-4A25-A0C2-EBDDD2261F8A}" ComponentVIGUID="{59750DA4-D9A9-4C18-A254-4E915362A41E}" PlatformGUID="{B784E719-C196-4DDB-B358-D9254426C38D}" RepositoryVSGUID="{484C9D34-846E-40E2-A2E6-FF2771A303D5}" Revision="4" Visibility="1000" MultiInstance="False" Released="True" Editable="True" HTMLFinal="False"><DISPLAYNAME>Routing and Remote Access Management Snapins</DISPLAYNAME><VERSION>1.0</VERSION><DESCRIPTION>The MMC snapins to manage Routing and Remote Access Service</DESCRIPTION><COPYRIGHT>2000 Microsoft Corp.</COPYRIGHT><VENDOR>Microsoft Corp.</VENDOR><OWNERS>weijiang</OWNERS><AUTHORS>weijiang</AUTHORS><DATECREATED>4/19/2000</DATECREATED><DATEREVISED>4/20/2000</DATEREVISED><RESOURCE Name="File:&quot;%11%&quot;,&quot;mprsnap.dll&quot;" ResTypeVSGUID="{E66B49F6-4A35-4246-87E8-5C1A468315B5}" BuildTypeMask="819"><PROPERTY Name="DstPath" Format="String">%11%</PROPERTY><PROPERTY Name="DstName" Format="String">mprsnap.dll</PROPERTY><PROPERTY Name="SrcFileSize" Format="Integer">0</PROPERTY><PROPERTY Name="NoExpand" Format="Boolean">0</PROPERTY><DISPLAYNAME>Routing and Remote Access Service Manager</DISPLAYNAME><DESCRIPTION>Main snapin to manage Routing and Remote Access service</DESCRIPTION></RESOURCE><RESOURCE Name="File:&quot;%11%&quot;,&quot;ipsnap.dll&quot;" ResTypeVSGUID="{E66B49F6-4A35-4246-87E8-5C1A468315B5}" BuildTypeMask="819"><PROPERTY Name="DstPath" Format="String">%11%</PROPERTY><PROPERTY Name="DstName" Format="String">ipsnap.dll</PROPERTY><PROPERTY Name="SrcFileSize" Format="Integer">0</PROPERTY><PROPERTY Name="NoExpand" Format="Boolean">0</PROPERTY><DISPLAYNAME>Routing and Remote Access Service Manager</DISPLAYNAME><DESCRIPTION>Supporting snapin to manage Routing and Remote Access service</DESCRIPTION></RESOURCE><RESOURCE Name="File:&quot;%11%&quot;,&quot;rtrfiltr.dll&quot;" ResTypeVSGUID="{E66B49F6-4A35-4246-87E8-5C1A468315B5}" BuildTypeMask="819"><PROPERTY Name="DstPath" Format="String">%11%</PROPERTY><PROPERTY Name="DstName" Format="String">rtrfiltr.dll</PROPERTY><PROPERTY Name="SrcFileSize" Format="Integer">0</PROPERTY><PROPERTY Name="NoExpand" Format="Boolean">0</PROPERTY><DISPLAYNAME>Routing and Remote Access Service Manager</DISPLAYNAME><DESCRIPTION>Supporting dll to manage Routing and Remote Access service</DESCRIPTION></RESOURCE><RESOURCE Name="File:&quot;%11%&quot;,&quot;rrasprxy.dll&quot;" ResTypeVSGUID="{E66B49F6-4A35-4246-87E8-5C1A468315B5}" BuildTypeMask="819"><PROPERTY Name="DstPath" Format="String">%11%</PROPERTY><PROPERTY Name="DstName" Format="String">rrasprxy.dll</PROPERTY><PROPERTY Name="SrcFileSize" Format="Integer">0</PROPERTY><PROPERTY Name="NoExpand" Format="Boolean">0</PROPERTY><DISPLAYNAME>Routing and Remote Access Service Manager</DISPLAYNAME><DESCRIPTION>Supporting dll to manage Routing and Remote Access service</DESCRIPTION></RESOURCE><RESOURCE Name="File:&quot;%11%&quot;,&quot;remrras.exe&quot;" ResTypeVSGUID="{E66B49F6-4A35-4246-87E8-5C1A468315B5}" BuildTypeMask="819"><PROPERTY Name="DstPath" Format="String">%11%</PROPERTY><PROPERTY Name="DstName" Format="String">remrras.exe</PROPERTY><PROPERTY Name="SrcFileSize" Format="Integer">0</PROPERTY><PROPERTY Name="NoExpand" Format="Boolean">0</PROPERTY><DISPLAYNAME>Routing and Remote Access Service Manager</DISPLAYNAME><DESCRIPTION>Supporting program to manage Routing and Remote Access service</DESCRIPTION></RESOURCE><RESOURCE Name="File:&quot;%11%&quot;,&quot;napmmc.dll&quot;" ResTypeVSGUID="{E66B49F6-4A35-4246-87E8-5C1A468315B5}" BuildTypeMask="819"><PROPERTY Name="DstPath" Format="String">%11%</PROPERTY><PROPERTY Name="DstName" Format="String">napmmc.dll</PROPERTY><PROPERTY Name="SrcFileSize" Format="Integer">0</PROPERTY><PROPERTY Name="NoExpand" Format="Boolean">0</PROPERTY><DISPLAYNAME>Remote Access Policy Management</DISPLAYNAME><DESCRIPTION>Snapin to manage remote access policies</DESCRIPTION></RESOURCE><RESOURCE Name="File:&quot;%11%&quot;,&quot;mprsnap.msc&quot;" ResTypeVSGUID="{E66B49F6-4A35-4246-87E8-5C1A468315B5}" BuildTypeMask="819"><PROPERTY Name="DstPath" Format="String">%11%</PROPERTY><PROPERTY Name="DstName" Format="String">mprsnap.msc</PROPERTY><PROPERTY Name="SrcFileSize" Format="Integer">0</PROPERTY><PROPERTY Name="NoExpand" Format="Boolean">0</PROPERTY><DISPLAYNAME>MMC console file</DISPLAYNAME><DESCRIPTION>MMC console file</DESCRIPTION></RESOURCE><GROUPMEMBER GroupVSGUID="{64668FB9-9289-45f0-BEF9-23745D272E3D}"/><GROUPMEMBER GroupVSGUID="{350E1818-9E1D-4fd2-9A58-3962965280EE}"/><GROUPMEMBER GroupVSGUID="{388249D2-1897-44ff-86F2-E159A27AA037}"/><GROUPMEMBER GroupVSGUID="{D2AF69C5-EE0A-4cd3-9BA4-63BB2ED7732C}"/></COMPONENT></DCARRIER>
