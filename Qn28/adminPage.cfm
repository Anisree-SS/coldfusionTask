<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn28.css">
    <title>Document</title>
</head>
<body>
    <div>
        <h3>Admin OR Editor</h3>
    </div>
    <cfoutput>
        <div>
            <cfset local.demo=createObject("component","component/qn28")>
            <cfset local.display=#local.demo.display()#>
        </div>
        <div>
            <table border="1">
                <tr>
                    <th>PageID</th>
                    <th>PageName</th>
                    <th>PageDescription</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <cfloop query="#local.display#">
                    <tr>
                        <td>#pageId#</td>
                        <td>#pageName#</td>
                        <td>#pageDes#</td>
                        <td><a href="editPage.cfm?idPage=#pageId#">Edit</a></td>
                        <td><a href="component/qn28.cfc?method=deleteRow&idPage=#pageId#">Delete</a></td>
                    </tr>     
                </cfloop>      
            </table>
        </div>
        <div>
            <form action="addPage.cfm" method="post">
                <input type="submit" value="Add New Page" name="submit">
            </form>
        </div>
        <button type="button"><a href="login.cfm">logout</a></button>
    </cfoutput>
</body>
</html>