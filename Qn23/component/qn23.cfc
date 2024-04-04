<cfcomponent>
    <cffunction name="formData" access="remote">
        <cfargument name="dropDown" requird="true">
        <cfargument name="radioButton" requird="true">
        <cfargument name="month" type="any" requird="true">
        <cfargument name="day" type="any" requird="true">
        <cfargument name="year" type="any" requird="true">
        <cfargument name="profile" type="any" requird="true">
        <cfargument name="resume" type="any" requird="false">
        <cfargument name="dollar" type="any" requird="false">
        <cfargument name="cents" type="any" requird="false" >
        <cfargument name="Fname" type="any" requird="true">
        <cfargument name="Lname" type="any" requird="true">
        <cfargument name="email" type="any" requird="true">
        <cfargument name="partOne" type="any" requird="true">
        <cfargument name="partTwo" type="any" requird="true">
        <cfargument name="partThree" type="any" requird="true">

        <cfset salary=arguments.dollar&"."&arguments.cents>
        <cfset userName=arguments.Fname&" "&arguments.Lname>
        <cfset relocateDate=CreateDate("#arguments.year#","#arguments.month#","#arguments.day#")>
        <cfset phone=arguments.partOne&arguments.partTwo&arguments.partThree>
    
        <cfset local.path = ExpandPath("../assets/")>
        <cffile action="upload" destination="#local.path#" nameConflict="MakeUnique">
        <cfset local.file=cffile.clientFile>

        <cfquery name="insertData">
            insert into formData(ApplayPosition,Relocate,DateOFJoining,Profile,Resume,Salary,Name,Email,phone)
            values(
                <cfqueryparam value="#arguments.dropDown#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.radioButton#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#relocateDate#" cfsqltype="CF_SQL_DATE">,
                <cfqueryparam value="#arguments.profile#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#local.file#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#salary#" cfsqltype="cf_sql_float">,
                <cfqueryparam value="#userName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#phone#" cfsqltype="cf_sql_varchar">
            ) 
        </cfquery>
            <cflocation url="../welcome.cfm">
    </cffunction>
</cfcomponent>