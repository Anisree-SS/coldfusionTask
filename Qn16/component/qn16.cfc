<cfcomponent>
    <cffunction name="show" access="public">
        <cfset count=1>
        <cfset pattern=[]>
        <cfoutput>
            <cfloop index="i" from='1' to='3'>
                <cfloop index="j" from="1" to="3">
                    <cfset ArrayAppend(pattern,{row=i, number=count})>
                    <cfset count+=3>
                </cfloop>
                <cfset ArrayAppend(pattern,{row=i, number="<br>"})>
                <cfset count=i+1>
            </cfloop>
        </cfoutput>
        <cfreturn pattern>
    </cffunction>
</cfcomponent>
