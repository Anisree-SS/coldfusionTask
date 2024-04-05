<cfset variables.pageId=0>
<cfset variables.name=''>
<cfset variables.description=''>
<cfset variables.editMsg=''>
<cfif structKeyExists(url,"pageId")>
    <cfset variables.pageId=url.pageId>
    <cfset variables.checkRow=createObject("component","controls/pages").editRow(url.pageId)>
    <cfset variables.name=variables.checkRow.pageName>
    <cfset variables.description=variables.checkRow.pageDes>
</cfif>
<cfif StructKeyExists(form,"pageName")>
    <cfif IsNumeric(variables.pageId) AND variables.pageId GT 0>
        <cfinvoke method="updateRow" component="controls/pages" returnvariable="variables.editMsg">
            <cfinvokeargument name="pageId" value="#form.pageId#">
            <cfinvokeargument name="pageName" value="#form.pageName#">
            <cfinvokeargument name="pageDes" value="#form.pageDes#">
        </cfinvoke>
    <cfelse> 
        <cfinvoke method="addRow" component="controls/pages" returnvariable="variables.editMsg">
            <cfinvokeargument name="pageName" value="#form.pageName#">
            <cfinvokeargument name="pageDes" value="#form.pageDes#">
        </cfinvoke>  
    </cfif>  
</cfif>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style.css">
    <title>Document</title>
</head>
<body>
    <cfoutput>
           
        </div>
            <div>
                <form action="editPage.cfm" method="post">
                <lable>Enter Page Name : </labe>
                <input type="hidden" name="pageId" value="#variables.pageId#">
                <input type="text" name="pageName" value="#variables.name#"></br>
                <label>Enter page Description : </label>
                <textarea name="pageDes">#variables.description#</textarea><br>
                <br>
                <input type="submit" value="Edit" name="submit" id="submitBtn">
            </form>
            </div>
            <p>#variables.editMsg#</p>
            <button type="button"><a href="list.cfm">Back</a></button>
            <button type="button"><a href="controls/pages.cfc?method=pageLogin">logout</a></button>
        </div>
    </cfoutput>
</body>
</html>