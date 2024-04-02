<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn25.css">
    <title>Document</title>
</head>
<body>
    <div>
        <h3>ADD DATA To DB</h3>
    </div>
    <div>
        <form action="main.cfm" method="post">
            <label>Enter Data : </label>
            <textarea name="datas"></textarea><br>
            <br>
            <input type="submit" vale="ADD" name="submit">
        </form>
    </div>
    <div>
        <cfoutput>
            <cfif StructKeyExists(form, "datas")>
                <cfset local.demo=createObject("component","component/tagCloud")>
                #local.demo.inserting(form.datas)#
            </cfif>
        </cfoutput>
    </div>
</body>
</html>