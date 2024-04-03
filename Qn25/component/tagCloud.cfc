<cfcomponent>
    <cffunction name="inserting" access="public" type="any">
        <cfargument name="datas">
        <cfquery>
            delete from ItemTable
        </cfquery>
        <cfif len(trim(arguments.datas))>
            <cfset local.words = listToArray(arguments.datas," ")>
                <cfloop array="#local.words#" index="word">
                    <cfquery name="checkData">
                        select word from ItemTable
                        where word=<cfqueryparam value="#word#" cfsqltype="cf_sql_varchar">
                    </cfquery>
                    <cfif checkData.recordCount>
                        <cfcontinue>  
                        <cfelse>
                        <cfquery  name="insertWord">
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
        <cfset local.wordCounts = {}>
        <cfset local.words = reMatch("[a-zA-Z]+", arguments.datas)>
        <cfloop array="#local.words#" index="word">
            <cfif len(trim(word)) GT 2 AND NOT isNumeric(word)>
                <cfset word = lcase(trim(word))>
                <cfif structKeyExists(local.wordCounts, word)>
                    <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                    <cfelse>
                        <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfset local.sortedData = structSort(local.wordCounts, "numeric", "desc")>
       
        <cfset local.sortedWords=[]>
        <cfloop array="#local.sortedData#" index="word">
            <cfset arrayAppend(local.sortedWords,[local.wordCounts[word],word])>
        </cfloop>

        <cfquery>
            delete from ItemTable
        </cfquery>

        <cfloop array="#local.sortedWords#" index="word">
            <cfquery name="insertWord" result="insertdata">
                INSERT INTO ItemTable(word) 
                VALUES (<cfqueryparam value="#word[2]#" cfsqltype="cf_sql_varchar">)
            </cfquery>
        </cfloop>

        <cfquery name="forDisplay"  result="display">
            SELECT * FROM ItemTable 
            ORDER BY len(word) desc
        </cfquery>
      
        <cfset local.sample=[]>
        <cfloop query="#forDisplay#">
            <cfset session.mystruct[#word#] = structFind(local.wordCounts,#word#)>
        </cfloop>
        <cfset data=structSort(session.mystruct,"numeric", "desc")>

        <cfloop array="#data#" index="word">
            <cfset arrayAppend(local.sample,[local.wordCounts[word],word])>
        </cfloop>
        <cfreturn "#local.sample#">
    </cffunction>

    <!--- 3rd Qn 25 --->
   
    <cffunction name="forColor" access="public">
        <cfargument name="datas" required="true">
        <cfset local.wordCounts = {}>
        <cfset local.words = reMatch("[a-zA-Z]+", arguments.datas)>
        <cfloop array="#local.words#" index="word">
            <cfif len(trim(word)) GT 2 AND NOT isNumeric(word)>
                <cfset word = lcase(trim(word))>
                <cfif structKeyExists(local.wordCounts, word)>
                        <cfset local.wordCounts[word] = local.wordCounts[word] + 1>
                    <cfelse>
                        <cfset local.wordCounts[word] = 1>
                </cfif>
            </cfif>
        </cfloop>
        <cfset local.sortedData = structSort(local.wordCounts, "numeric", "desc")>
       
        <cfset local.sortedWords=[]>
        <cfloop array="#local.sortedData#" index="word">
            <cfset arrayAppend(local.sortedWords,[local.wordCounts[word],word])>
        </cfloop>

        <cfquery>
            delete from ItemTable
        </cfquery>
        <cfloop array="#local.sortedWords#" index="word">
            <cfquery name="insertWord" result="insertdata">
                INSERT INTO ItemTable(word) 
                VALUES (<cfqueryparam value="#word[2]#" cfsqltype="cf_sql_varchar">)
            </cfquery>
        </cfloop>

        <cfquery name="forDisplay"  result="display">
            SELECT * FROM ItemTable 
            ORDER BY len(word) desc
        </cfquery>
      
        <cfset local.sample=[]>
        <cfloop query="#forDisplay#">
            <cfset session.mystruct[#word#] = structFind(local.wordCounts,#word#)>
        </cfloop>
        <cfset local.data=structSort(session.mystruct,"numeric", "desc")>

        <cfloop array="#local.data#" index="word">
            <cfset arrayAppend(local.sample,[local.wordCounts[word],word])>
        </cfloop>

        <cfset local.colorData=[]>
        <cfset local.minFontSize=14>
        
        <cfloop array="#local.sample#" index="word">
            <cfswitch expression=#word[1]#>
                <cfcase value=1> <cfset local.Color="blue"> </cfcase>
                <cfcase value=2> <cfset local.Color="Green"> </cfcase>
                <cfcase value=3> <cfset local.Color="red"> </cfcase>
                <cfcase value=4> <cfset local.Color="cyan"> </cfcase>
                <cfcase value=5> <cfset local.Color="pink"> </cfcase>
                <cfdefaultcase><cfset local.Color="yellow"></cfdefaultcase>
            </cfswitch>
            <cfset local.fontSize = local.minFontSize + (word[1]*2)>
            <cfset arrayAppend(local.colorData, {word = word, fontSize = local.fontSize, color = local.Color})>
        </cfloop>
      <cfreturn local.colorData>
   </cffunction>

</cfcomponent>
