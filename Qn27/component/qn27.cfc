<cfcomponent>
    <cffunction name="loginFunction" access="public">
        <cfargument name="userName" required="true">
        <cfargument name="password" required="true">
        <cfif arguments.userName Eq "admin" && arguments.password Eq "admin">
                <cfset session.login=true>
                <cflocation url="welcome.cfm">
            <cfelse>
                <cfset session.login=false>  
                <cfreturn "invalid User name or password">
        </cfif>
    </cffunction>
</cfcomponent>