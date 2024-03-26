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
        <cfset wordCounts = {}>
        <cfset words = reMatch("[a-zA-Z]+", arguments.datas)>
        <cfloop array="#words#" index="word">
            <cfif len(trim(word)) GT 2 AND NOT isNumeric(word)>
                <cfset word = lcase(trim(word))>
                <cfif structKeyExists(wordCounts, word)>
                    <cfset wordCounts[word] = wordCounts[word] + 1>
                <cfelse>
                    <cfset wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfset sortedData = structSort(wordCounts, "numeric", "desc")>
        <cfdump var="#sortedData#">
       

        <cfset sortedWords=[]>
        <cfloop array="#sortedData#" index="word">
            <cfset arrayAppend(sortedWords,[wordCounts[word],word])>
        </cfloop>
        <cfdump var="#sortedWords#">


        <cfloop array="#sortedWords#" index="word">
            <cfquery name="insertWord" result="insertdata">
                INSERT INTO ItemTable(word) 
                VALUES (<cfqueryparam value="#word[2]#">)
            </cfquery>
        </cfloop>

        <cfquery name="forDisplay" result="display">
            SELECT * FROM ItemTable 
            ORDER BY len(word) desc
        </cfquery>
        <cfdump var="#forDisplay#">
        

        <cfset sample=[]>
        
        <cfloop query="#forDisplay#">
            <cfset arrayAppend(sample,[structFind(wordCounts,word),word])>
        </cfloop>
        <cfset values=serializeJSON((sample),"struct")>
        <cfif IsJson(values)>
            <cfdump var="its struct">
        <cfelse>
            <cfdump var="its not struct">
        </cfif>

    <cfdump var="#sample#">
    <cfdump var="#values#">
       



    </cffunction>
</cfcomponent>