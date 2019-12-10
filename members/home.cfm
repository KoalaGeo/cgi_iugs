<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<cfinclude template="/headIncludes.cfm">
<title>CGI |  Members</title>
<meta name="description" content="The Commission for the Management and Application of Geoscience Information" />
<meta name="keywords" content="CGI, The Commission for the Management and Application of Geoscience Information, GeoSciML" />
</head>
<body>
<cfoutput>
	<div id="widthBox">
		<cfinclude template="/header.htm">
		<div id="breadcrumbs"><a href="/home.html">Home</a> &raquo; <a href="/misc/home.html">About Us</a> &raquo; <a href="/members/home.cfm">Members pages</a></div>
		<div id="content">
			<article>
				<section>
					<h1>Members' Pages</h1>
					<img src="/images/causeway.jpg" />
					<p>Please login to view the members pages.</p>
					<form action="/members/action.cfm?action=login" name="logform" method="post">
						<input type="hidden" name="j_username" size="25" maxlength="25" value="Members0nly" />
						<p class="small">Member login password:</p>
						<input type="password" name="j_password" size="20" maxlength="20" />
						<input type="submit" value="Log In" />
					</form>
				</section>
			</article>
		</div>
		<cfinclude template="/menu.htm">
		<cfinclude template="/footer.htm">
	</div>
</cfoutput>
</body>
</html>
