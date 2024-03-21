<cfcomponent>
    <cffunction name="send" access="public">
        <cfargument name="name" required="true" >
        <cfargument name="email" required="true" >
        <cfargument name="wishes" required="true" >
        <cfargument name="greeting" required="true" >

        <cfset local.path=Expandpath("assets/")>
        <cffile action = "upload" destination="#local.path#" nameConflict ="MakeUnique">
        <cfset local.image=cffile.clientFile>

        <cfmail to="#arguments.email#" from="anisree@gmail.com" subject="#arguments.wishes#" mimeattach="#local.path##local.image#">
        Happy bday #arguments.wishes#
        </cfmail>
        <cfreturn "successfully mail send">

    </cffunction>
</cfcomponent>