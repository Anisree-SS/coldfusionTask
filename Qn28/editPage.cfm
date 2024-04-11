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
        <!---<cfelseif REFind("\d", form.pageName)--->
        <cfelseif isValid("integer", form.pageName)>
            <cfset variables.Error&="Page name should be string!!"&"<br>">
    </cfif>
    <cfif len(trim(form.pageDes)) eq 0>
        <cfset variables.Error&="Page description is required!!"&"<br>">
        <cfelseif IsNumeric(form.pageDes)>
            <cfset variables.Error&="Page description required strings also!!"&"<br>">
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
    <!---script src="./assets/jquery.js"></script>
    <script src="../Qn28/assets/script.js"></script--->
    <link rel="stylesheet" type="text/css" href="./assets/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/style.css">
    <title>addOrEdit</title>
</head>
<cfoutput>
    <body class="container-fluid p-0">
        <div class="d-flex align-items-center justify-content-center col-12 ">
            <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark  px-3 px-sm-5 col-12">
                <a class="navbar-brand"><h3 class="clrHead"><b>Page Dive</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                                <a class="nav-link" href="homePage.cfm">Home</a>
                                <a class="nav-link" href="list.cfm">Page List</a>
                        </div>
                        <a class="nav-link" href="controls/pages.cfc?method=pageLogin">Log Out</a>
                    </ul>
                </div>
            </nav>
        </div>
            <div class="d-flex justify-content-center mt-5">
                <h2>#variables.heading#</h2>
            </div>
                <div class="d-flex justify-content-center">
                    <p class="text-success">#variables.editMsg#</p>
                    <p class="text-danger" id="error">#variables.Error#</p>
                </div>
                <form action=""  method="post">
                    <div class="form-group row px-0 mx-5">
                        <input type="hidden" name="pageId" value="#variables.pageId#">
                        <label for="pageName " class="col-sm-2 col-form-label px-0">Page Name</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control px-0" id="pageName" value="#variables.name#" name="pageName">
                        </div>
                    </div>
                    <div class="form-group row px-0 mx-5">
                        <label for="pageDes" class="col-sm-2 col-form-label px-0">Page description</label>
                        <div class="col-sm-10">
                        <input type="text" class="form-control px-0" id="pageDes" name="pageDes" value="#variables.description#">
                        </div>
                    </div>
                    <div class="d-flex justify-content-end align-items-center w-25 m-5">
                        <input type="submit" name="submit" value="Save" class="inputLogin loginColor" id="submitBtn">
                        <button type="button" class="inputLogin bg-light border-0 ms-5"><a href="list.cfm">Cancel</a></button>
                    </div>
                </form>
            
            <div class="back">
                <a href="list.cfm"><img src="./assets/arrow.png" alt="back" class="backStyle"></a>
            </div>
    </body>
</cfoutput>
</html>