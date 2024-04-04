<cfcomponent>
    <!--- checking mail --->
    <cffunction name="checkMail" access="remote" returnformat="json">
        <cfargument name="email" required="true">

        <cfquery name="checkEmail" datasource="demo">
            SELECT 1 FROM mailList
            WHERE Gmail = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif checkEmail.recordCount>
            <cfreturn {"message":"exists"}>
        <cfelse>
            <cfreturn {"message":"notexists"}>
        </cfif>   
    </cffunction>
    
    <!--- uploading to db --->
    <cffunction name="uploadMail" access="remote" returnformat="json">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
        
        <cfquery name="insertData" datasource="demo">
            INSERT INTO mailList (Name,Gmail)
            VALUES (
                <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
            )
        </cfquery>
        <cfreturn {"message":"uploaded"}>
    </cffunction>
</cfcomponent>