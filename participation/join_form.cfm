<cfoutput>
	<!DOCTYPE html>
	<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<cfinclude template="/headIncludes.cfm">
	<title>CGI | Who we are and how to join us | Join form</title>
	<meta name="Description" content="The Commission for the Management and Application of Geoscience Information" />
	<meta name="Keywords" content="CGI, The Commission for the Management and Application of Geoscience Information, GeoSciML" />
	<script src="/js/js_md5.js" type="text/javascript" language="JavaScript"></script>
	<script src="hash.js" type="text/javascript" language="JavaScript"></script>
	<cfif cgi.QUERY_STRING eq 'language=english'>
		<cfset isEnglish = true />
		<cfelseif cgi.QUERY_STRING eq 'language=spanish'>
		<cfset isSpanish = true />
	</cfif>
	<cfif isDefined('isEnglish') and isEnglish>
		<cfset breadcrumbs = '<a href="/home.html">Home</a> &raquo; <a href="/participation/home.html">Join CGI</a> &raquo; <a href="/participation/join_form.cfm?language=english">Join form</a>' />
		<cfset menu = '/menu.htm' />
		<cfset title = 'Application to Join CGI' />
		<cfset para1 = "CGI welcomes applications from anyone whose nations and organisations are part of the International Union of Geological Sciences (IUGS). " />
		<cfset para2 = "You will be contacted shortly after we receive  your details. (* = mandatory field)
