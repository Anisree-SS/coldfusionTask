<cfcomponent>
    <cffunction name="printStruct" access="public">
        <cfset session.structFirst["#arguments.key#"] = "#arguments.value#">	
		<cfreturn session.structFirst>
    </cffunction>
</cfcomponent>