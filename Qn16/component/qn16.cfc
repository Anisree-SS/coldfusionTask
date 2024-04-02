<cfcomponent>
    <cffunction name="show" access="public">
        <cfset local.count=1>
        <cfset local.pattern=[]>
        <cfloop index="i" from='1' to='3'>
            <cfloop index="j" from="1" to="3">
                <cfset ArrayAppend(local.pattern,{row=i, number=count})>
                <cfset count+=3>
            </cfloop>
            <cfset ArrayAppend(local.pattern,{row=i, number="<br>"})>
            <cfset local.count=i+1>
        </cfloop>
        <cfreturn local.pattern>
    </cffunction>
</cfcomponent>
