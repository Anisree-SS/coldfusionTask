<cfcomponent>
    <cffunction name="show" access="public">
        <cfset count=1>
        <cfoutput>
            <cfloop index="i" from='1' to='3'>
                <cfloop index="j" from="1" to="3">
                    #count#
                    <cfset count+=3>
                </cfloop>
                <br>
                <cfset count=i+1>
            </cfloop>
        </cfoutput>
    </cffunction>
</cfcomponent>