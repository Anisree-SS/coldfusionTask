<cfcomponent>
    <cffunction name="countWord" access="public">
        <cfargument name="word" type="string" required="true">
        <cfset local.inputString="the quick brown fox jumps over the lazy dog">
        <cfset local.count = 0>
        <cfset local.inputString = ListToArray(local.inputString," ")>
        <cfloop from="1" to="#ArrayLen(local.inputString)#" index="i">
            <cfif CompareNoCase(local.inputString[i],arguments.word) EQ 0>
                <cfset local.count = local.count + 1>
            </cfif>
        </cfloop>
        <cfreturn local.count>
    </cffunction>
</cfcomponent>