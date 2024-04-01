<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn7.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn7.cfm" method="post">
            <label>Enter the key</label>
            <input type="text" name="key"><br>
            <label>Enter the value</lable>
            <input type="text" name="value"><br>
            <input type="submit" name="submit" value="print">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form,"key")>
            <cfinvoke component = "component/qn7" method ="printStruct">
                <cfinvokeargument name="key" value="#form.key#">
                <cfinvokeargument name="value" value="#form.value#">
            </cfinvoke>
            <cfdump var ="#session.struct#">
        </cfif>  
    </div>
</body>
</html>