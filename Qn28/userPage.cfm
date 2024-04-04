<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style.css">
    <title>Document</title>
</head>
<body>
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
        <button type="button"><a href="login.cfm">logout</a></button>
    </cfoutput>
</body>
</html>