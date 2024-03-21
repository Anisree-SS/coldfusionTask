<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="script/scriptQn17.js"></script>
    <link rel="stylesheet" href="./style/styleQn17.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn17.cfm" method="post" onsubmit="printFile()">
            <label>Enter the limit</label>
            <input type="text" name="limit" id="limit"><br>
            <input type="submit" value="show">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form, "limit")>
            <cfset displayNum=CreateObject("component","component/qn17").display(form.limit)>
        </cfif>        
    </div>
<body>
</html>