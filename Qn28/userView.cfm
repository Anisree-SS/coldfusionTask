<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn28.css">
    <title>Document</title>
</head>
<body>
    <cfoutput>
            <cfset local.idPage=URL.idPage>
            <cfset local.demo=createObject("component","controls/pages")>
            <cfset local.display=#local.demo.viewData(local.idPage)#>
            <cfloop query="#local.display#">
            <div>
                <h3>#pageName#</h3>
            </div>
            <div>
                <p>#pageDes#</p>
            </div>    
            </cfloop>      
        <button type="button"><a href="list.cfm">Back</a></button>
        <button type="button"><a href="login.cfm">logout</a></button>
    </cfoutput>
</body>
</html>