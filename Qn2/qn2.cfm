<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn2.css">
    <title>Document</title>
</head>
<body>
   <div>
        <form action="qn2.cfm" method="post">
            <label> Enter the number</label>
            <input type="number" name="number">
            <br>
            <br>
            <input type="submit" name="submit">
        </form>
   </div>
   <div>
        <cfif structKeyExists(form,"number")>
            <cfset local.demoObj = createObject("component","component/qn2")>
            <cfoutput>
                <p>#local.demoObj.show(form.number)#</p>
            </cfoutput>
        </cfif>
   </div>
</body>
</html>