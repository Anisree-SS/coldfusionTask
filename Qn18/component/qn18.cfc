<cfcomponent>
    <cffunction name="getValue" access="public">
        <cfset dataTable=QueryNew("ID,Name,email","integer,varchar,varchar",[ [1,"anisree","anisree@gmail.com"], [2,"mikky","mikky@gmail.com"], [3,"tintu","tintu@gmail.com"] ])>
        <cfreturn dataTable>
    </cffunction>
</cfcomponent>