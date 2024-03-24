<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <script src="script/validation.js"></script>
    <link rel="stylesheet" href="./style/styleQn24.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn24.cfm" method="post">
            <label>Enter Name</label>
            <input type="text" name="name" id="name"><br>
            <label>Enter Email</label>
            <input type="email" name="email" id="email">
            <button type="button" id="check">Check</button>
            <br>
            <input type="submit" value="submit" name="submit" disabled>
        </form>        
    </div>
    <div>
        <cfif structKeyExists(form,"email")>
            <cfinvoke component="component/qn24" method="uploadMail" returnvariable="msg">
                <cfinvokeargument name="name" value="#form.name#">
                <cfinvokeargument name="email" value="#form.email#">
            </cfinvoke>
            <cfdump var = "#msg#">
        </cfif>
    </div>
</body>
</html>