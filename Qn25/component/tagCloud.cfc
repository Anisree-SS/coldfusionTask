<cfcomponent>
    <cffunction name="inserting" access="public" type="any">
        <cfargument name="datas">
            <cfquery>
                delete from ItemTable
            </cfquery>
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
       
        <cfset sortedWords=[]>
        <cfloop array="#sortedData#" index="word">
            <cfset arrayAppend(sortedWords,[wordCounts[word],word])>
        </cfloop>

        <cfquery>
            delete from ItemTable
        </cfquery>

        <cfloop array="#sortedWords#" index="word">
            <cfquery name="insertWord" result="insertdata">
                INSERT INTO ItemTable(word) 
                VALUES (<cfqueryparam value="#word[2]#">)
            </cfquery>
        </cfloop>

        <cfquery name="forDisplay"  result="display">
            SELECT * FROM ItemTable 
            ORDER BY len(word) desc
        </cfquery>
      
        <cfset sample=[]>
        <cfloop query="#forDisplay#">
            <cfset session.mystruct[#word#] = structFind(wordCounts,#word#)>
        </cfloop>
        <cfset data=structSort(session.mystruct,"numeric", "desc")>

        <cfloop array="#data#" index="word">
            <cfset arrayAppend(sample,[wordCounts[word],word])>
        </cfloop>
        <cfreturn "#sample#">
    </cffunction>

    <!--- 3rd Qn 25 --->
   
    <cffunction name="forColor" access="public">
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
       
        <cfset sortedWords=[]>
        <cfloop array="#sortedData#" index="word">
            <cfset arrayAppend(sortedWords,[wordCounts[word],word])>
        </cfloop>

        <cfquery>
            delete from ItemTable
        </cfquery>

        <cfloop array="#sortedWords#" index="word">
            <cfquery name="insertWord" result="insertdata">
                INSERT INTO ItemTable(word) 
                VALUES (<cfqueryparam value="#word[2]#">)
            </cfquery>
        </cfloop>

        <cfquery name="forDisplay"  result="display">
            SELECT * FROM ItemTable 
            ORDER BY len(word) desc
        </cfquery>
      
        <cfset sample=[]>
        <cfloop query="#forDisplay#">
            <cfset session.mystruct[#word#] = structFind(wordCounts,#word#)>
        </cfloop>
        <cfset data=structSort(session.mystruct,"numeric", "desc")>

        <cfloop array="#data#" index="word">
            <cfset arrayAppend(sample,[wordCounts[word],word])>
        </cfloop>

        <cfset colorData=[]>
        <cfset minFontSize=14>
        
        <cfloop array="#sample#" index="word">
            <cfset Red = randRange(0, 255)>
            <cfset Green = randRange(0, 255)>
            <cfset Blue = randRange(0, 255)>
            <cfset Color = "##"&formatBaseN(Red, '16')&formatBaseN(Green, '16')&formatBaseN(Blue, '16')>
            <cfset fontSize = minFontSize + (word[1]*1)>
            <cfset arrayAppend(colorData, {word = word, fontSize = fontSize, color = Color})>
        </cfloop>
    
      <cfreturn colorData>
   </cffunction>

</cfcomponent>
