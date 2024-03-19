<cfcomponent>
    <cffunction name="multiply" returntype="numeric" access="public">
        <cfargument name="numbers" required="true">
            <cfset var result = 1>
            <cfloop array="#arguments.numbers#" index="num">
                <cfset result =result*num>
            </cfloop>
        <cfreturn result>
    </cffunction> 
</cfcomponent>