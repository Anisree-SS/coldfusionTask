<cfcomponent>
    <cffunction name="loginFunction" access="public">
        <cfargument name="userName" required="true">
        <cfargument name="password" required="true">
        <cfif arguments.userName Eq "admin" && arguments.password Eq "admin">
            <cfreturn true>
            <cfelse>
                <cfreturn false>
        </cfif>
    </cffunction>
</cfcomponent>