<cfcomponent>
    <cffunction name="display" access="public">
        <cfargument name="limit" required="true">
        <cfset local.numbers=[]>
        <cfloop index="i" from="1" to="#arguments.limit#">
            <cfif i%2 EQ 0>
                <cfset arrayAppend(local.numbers, {number=i , color ="blue"})>
                <cfelse>
                    <cfset arrayAppend(local.numbers, {number=i , color ="green"})>
            </cfif>
        </cfloop>
        <cfreturn local.numbers>
    </cffunction>
</cfcomponent>

