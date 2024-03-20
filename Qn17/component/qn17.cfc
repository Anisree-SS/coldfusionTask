<cfcomponent>
    <cffunction name="display" access="public">
        <cfargument name="limit" required="true">
        <cfoutput>
            <cfloop index="i" from="1" to="#arguments.limit#">
                <cfif i%2 EQ 0>
                    <FONT COLOR="##008000">
                        #i#, 
                    </FONT>
                <cfelse>
                    <FONT COLOR="##0000ff">
                       #i#, 
                    </FONT>
                </cfif>
            </cfloop>
        </cfoutput> 
    </cffunction>
</cfcomponent>

