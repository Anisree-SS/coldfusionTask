<cfcomponent>
    <cffunction name="printStruct" access="public">
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfset myStructure = {}>
        <cfset myStructure[arguments.key] = arguments.value>
        <cfreturn myStructure>
    </cffunction>
</cfcomponent>