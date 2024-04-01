<cfcomponent>

        <!--- Login --->
        <cffunction name="login" access="public">
            <cfargument name="userName" required="true">
            <cfargument name="password" required="true">
            
            <cfquery name="checkLogin" result="loginCheck">
                select * from loginTable
                where userName=<cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
                AND password=<cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar"> 
            </cfquery>

            <cfset local.id = checkLogin.userId>
            <cfif checkLogin.recordCount>
                <cfquery name="checkRole">
                    select role from loginTable
                    where userId=<cfqueryparam value="#local.id#" cfsqltype="cf_sql_integer">
                </cfquery>

                <cfif checkRole.role EQ "admin" || checkRole.role EQ "editor">
                    <cflocation url="adminPage.cfm">
                    <cfelseif checkRole.role EQ "user">
                        <cflocation url="userPage.cfm">
                    <cfelse>
                        <cfoutput>unknown role</cfoutput>
                </cfif>

                <cfelse>
                    <cfoutput>invalid</cfoutput>
            </cfif>
        </cffunction>

        <!--- For Display Table --->
        <cffunction name="display" access="remote">
            <cfquery name="forDisplay">
                select * from page;
            </cfquery>
            <cfreturn forDisplay>
        </cffunction>

        <!--- Add new row --->
        <cffunction name="addRow" access="remote">
            <cfargument name="pageName" required="true">
            <cfargument name="pageDes" required="true">
            
            <cfquery name="pageCheck">
                select * from page
                where pageName=<cfqueryparam value="#arguments.pageName#" cfsqltype="cf_sql_varchar">
            </cfquery>
            <cfif pageCheck.recordCount>
                <cfreturn "the page is already present">
                <cfelse>
                    <cfquery name="insertRow">
                        insert into page (pageName,pageDes)
                        values(
                            <cfqueryparam value="#arguments.pageName#" cfsqltype="cf_sql_varchar">,
                            <cfqueryparam value="#arguments.pageDes#" cfsqltype="cf_sql_varchar">
                        )
                    </cfquery>
                    <cfreturn "Data inserted successfully">
            </cfif>
        </cffunction>

        <!--- view for user--->
        <cffunction name="viewData" access="remote">
            <cfargument name="idPage">
            <cfquery name="forDisplay">
                select * from page
                where pageId =<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cfreturn forDisplay>
        </cffunction>

        <!--- Edit Row --->
        <cffunction name="editRow" access="remote">
            <cfargument name="pageName" required="true">
            <cfargument name="pageDes" required="true">
            <cfargument name="idPage" required="true">
            <cfquery name="check">
                select * from page 
                where pageId=<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cfif check.recordCount>
                <cfquery name="updatePage">
                    update page set pageName=<cfqueryparam value="#arguments.pageName#" cfsqltype="cf_sql_varchar">,
                    pageDes=<cfqueryparam value="#arguments.pageDes#" cfsqltype="cf_sql_varchar">
                    where pageId=<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_integer">
                </cfquery>
                <cfreturn "updated!!!!!!">  
            <cfelse>
                <cfreturn "there is no page">
            </cfif>
        </cffunction>

        <!--- Delete Row --->
        <cffunction name="deleteRow" access="remote">
            <cfargument name="idPage" required="true">
            <cfquery name="delete">
                delete from page
                where pageId=<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cflocation url="../adminPAge.cfm">
        </cffunction>

</cfcomponent>