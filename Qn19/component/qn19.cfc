<cfcomponent>
    <cffunction name="cookieCount" access="public">
        <cfset local.visit = 0>
        <cfif isDefined("cookie.newCookie")>
            <cfset local.visit = cookie.newCookie>
        </cfif>
        <cfset local.visit +=1 >
        <cfcookie name="newCookie" value="#local.visit#">
        <cfreturn local.visit>
    </cffunction>
</cfcomponent>