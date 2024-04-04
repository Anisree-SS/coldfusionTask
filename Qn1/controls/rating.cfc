<cfcomponent> 
    <cffunction name = "show" access = "public">
        <cfargument name="number" required="true" type="any">
        <cfif arguments.number EQ 5>
                <cfreturn "Very good">
            <cfelseif arguments.number EQ 4>
                <cfreturn "Good">
            <cfelseif arguments.number EQ 3>
                <cfreturn " Fair">
            <cfelseif arguments.number EQ 2 OR arguments.number EQ 1>
                <cfreturn "Ok">
            <cfelse>
                <cfreturn "Enter number between 1 and 5">
        </cfif>
    </cffunction>
</cfcomponent>