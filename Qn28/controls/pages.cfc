<cfcomponent>
        <!---  log in --->
        <cffunction name="login" access="public">
            <cfif session.isLogin>
                <cflocation url="list.cfm" addToken="no">                    
            </cfif>
        </cffunction>

        <!--- Log Out --->
        <cffunction name="pageLogin" access="remote">
            <CFSET StructClear(Session)>
            <cfset session.isLogin=false>
            <cflocation url="../login.cfm" addToken="no">
        </cffunction>

        <!--- Do Login --->
        <cffunction name="doLogin" access="public" retrunType="string">
            <cfargument name="userName" required="true">
            <cfargument name="password" required="true">
            
            <cfquery name="checkLogin" result="loginCheck">
                select userId,userName,password from loginTable
                where userName=<cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
                AND password=<cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar"> 
            </cfquery>

            <cfset local.id = checkLogin.userId>
            <cfif checkLogin.recordCount>
                <cfquery name="checkRole">
                    select role from loginTable
                    where userId=<cfqueryparam value="#local.id#" cfsqltype="cf_sql_integer">
                </cfquery>
                <cfset session.role=checkRole.role>
                <cfif session.role EQ "admin" || session.role EQ "editor" || session.role EQ "user">
                    <cflocation url="list.cfm">
                </cfif>
                <cfelse>
                    <cfreturn "invalid">
            </cfif>
        </cffunction>

        <!--- For Display Table --->
        <cffunction name="displayPage" access="remote" retrunType="query">
            <cfquery name="forDisplay">
                select pageId,pageName,pageDes from page;
            </cfquery>
            <cfreturn forDisplay>
        </cffunction>

        <!--- view for user--->
        <cffunction name="viewpage" access="remote" retrunType="query">
            <cfargument name="idPage">
            <cfquery name="forDisplay">
                select pageId,pageName,pageDes from page
                where pageId =<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cfreturn forDisplay>
        </cffunction>

        <!--- Edit Row --->
        <cffunction name="editPage" access="remote" retrunType="query">
            <cfargument name="pageId" required="true">
            <cfquery name="check">
                select pageId,pageName,pageDes from page 
                where pageId=<cfqueryparam value="#arguments.pageId#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cfreturn check>
        </cffunction>

        <!--- Save Page --->
        <cffunction name="savePage" access="remote" retrunType="string">
            <cfargument name="pageName" required="true">
            <cfargument name="pageDes" required="true">
            <cfargument name="pageId" required="true">
            <cfif arguments.pageId GT 0>
                <cfquery name="updatePage">
                    update page set pageName=<cfqueryparam value="#arguments.pageName#" cfsqltype="cf_sql_varchar">,
                    pageDes=<cfqueryparam value="#arguments.pageDes#" cfsqltype="cf_sql_varchar">
                    where pageId=<cfqueryparam value="#arguments.pageId#" cfsqltype="cf_sql_integer">
                </cfquery>
                <cfreturn "updated!!!!!!"> 
                <cfelse>
                    <cfquery name="pageCheck">
                        select 1 from page
                        where pageName=<cfqueryparam value="#arguments.pageName#" cfsqltype="cf_sql_varchar">
                    </cfquery>
                    <cfif pageCheck.recordCount>
                        <cfreturn "the page is already present" >
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
                </cfif>
        </cffunction>

        <!--- Delete Row --->
        <cffunction name="deleteRow" access="remote">
            <cfargument name="idPage" required="true">
            <cfquery name="delete">
                delete from page
                where pageId=<cfqueryparam value="#arguments.idPage#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cflocation url="../list.cfm">
        </cffunction>

</cfcomponent>