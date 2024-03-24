<cfcomponent>
    <cffunction name="inserting" access="public" type="any">
        <cfargument name="datas">
            <cfif len(trim(arguments.datas))>
                <cfset words = listToArray(arguments.datas," ")>
                    <cfloop array="#words#" index="word">
                        <cfquery name="checkData" datasource="demo">
                            select data from wordlist
                            where data=<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">
                        </cfquery>
                        <cfif checkData.recordCount>
                            <cfcontinue>  
                            <cfelse>
                            <cfquery datasource="demo" name="insertWord" result="insertdata">
                                INSERT INTO wordlist(data) 
                                VALUES (<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">)
                            </cfquery>
                        </cfif>
                    </cfloop>
                <cfreturn "Data inserted successfully">
            </cfif>
    </cffunction>
</cfcomponent>