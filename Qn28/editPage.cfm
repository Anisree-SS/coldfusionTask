<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn28.css">
    <title>Document</title>
</head>
<body>
    <div>
        <h3>EDIT PAGE</h3>
    </div>
    <cfoutput>
        <div>
            <cfif StructKeyExists(form,"pageName")>
                <cfinvoke method="editRow" component="component/qn28" returnvariable="editMsg">
                    <cfinvokeargument name="pageName" value="#form.pageName#">
                    <cfinvokeargument name="pageDes" value="#form.pageDes#">
                    <cfinvokeargument name="idPage" value="#url.idPage#">
                </cfinvoke>
                 #editMsg#
            </cfif>
        </div>
        <div>
            <form action="" method="post">
                <lable>Enter Page Name : </labe>
                <input type="text" name="pageName"></br>
                <label>Enter page Description : </label>
                <textarea name="pageDes"></textarea><br>
                <br>
                <input type="submit" value="Edit" name="submit">
            </form>
        </div>
    </cfoutput>
    <button type="button"><a href="adminPage.cfm">Back</a></button>
    <button type="button"><a href="login.cfm">logout</a></button>
</body>
</html>