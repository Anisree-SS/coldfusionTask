<cfset variables.pageId=0>
<cfset variables.name=''>
<cfset variables.description=''>
<cfset variables.editMsg=''>
<cfset variables.Error =''> 

<cfif structKeyExists(url,"pageId")>
    <cfset variables.pageId=url.pageId>
    <cfset variables.checkRow=createObject("component","controls/pages").editPage(url.pageId)>
    <cfset variables.name=variables.checkRow.pageName>
    <cfset variables.description=variables.checkRow.pageDes>
</cfif>

<cfset variables.heading=structKeyExists(variables,"pageId") AND variables.pageId GT 0 ?"Edit Page":"Add Page">

<cfif StructKeyExists(form,"pageName")>
   <cfif len(trim(form.pageName)) EQ 0>
        <cfset variables.Error&="Page name is required"&"<br>">
        <cfelseif REFind("[^A-Za-z]", form.pageName)>
            <cfset variables.Error&="Page name Should be string"&"<br>">
    </cfif>
    <cfif len(trim(form.pageDes)) eq 0>
        <cfset variables.Error&="Page description is required"&"<br>">
        <cfelseif IsNumeric(form.pageDes)>
            <cfset variables.Error&="Page description required strings also"&"<br>">
    </cfif>
    <cfif len(trim(variables.Error)) eq 0>
        <cfif IsNumeric(form.pageId)>
            <cfset variables.update=createObject("component","controls/pages")>
            <cfset variables.editMsg=#variables.update.savePage(pageId=form.pageId,pageName=form.pageName,pageDes=form.pageDes)#>
        </cfif>
    </cfif>  
</cfif>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="./assets/jquery.js"></script>
    <script src="../Qn28/assets/script.js"></script>
    <link rel="stylesheet" href="./assets/style.css">
    <title>addOrEdit</title>
</head>
<body>
    <cfoutput>
            <div>
                <h2>#variables.heading#</h2>
            </div>
                <div>
                    <p style="color:green">#variables.editMsg#</p>
                    <p style="color:red;" id="error">#variables.Error#</p>
                </div>
            <div>
                <form action="editPage.cfm" method="post" id="target">
                    <input type="hidden" name="pageId" value="#variables.pageId#" >
                    <label>Page name <sup style="color:red">*</sup>: </label>
                    <input type="text" name="pageName" value="#variables.name#" id="pageName"></br>
                    <label>Page description <sup style="color:red">*</sup>: </label>
                    <textarea name="pageDes" id="pageDes">#variables.description#</textarea><br>
                    <input type="submit" value="Save" name="submit" id="submitBtn">
                </form>
            </div>
            <button type="button"><a href="list.cfm">Back</a></button>
            <button type="button"><a href="controls/pages.cfc?method=pageLogin">logout</a></button>
        </div>
    </cfoutput>
</body>
</html>