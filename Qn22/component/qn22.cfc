<cfcomponent>
    <cffunction name="showData" access="public">
        <cfset jsonData='[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]'>
        <cfreturn DeserializeJSON(jsonData)>
    </cffunction>
</cfcomponent>