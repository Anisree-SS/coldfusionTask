<cfcomponent>
    <cffunction name="cookieCount" access="public">
        <cfset visit = 0>
        <cfif isDefined("cookie.newCookie")>
            <cfset visit = cookie.newCookie>
        </cfif>
        <cfset visit +=1 >
        <cfcookie name="newCookie" value="#visit#">
        <cfreturn visit>
    </cffunction>
</cfcomponent>