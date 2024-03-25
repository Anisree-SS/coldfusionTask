<cfcomponent>
    <cffunction name="inserting" access="public" type="any">
        <cfargument name="datas">
            <cfif len(trim(arguments.datas))>
                <cfset words = listToArray(arguments.datas," ")>
                    <cfloop array="#words#" index="word">
                        <cfquery name="checkData" datasource="demo">
                            select word from ItemTable
                            where word=<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">
                        </cfquery>
                        <cfif checkData.recordCount>
                            <cfcontinue>  
                            <cfelse>
                            <cfquery datasource="demo" name="insertWord" result="insertdata">
                                INSERT INTO ItemTable(word) 
                                VALUES (<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">)
                            </cfquery>
                        </cfif>
                    </cfloop>
                <cfreturn "Data inserted successfully">
            </cfif>
    </cffunction>

    <!--- 2nd Qn 25 --->

    <cffunction name="countWord" access="public">
        <cfargument name="datas" required="true">
        
    </cffunction>
</cfcomponent>