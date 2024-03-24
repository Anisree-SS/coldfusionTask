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
        <h3>User Page</h3>
    </div>
    <cfoutput>
        <div>
            <cfset local.demo=createObject("component","component/qn28")>
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
                        <td>#local.display.pageId#</td>
                        <td><a href="userView.cfm?idPage=#local.display.pageId#">#local.display.pageName#</a></td>
                    </tr>           
                </cfloop>
            </table>
        <div>
    </cfoutput>
</body>
</html>