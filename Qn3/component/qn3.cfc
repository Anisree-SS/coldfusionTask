<cfcomponent>
   <cffunction name="show" access="public">
        <cfargument name="numbers"  required="true">
        <cfset local.result=[]>
        <cfset var local.arrayList = listToArray(arguments.numbers)>
        <cfloop index="i" from="1" to="#arrayLen(local.arrayList)#">
            <cfif local.arrayList[i] mod 3 eq 0>
                <cfset arrayAppend(local.result, local.arrayList[i])> 
            </cfif>           
        </cfloop>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>