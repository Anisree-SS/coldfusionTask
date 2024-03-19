<cfcomponent>
   <cffunction name="show" access="public">
        <cfargument name="numbers"  required="true">
        <cfset result=[]>
        <cfset var local.arrayList = listToArray(arguments.numbers)>
        <cfloop index="i" from="1" to="#arrayLen(local.arrayList)#">
            <cfif local.arrayList[i] mod 3 neq 0>
                <cfcontinue>
            </cfif>
            <cfset arrayAppend(result, local.arrayList[i])>                
        </cfloop>
        <cfreturn arrayToList(result)>
        
        
    </cffunction>
</cfcomponent>