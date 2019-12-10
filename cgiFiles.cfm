<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CGI files</title>
</head>

<body>
<cfsetting showdebugoutput="no" />
<cfset CGIfolder = '\\194.66.252.148\e$\cgi_iugs\wwwroot' />
<cfdirectory directory="#CGIfolder#" action="list" recurse="yes" name="cgiFiles" sort="directory ASC" />
<cfloop query="cgiFiles">
	<cfset folderPath = RemoveChars(directory,1,len(CGIfolder)) />
	<cfset URLpath = replace(folderPath,'\','/','All') />
	<cfoutput>http://cgi-iugs.org#URLpath#/#name# : #dateLastModified#<br />
	</cfoutput>
</cfloop>
</body>
</html>