<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<cfinclude template="/headIncludes.cfm">
<title>CGI |  Members</title>
<meta name="description" content="The Commission for the Management and Application of Geoscience Information" />
<meta name="keywords" content="CGI, The Commission for the Management and Application of Geoscience Information, GeoSciML" />
</head>
<body>
<div id="widthBox">
	<cfinclude template="/header.htm">
	<div id="breadcrumbs"><a href="/home.html">Home</a> &raquo; <a href="/members/home.cfm">Members pages</a></div>
	<div id="content">
		<article>
			<section>
				<h1>Members' Pages</h1>
				<img src="/images/causeway.jpg" />
				<cfif IsUserLoggedIn()>
					<cfif action eq 'login'>
						<cflocation url="documentation.cfm" addtoken="no" />
						<cfelseif action eq 'logout'>
						<cflogout />
						<cflocation url="home.cfm" addtoken="no" />
					</cfif>
					<cfelse>
					<p>Invalid Username and/or Password</p>
					<p>Please <a href="home.cfm">go back</a> and try again.</p>
				</cfif>
			</section>
		</article>
	</div>
	<cfinclude template="/menu.htm">
	<cfinclude template="/footer.htm">
</div>
</body>
</html>
