<cfcomponent>
    <cffunction name="multiply" returntype="numeric" access="public">
        <cfargument name="numbers" required="true">
            <cfset local.result = 1>
            <cfloop array="#arguments.numbers#" index="num">
                <cfset local.result =local.result*num>
            </cfloop>
        <cfreturn local.result>
    </cffunction> 
</cfcomponent>