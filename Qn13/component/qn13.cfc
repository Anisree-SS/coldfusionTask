<cfcomponent>
    <cffunction name="countWord" access="public">
        <cfargument name="word" type="string" required="true">
        <cfset inputString="the quick brown fox jumps over the lazy dog">
        <cfset count = 0>
        <cfset inputString = ListToArray(inputString," ")>
        <cfloop from="1" to="#ArrayLen(inputString)#" index="i">
            <cfif CompareNoCase(inputString[i],arguments.word) EQ 0>
                <cfset count = count + 1>
            </cfif>
        </cfloop>
        <cfreturn count>
    </cffunction>
</cfcomponent>