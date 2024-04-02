<cfcomponent>
    <cffunction name="subscribe" access="public">
        <cfargument name="captcha" required="true">
        <cfif arguments.captcha EQ session.captchaText>
            <cfreturn "Email Address successfully subscribed to our newsletter.">
            <cfelse>
                <cfreturn "Captcha is not matching!!!!!">
        </cfif>
    </cffunction>
</cfcomponent>