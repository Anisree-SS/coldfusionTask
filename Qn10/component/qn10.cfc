<cfcomponent>
    <cffunction name="printStruct" access="public">

        <cfset session.structThird["#arguments.key#"] = "#arguments.value#">	
		<cfreturn session.structThird>
    </cffunction>
</cfcomponent>