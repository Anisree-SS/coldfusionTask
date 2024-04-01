<cfcomponent>
    <cffunction name="printStruct" access="public">
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfset local.myStructure = {}>
        <cfset local.myStructure[arguments.key] = arguments.value>
        <cfreturn local.myStructure>
    </cffunction>
</cfcomponent>