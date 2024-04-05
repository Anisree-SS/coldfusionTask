<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style.css">
    <title>Document</title>
</head>
<body>
    <cfif session.role Eq "admin" || session.role Eq 'editor'>
        <cfset session.isLogin=true>
        <div>
            <h3>Admin OR Editor</h3>
        </div>
        <cfoutput>
            <div>
                <cfset local.demo=createObject("component","controls/pages")>
                <cfset local.display=#local.demo.display()#>
            </div>
            <div>
                <table border="1">
                    <tr>
                        <th>Page ID</th>
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
                            <td>#pageId#</td>
                            <td>#pageName#</td>
                            <td>#pageDes#</td>
                            <td><a href="editPage.cfm?pageId=#pageId#">Edit</a></td>
                            <td><a href="controls/pages.cfc?method=deleteRow&idPage=#pageId#">Delete</a></td>
                        </tr>     
                    </cfloop>      
                </table>
            </div>
            <div>
                <form action="editPage.cfm" method="post">
                    <input type="submit" value="Add New Page" name="submit">
                </form>
            </div>
            <button type="button"><a href="controls/pages.cfc?method=pageLogin">logout</a></button>
        </cfoutput>
       
        <cfelse>
            <cfset session.isLogin=true>
            <div>
                <h3>User Page</h3>
            </div>
            <cfoutput>
                <div>
                    <cfset local.demo=createObject("component","controls/pages")>
                    <cfset local.display=#local.demo.display()#>
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
            </cfoutput>
    </cfif>
</body>
</html>