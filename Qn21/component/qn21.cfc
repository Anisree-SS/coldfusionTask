<cfcomponent>
    <cffunction name="send" access="public">
        <cfargument name="name" required="true" >
        <cfargument name="email" required="true" >
        <cfargument name="message" required="true" >
        <cfargument name="greeting" required="true" >

        <cfset local.path=Expandpath("assets/")>
        <cffile action = "upload" destination="#local.path#" nameConflict ="MakeUnique">
        <cfset local.image=cffile.clientFile>
       
        <cfmail to="#arguments.email#" from="anisree@gmail.com" subject="hbay" mimeattach="#local.path##local.image#">
            #arguments.message#
        </cfmail>
        <cfreturn "successfully mail send">
    </cffunction>
</cfcomponent>