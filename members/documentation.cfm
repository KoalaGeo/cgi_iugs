<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<cfinclude template="/headIncludes.cfm">
<title>CGI |  Members | Documentation</title>
<meta name="description" content="The Commission for the Management and Application of Geoscience Information" />
<meta name="keywords" content="CGI, The Commission for the Management and Application of Geoscience Information, GeoSciML" />
</head>
<body>
<cfoutput>
	<div id="widthBox">
		<cfinclude template="/header.htm">
		<div id="breadcrumbs"><a href="/home.html">Home</a> &raquo; <a href="/members/home.cfm">Members pages</a> &raquo; <a href="/members/documentation.cfm">Documentation</a></div>
		<div id="content">
			<article>
				<section>
					<cfif IsUserLoggedIn()>
						<p style="float:right;"><a href="action.cfm?action=logout">Logout</a></p>
						<h1>Welcome to the Members' Pages</h1>
						<div class="imgBoxRight20"><img src="/images/causeway.jpg" alt="Giant's causeway" /></div>
						<h2>CGI Council meetings</h2>
						<h3>Forthcoming meetings</h3>
						<p>Next Council annual meeting: Saturday 3 June 2017, Vienna, Austria.</p>
						<h3>Previous meetings</h3>
						<ul>
							<li><a href="docs/CGI_290816_minutes.pdf" target="_blank">29 August and 3 September 2016</a></li>
                            <li><a href="docs/CGI_021115_minutes.pdf" target="_blank">2&ndash;3 November 2015</a></li>
                            <li><a href="docs/CGI_281014_minutes.pdf" target="_blank">28&ndash;29 October 2014, Beijing</a></li>
                            <li><a href="docs/CGI_220414_minutes.pdf" target="_blank">22 April 2014, teleconference</a></li>
							<li><a href="docs/CGI_311013_minutes.pdf" target="_blank">31 October 2013, Denver</a></li>
							<li><a href="docs/CGI_050613_minutes.pdf" target="_blank">5 June 2013, Orleans</a></li>
							<li><a href="docs/CGI_110812_minutes.pdf" target="_blank">11 August 2012, Brisbane</a></li>
							<li><a href="docs/CGI_020711_minutes.pdf" target="_blank">2 July 2011, Edinburgh</a></li>
							<li><a href="docs/CGI_240810_Actions.pdf" target="_blank">24 August 2010</a></li>
							<li><a href="docs/CGI_290609_Actions.pdf" target="_blank">29 June 2009</a></li>
							<li><a href="docs/CGI_100808_Actions.pdf" target="_blank">10 August 2008</a></li>
							<li><a href="docs/CGI_240507_Actions.pdf" target="_blank">24 May 2007</a></li>
							<li><a href="docs/CGI_060906_Actions.pdf" target="_blank">6 September 2006</a></li>
							<li><a href="docs/CGI_240805_Actions.pdf" target="_blank">24 August 2005</a></li>
							<li><a href="docs/CGI_250804_Actions.pdf" target="_blank">25 August 2004</a></li>
							<li><a href="docs/CGI_240804_Actions.pdf" target="_blank">24 August 2004</a></li>
							<li><a href="docs/CGI_120303_Minutes.pdf" target="_blank">12th March 2003</a></li>
							<li><a href="docs/CGI_181002_Minutes.pdf" target="_blank">18th October 2002</a></li>
						</ul>
						<cfelse>
						<p>You do not have the correct credentials to access this page.</p>
						<p>Please contact <a href="mailto:CGIsecretariat@mail.cgs.gov.cn">CGIsecretariat@mail.cgs.gov.cn</a> if you feel you should be able to access this page.</p>
					</cfif>
				</section>
			</article>
		</div>
		<cfinclude template="/menu.htm">
		<cfinclude template="/footer.htm">
	</div>
</cfoutput>
</body>
</html>
