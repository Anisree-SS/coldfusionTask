<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn4.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn4.cfm" method="post">
            <input type="submit" name="submit" value="Find">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form, "submit")>
            <cfset object=createObject("component","component/qn4").show()>
        </cfif>
    </div>
</body>
</html>