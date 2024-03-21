<cfcomponent>
    <cffunction name="showData" access="public">
        <cfset jsonData='[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]'>
        <cfset jsonPrint=DeserializeJSON(jsonData)>
        <cfreturn jsonPrint>  
    </cffunction>
</cfcomponent>