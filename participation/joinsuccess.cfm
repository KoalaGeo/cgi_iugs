<cfoutput>
	<!--See intranet help pages for further instructions.-->
	<cfscript>
//This section is validation, checks the hash created on form page and compares it to the one created below. If they match, the coldfusion queries will execute.
reqCFC=CreateObject('component','cfcs.utils.requestFns');
okToProceed=false;

if(isDefined("form.Family_Name") && isDefined("form.email") && isDefined("form.Address") && isDefined("form.h")){
	hStr=form.Family_Name & len(form.Family_Name) & form.email & len(form.email) & 'adskslndasebn' & form.Address & len(form.Address);

	hVal=Hash(hStr);
	if(form.h == hVal){
		okToProceed=true;
		}
	}
//SQL injection protection
if (isDefined("form.Family_Name")){Family_Name=reqCFC.sqlClean(form.Family_Name);}
else {Family_Name="";}
if (isDefined("form.First_Name")){First_Name=reqCFC.sqlClean(form.First_Name);}
else {First_Name="";}
if (isDefined("form.Address")){Address=reqCFC.sqlClean(form.Address);}
else {Address="";}
if (isDefined("form.City")){City=reqCFC.sqlClean(form.City);}
else {City="";}
if (isDefined("form.Code")){Code=reqCFC.sqlClean(form.Code);}
else {Code="";}
if (isDefined("form.country")){country=reqCFC.sqlClean(form.country);}
else {country="";}
if (isDefined("form.email")){email=reqCFC.sqlClean(form.email);}
else {email="";}
if (isDefined("form.Telephone")){Telephone=reqCFC.sqlClean(form.Telephone);}
else {Telephone="";}
if (isDefined("form.Fax")){Fax=reqCFC.sqlClean(form.Fax);}
else {Fax="";}
if (isDefined("form.Employer")){Employer=reqCFC.sqlClean(form.Employer);}
else {Employer="";}
if (isDefined("form.confirm")){confirm=reqCFC.sqlClean(form.confirm);}
else {confirm="";}
if (isDefined("form.area")){area=reqCFC.sqlClean(form.area);}
else {area="";}
if (isDefined("form.other")){other=reqCFC.sqlClean(form.other);}
else {other="";}
</cfscript>
	<!DOCTYPE html>
	<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<cfinclude template="/headIncludes.cfm">
	<title>CGI | Who we are and how to join us | Join form | Success</title>
	<meta name="Description" content="The Commission for the Management and Application of Geoscience Information" />
	<meta name="Keywords" content="CGI, The Commission for the Management and Application of Geoscience Information, GeoSciML" />
	</head>
	<body>
	<div id="widthBox">
	<cfinclude template="/header.htm">
	<div id="breadcrumbs"><a href="/home.html">Home</a> &raquo; <a href="/participation/home.html">Join CGI</a></div>
	<div id="content">
	<article>
	<section>
	<cfif okToProceed>
	<cfsavecontent variable="mailContent">
	<html>
	<head>
	<style type="text/css">
<!--
body {font-family:Arial,Helvetica,sans-serif;font-size:12px;color:##000000;text-decoration:none;background-color:##ffffff;}
table {font-family:Arial,Helvetica,sans-serif;font-size:12px;color:##000000;text-decoration:none;}
p {font-family:Arial,Helvetica,sans-serif;font-size:12px;color:##000000;text-decoration:none;}
hr {color:##000000;}
 -->
</style>
	</head>
	<body>
	<p><b>This person requires CGI Membership.</b></p>
	<table>
		<tr>
			<td><p><b>Family Name:</b></p></td>
			<td><p>
					<cfif isdefined("Family_Name")>
						#Family_Name#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>First Name:</b></p></td>
			<td><p>
					<cfif isdefined("First_Name")>
						#First_Name#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Address:</b></p></td>
			<td><p>
					<cfif isdefined("Address")>
						#Address#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>City Line 1:</b></p></td>
			<td><p>
					<cfif isdefined("City")>
						#City#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Post Code:</b></p></td>
			<td><p>
					<cfif isdefined("Code")>
						#Code#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Country:</b></p></td>
			<td><p>
					<cfif isdefined("Country")>
						#Country#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Email:</b></p></td>
			<td><p>
					<cfif isdefined("Email")>
						#Email#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Telephone:</b></p></td>
			<td><p>
					<cfif isdefined("Telephone")>
						#Telephone#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Organisation/employer:</b></p></td>
			<td><p>
					<cfif isdefined("Employer")>
						#Employer#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Confirmed:</b></p></td>
			<td><p>
					<cfif isdefined("Confirm")>
						#Confirm#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Attending Open Meeting:</b></p></td>
			<td><p>
					<cfif isdefined("attending")>
						#attending#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Interest:</b></p></td>
			<td><p>
					<cfif isdefined("area")>
						#area#
					</cfif>
				</p></td>
		</tr>
		<tr>
			<td><p><b>Other interest:</b></p></td>
			<td><p>
					<cfif isdefined("other")>
						#other#
					</cfif>
				</p></td>
		</tr>
	</table>
	</body>
	</html>
	</cfsavecontent>
	<cfmail to="CGIsecretariat@mail.cgs.gov.cn" from="www-bgs@bgs.ac.uk" type="HTML" subject="CGI membership request from #email#">
		#mailContent#
	</cfmail>
	<h1>Success!</h1>
	<p>Your application to join CGI has been successfully sent!</p>
	<p>Thank you for your interest in CGI.</p>
	<cfelse>
	<p>There was an error with the data entered.</p>
	<p>Please <a href="join_form.cfm?language=english" class="bodyLink">go back</a> and enter the information that you have missed.</p>
	</cfif>
	</section>
	</article>
	</div>
	<cfinclude template="/menu.htm">
	<cfinclude template="/footer.htm">
	</div>
	</body>
	</html>
</cfoutput>