<cfcomponent>
    <cffunction name="findName" access="public" returnType="query">
        <cfquery name="allData">
            SELECT * FROM listName
        </cfquery>
        <cfreturn allData>
    </cffunction>
    <cffunction name="getFirstName" access="public">
        <cfargument name="number" type="numeric" required="true">
        <cfquery name="allData">
            SELECT fname FROM listName
        </cfquery>
        <cfset fname= QueryGetRow(allData, arguments.number)>
        <cfreturn fname>
    </cffunction>
</cfcomponent>