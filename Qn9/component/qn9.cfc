<cfcomponent>
    <cffunction name="printStruct" access="public">
        <cfargument name="key" required="true">
        <cfargument name="value" required="true">
        <cfif not structKeyExists(session, "structSecond")>
            <cfset session.structSecond = structNew()>
        </cfif>
        <cfif StructKeyExists(session.structSecond, arguments.key)>	
               <cfdump var=" The Key #arguments.key# Already Exists" abort>
            <cfelse>
               <cfset session.structSecond["#arguments.key#"] = "#arguments.value#">	
        </cfif>
    </cffunction>
</cfcomponent>