<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn27.css">
    <title>Document</title>
</head>
<body>
    <cfif session.login>
        <div>
            <h5>WELCOME</h5>
        </div>
        <a href="qn27.cfm">logout</a>
        <cfset session.login=false>
    <cfelse>
        <cflocation url ="qn27.cfm">
    </cfif>
</body>
</html>