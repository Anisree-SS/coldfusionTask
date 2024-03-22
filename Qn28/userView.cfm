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
            <cfset local.demo=createObject("component","component/qn28")>
            <cfset local.display=#local.demo.viewData(local.idPage)#>
            <cfloop query="#local.dis#">
            <div>
                <h3>#local.display.pageName#</h3>
            </div>
            <div>
                <p>#local.display.pageDes#</p>
            </div>    
            </cfloop>      
        <button type="button"><a href="userPage.cfm">Back</a></button>
        <button type="button"><a href="login.cfm">logout</a></button>
    </cfoutput>
</body>
</html>