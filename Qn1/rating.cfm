<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn1.css">
    <title>Document</title>
</head>
<body>
   <div>
        <form action="rating.cfm" method="post">
            <label> Enter the number</label>
            <input type="number" name="num">
            <br>
            <br>
            <input type="submit" name="submit">
        </form>
   </div>
   <div>
        <cfif structKeyExists(form,"num")>
            <cfset local.demoObj = createObject("component","controls/rating")>
            <cfoutput>
                <p>#local.demoObj.show(form.num)#</p>
            </cfoutput>
        </cfif>   
   </div>
</body>
</html>