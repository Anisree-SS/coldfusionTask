<cfcomponent>

    <!--- checking mail --->
    <cffunction name="checkMail" access="remote">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">

        <cfquery name="checkEmail" datasource="demo">
            SELECT * FROM mailList
            WHERE Gmail = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif checkEmail.recordCount>
            <cfoutput>{"message":"exists"}</cfoutput>
        <cfelse>
            <cfoutput>{"message":"notexists"}</cfoutput>
        </cfif>   
    </cffunction>
    
    <!--- uploading to db --->
    <cffunction name="uploadMail" access="public">
        <cfargument name="name" required="true">
        <cfargument name="email" required="true">
            <cfquery name="insertData" datasource="demo">
                INSERT INTO mailList (Name,Gmail)
                VALUES (
                    <cfqueryparam value="#arguments.name#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
            <cfreturn "email uploaded successfully">
    </cffunction>

</cfcomponent>