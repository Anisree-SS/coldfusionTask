<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn27.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn27.cfm" method="post" >
            <label>User Name : </label>
            <input type="text" name="userName" id="userName"><br>
            <label>Password : </label>
            <input type="password" name="password" id="password"><br>
            <input type="submit" name="submit" value="login">
        </form>
    </div>
    <div>
        <cfoutput>
            <cfif structKeyExists(form,"password")>
                <cfinvoke component="component/qn27" method="loginFunction" returnvariable="returnData">
                    <cfinvokeargument name="userName" value="#form.userName#">
                    <cfinvokeargument name="password" value="#form.password#">
                </cfinvoke>
                <cfif returnData>
                    <cfset session.login=true>
                    <cflocation url="welcome.cfm">
                <cfelse>
                     <cfset session.login=false>   
                </cfif>
            </cfif>
        </cfoutput>
    </div>
</body>
</html>