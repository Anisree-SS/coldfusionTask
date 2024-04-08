<cfset variables.loginMsg=''>
<cfset result=createObject("component","controls/pages").login()>
<cfif structKeyExists(form,"password")>
    <cfinvoke component="controls/pages" method="doLogin" returnvariable="loginMsg">
        <cfinvokeargument name="userName" value="#form.userName#">
        <cfinvokeargument name="password" value="#form.password#">
    </cfinvoke>
</cfif>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style.css">
    <title>Document</title>
</head>
<body>
    <div class="loginDiv">
        <form action="login.cfm" method="post">
            <!---<div>
                <label>User Name </label>
                <label>Password </label>
            </div>--->
            <label>User Name : </label>
            <input type="text" name="userName" class="inputLogin"><br>
            <label>Password : </label>
            <input type="password" name="password" class="inputLogin"><br>
            <input type="submit" name="submit" value="login">
        </form>
    </div>
    <div>
        <cfoutput>
        <p class="error">#loginMsg#</p>
        </cfoutput>
    </div>
</body>
</html>