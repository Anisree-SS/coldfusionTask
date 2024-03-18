<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn5.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn5.cfm" method="post">
            <label>Enter user dob</label>
            <input type="date" name="user">
            <br><br><br>
            <label>Enter user's mother's dob</label>
            <input type="date" name="mother">
            <br><br><br>
            <input type="submit" value="Find" name="submit">
        </form>
    </div>
    <div>
        <cfif structKeyExists(form,"user")>
            <cfset object=createObject("component","component/qn5").find(form.user,form.mother)>
        </cfif>
    </div>
</body>
</html>