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
    <cfoutput>
        <header class="navBar">
            <div>
                <h3>Data Dive</h3>
            </div>
        </header>
        <div class="loginDiv">
            <form action="login.cfm" method="post">
                <h2 class="labelStyle">Log in</h2>
                <div class="labelStyle">
                    <input type="text" name="userName" class="inputLogin" placeholder="User Name">
                    <input type="password" name="password" class="inputLogin" placeholder="Password">
                </div>
                <div class="labelStyle">
                    <input type="submit" name="submit" value="login" class="inputLogin loginColor">
                </div>
                <p class="error labelStyle">#loginMsg#</p>
            </form>
        </div>
    </cfoutput>
</body>
</html>