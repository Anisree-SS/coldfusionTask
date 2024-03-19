<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn11.css">
    <title>Document</title>
</head>
<body>
    <div> 
        <cfset local.object=createObject("component","component/qn11")>
        <cfoutput>
            mulitiply(1,2) = #local.object.multiply([1,2])#<br>
            mulitiply(1,2,3) = #local.object.multiply([1,2,3])#<br>
            mulitiply(1,2,3,4) = #local.object.multiply([1,2,3,4])#<br>
        </cfoutput>
    </div>
</body>
</html>