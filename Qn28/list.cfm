<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style.css">
    <title>Document</title>
</head>
<body>
    <cfoutput>
    <cfif session.role Eq "admin" || session.role Eq 'editor'>
        <cfset session.isLogin=true>
        <header class="navBar">
            <div>
                <h3>Data Dive</h3>
            </div>
            <div class="innerNav">
                <a href="homePage.cfm">Home</a>
                <a href="editPage.cfm"> Add New Page</a>
                <a href="controls/pages.cfc?method=pageLogin">logout</a>
            </div>
        </header>
        <div class="labelStyle">
            <h3>Admin OR Editor</h3>
        </div>
            <div>
                <cfset local.demo=createObject("component","controls/pages")>
                <cfset local.display=#local.demo.displayPage()#>
            </div>
            <div class="labelStyle">
                <table>
                    <tr>
                        <th>Page Name</th>
                        <th>Page Description</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    <cfloop query="#local.display#">
                        <cfset session.pageId=#pageId#>
                        <cfset session.pageName=#pageName#>
                        <cfset session.pageDes=#pageDes#>
                        <tr>
                            <td>#pageName#</td>
                            <td>#pageDes#</td>
                            <td><a href="editPage.cfm?pageId=#pageId#">Edit</a></td>
                            <td><a href="controls/pages.cfc?method=deleteRow&idPage=#pageId#">Delete</a></td>
                        </tr>     
                    </cfloop>      
                </table>
            </div>
            
        <cfelse>
            <cfset session.isLogin=true>
            <div>
                <h3>User Page</h3>
            </div>
           
            <div>
                <cfset local.demo=createObject("component","controls/pages")>
                <cfset local.display=#local.demo.displayPage()#>
            </div>
            <div>
                <table border="1">
                    <tr>
                        <th>PageNo</th>
                        <th>PageName</th>
                    </tr>
                    <cfloop query="#local.display#">
                        <tr>
                            <td>#pageId#</td>
                            <td><a href="userView.cfm?idPage=#pageId#">#pageName#</a></td>
                        </tr>           
                    </cfloop>
                </table>
            </div>
            <button type="button"><a href="controls/pages.cfc?method=pageLogin">logout</a></button>
    </cfif>
    </cfoutput>

</body>
</html>