<cfapplication name="cgi_iugs"
    CLIENTMANAGEMENT="Yes"
    CLIENTSTORAGE="Registry"
    SETCLIENTCOOKIES="Yes" >
<cfset CGIusername = 'Members0nly' />
<cfset CGIpassword = 'proserpina' />
<cflogin>
<cfif NOT IsDefined("cflogin")>
  <cfinclude template="/members/home.cfm">
  <cfabort>
  <cfelse>
  <cfif cflogin.name eq "admin">
    <cfset roles = "admin">
    <cfelse>
    <cfset roles = "member">
  </cfif>
  <cfif (cflogin.name eq CGIusername) and (cflogin.password eq CGIpassword)>
    <cfloginuser name = "#cflogin.name#" password = "#cflogin.password#" roles="#roles#" />
  </cfif>
</cfif>
</cflogin>


