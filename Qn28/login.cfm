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
        <form action="" method="post" >
            <label>User Name : </label>
            <input type="text" name="userName"><br>
            <label>Password : </label>
            <input type="password" name="password"><br>
            <input type="submit" name="submit" value="login">
        </form>
    </div>
    <div>
        <cfoutput>
            <cfif structKeyExists(form,"password")>
                <cfinvoke component="controls/pages" method="login" returnvariable="loginMsg">
                    <cfinvokeargument name="userName" value="#form.userName#">
                    <cfinvokeargument name="password" value="#form.password#">
                </cfinvoke>
                #loginMsg#
            </cfif>
        </cfoutput>
    </div>
</body>
</html>