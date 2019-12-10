<cfcomponent>
<cffunction name="getCountries" access="public" output="false" returntype="Query">
  <cfquery name="getCountriesQuery" datasource="commonData">
	select name from countries order by name
</cfquery>
  <cfreturn getCountriesQuery />
</cffunction>
</cfcomponent>
