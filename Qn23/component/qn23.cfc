<cfcomponent>
    <cffunction name="formData" access="remote">
        <cfargument name="dropDown" requird="true">
        <cfargument name="radioButton" requird="true">
        <cfargument name="day" type="any" requird="true">
        <cfargument name="profile" type="any" requird="true">
        <cfargument name="resume" type="any" requird="false">
        <cfargument name="dollar" type="any" requird="false">
        <cfargument name="cents" type="any" requird="false" >
        <cfargument name="Fname" type="any" requird="true">
        <cfargument name="Lname" type="any" requird="true">
        <cfargument name="email" type="any" requird="true">
        <cfargument name="phone" type="any" requird="true">
        <cfset salary=arguments.dollar&"."&arguments.cents>
        <cfset userName=arguments.Fname&" "&arguments.Lname>
    
        <cfset local.path = ExpandPath("../assets/")>
        <cffile action="upload" destination="#local.path#" nameConflict="MakeUnique">
        <cfset local.file=cffile.clientFile>

        <cfquery name = "checkData">
            select ID from formDatas
            where email=<cfqueryparam value = "#arguments.email#" CFSQLType = "cf_sql_varchar">
        </cfquery>

        <cfif checkData.recordCount>
            <cfdump var="the email id is already exists">
        <cfelse>
            <cfquery name="insertData">
               insert into formDatas(ApplayPosition,Relocate,DateOFJoining,Profile,Resume,Salary,Name,Email,phone)
               values(
                    <cfqueryparam value="#arguments.dropDown#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.radioButton#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.day#" cfsqltype="CF_SQL_DATE">,
                    <cfqueryparam value="#arguments.profile#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#local.file#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#salary#" cfsqltype="cf_sql_float">,
                    <cfqueryparam value="#userName#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#arguments.phone#" cfsqltype="cf_sql_varchar">
               ) 
            </cfquery>
            <cfdump var="welcome!!!!!!!!">
        </cfif>

    </cffunction>
</cfcomponent>