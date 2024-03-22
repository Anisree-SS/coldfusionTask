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
        <h3>ADD Page</h3>
    </div>
    <div>
        <form action="addPage.cfm" method="post">
            <lable>Enter Page Name : </labe>
            <input type="text" name="pageName"></br>
            <label>Enter page Description : </label>
            <textarea name="pageDes"></textarea><br>
            <br>
            <input type="submit" vale="ADD" name="submit">
        </form>
    </div>
    <div>
        <cfoutput>
            <cfif StructKeyExists(form, "pageName")>
                <cfset local.demo=createObject("component","component/qn28")>
                    #local.demo.addRow(form.pageName,form.pageDes)#
            </cfif>
        </cfoutput>
    </div>
    <button type="button"><a href="adminPage.cfm">Back</a></button>
    <button type="button"><a href="login.cfm">logout</a></button>
</body>
</html>