To join a particular CGI Working Group, first join CGI using the form below, then contact the Working Group leader on the relevant <a href='/tech_collaboration/workingGroups.html'>working group page</a>." />
		<cfset para3 = "It's free!" />
		<cfset familyName = 'Family name' />
		<cfset firstName = 'First name' />
		<cfset Address = 'Address' />
		<cfset City = 'City' />
		<cfset pcode = 'Postal/Zip Code' />
		<cfset Country = 'Country' />
		<cfset Email = 'Email' />
		<cfset Tel = 'Tel. Number' />
		<cfset Fax = 'Fax' />
		<cfset employer = 'Organisation / employer' />
		<cfset confirm = 'I confirm that I am a member of an organisation or citizen of a country that is a member of the IUGS' />
		<cfset areas = 'My area of interest in geoscience information is: ' />
		<cfset modelling = '3D and 4D modelling' />
		<cfset DMA = 'Data modelling and architecture' />
		<cfset DFDC = 'Digital field data capture' />
		<cfset DMAC = 'Digital mapping and cartography' />
		<cfset GIS = 'GIS' />
		<cfset IM = 'Information management' />
		<cfset IT = 'Information technology' />
		<cfset SD = 'Standards development' />
		<cfset WD = 'Web development' />
		<cfset other = 'Other - please specify below' />
		<cfset submit = 'Send Details' />
		<cfset clear = 'Clear form' />
		<cfset errorMessage = 'Please specify a value.' />
		<cfelseif isDefined('isSpanish') and isSpanish>
		<cfset menu = '/spanish/menu.htm' />
		<cfset breadcrumbs = '<a href="/spanish/home.html">Inicio</a> &raquo; <a href="/spanish/participate.html">&iquest;Qui&eacute;nes somos y quienes se han unido a nosotros?</a> &raquo; <a href="/participation/join_form.cfm?language=spanish">Solicitud de membres&iacute;a</a>' />
		<cfset title = 'Formulario de solicitud de membres&iacute;a del CGI' />
		<cfset para1 = 'Se solicita que se ingrese en el formulario sus datos personales con el mayor detalle posible. Posteriormente pulse el bot&oacute;n "Enviar Datos Personales" para enviar los mismos al CGI. Despu&eacute;s de recibir sus datos nos pondremos inmediatamente en contacto con ud.' />
		<cfset para2 = 'Muchas gracias.' />
		<cfset para3 = "Es gratis!" />
		<cfset familyName = 'Apellido' />
		<cfset firstName = 'Nombre/s' />
		<cfset Address = 'Domicilio' />
		<cfset City = 'Ciudad' />
		<cfset pcode = 'C&oacute;digo postal' />
		<cfset Country = 'Pa&iacute;s' />
		<cfset Email = 'Direcci&oacute;n de correo electr&oacute;nico' />
		<cfset Tel = 'N&uacute;mero de tel&oacute;fono' />
		<cfset Fax = 'N&uacute;mero de Fax:' />
		<cfset employer = 'Organismo o compan&iacute;a a la que pertenece' />
		<cfset confirm = 'Confirmo que pertenezco a una organizaci&oacute;n o soy ciudadano de un pa&iacute;s que es miembro de la IUGS' />
		<cfset areas = 'Mis &aacute;reas de inter&oacute;s en geo-informaci&oacute;n son las siguientes (tache las apropiadas)' />
		<cfset modelling = 'Modelado 3D y 4D' />
		<cfset DMA = 'Arquitectura y modelado de datos' />
		<cfset DFDC = 'Captura de datos en el campo' />
		<cfset DMAC = 'Mapeo y cartograf&iacute;a digital' />
		<cfset GIS = 'GIS' />
		<cfset IM = 'Gesti&oacute;n de la informaci&oacute;n' />
		<cfset IT = 'Tecnolog&iacute;a de la informaci&oacute;n' />
		<cfset SD = 'Desarrollo de normativas o est&aacute;ndares' />
		<cfset WD = 'Aplicaciones y desarrollos web' />
		<cfset other = 'Otros – por favor ponga el detalle en el casillero que se encuentra debajo' />
		<cfset submit = 'Borrar datos' />
		<cfset clear = 'Enviar datos' />
		<cfset errorMessage = 'Por favor, especifique un valor.' />
	</cfif>
	</head>
	<body>
	<div id="widthBox">
		<cfinclude template="/header.htm">
		<div id="breadcrumbs">#breadcrumbs#</div>
		<div id="content">
			<article>
				<section>
					<h1>#title#</h1>
					<p>#para1#</p>
					<p><strong>#para3#</strong></p>
					<p>#para2#</p>
					<form action="joinsuccess.cfm" method="post">
						<fieldset>
							<div id="div_Family_Name">
								<label for="Family_Name">#familyName#:<span class="red">*</span></label>
								<input type="text" name="Family_Name" id="Family_Name" required />
							</div>
							<br class="clear" />
							<div id="div_First_Name">
								<label for="First_Name">#firstName#:<span class="red">*</span></label>
								<input type="text" name="First_Name" id="First_Name" required />
							</div>
							<br class="clear" />
							<div id="div_address">
								<label for="address">#Address#:<span class="red">*</span></label>
								<textarea name="address" id="address" required></textarea>
							</div>
							<br class="clear" />
							<div id="div_City">
								<label for="City">#City#:<span class="red">*</span></label>
								<input type="text" name="City" id="City" required />
							</div>
							<br class="clear" />
							<div id="div_Code">
								<label for="Code">#pCode#:<span class="red">*</span></label>
								<input type="text" name="Code" id="Code" required />
							</div>
							<br class="clear" />
							<cfset getCountriesQuery = CreateObject("component", "QueryHelper").getCountries() />
							<div id="div_country">
								<label for="country">#Country#:<span class="red">*</span></label>
								<select id="country" name="country" required>
									<option value="" selected="selected"></option>
									<cfloop query="getCountriesQuery">
										<option value="#getCountriesQuery.name#">#getCountriesQuery.name#</option>
									</cfloop>
								</select>
							</div>
							<br class="clear" />
							<div id="div_Email">
								<label for="Email">#Email#:<span class="red">*</span></label>
								<input type="email" name="Email" id="Email" required />
							</div>
							<br class="clear" />
							<div id="div_Telephone">
								<label for="Telephone">#Tel#:<span class="red">*</span></label>
								<input type="tel" name="Telephone" id="Telephone" required />
							</div>
							<br class="clear" />
							<div id="div_Fax">
								<label for="Fax">#Fax#:</label>
								<input type="tel" name="Fax" id="Fax" />
							</div>
							<br class="clear" />
							<div id="div_Employer">
								<label for="Employer">#Employer#:<span class="red">*</span></label>
								<input type="text" name="Employer" id="Employer" required />
							</div>
							<br class="clear" />
							<div id="div_Confirm">
								<label for="Confirm" style="width:80%;">#confirm#<span class="red">*</span></label>
								<input type="checkbox" name="Confirm" id="Confirm" value="Yes" required />
							</div>
							<br class="clear" />
							<div id="div_area">
								<label for="area">#areas#:</label>
								<textarea name="area" id="area"></textarea>
							</div>
						</fieldset>
						<p class="clear">
							<input type="hidden" name="h" id="h" value="" />
							<input type="reset" value="#Clear#" />
							<input type="submit" value="#submit#" onclick="checkHash();" />
						</p>
					</form>
				</section>
			</article>
		</div>
		<cfinclude template="#menu#">
		<cfinclude template="/footer.htm">
	</div>
	</body>
	</html>
</cfoutput>