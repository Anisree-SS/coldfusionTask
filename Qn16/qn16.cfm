<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn16.css">
    <title>Document</title>
</head>
<body>
    <div>
        <cfset local.show=createObject("component","component/qn16")>
        <cfset local.result=local.show.show()>
        <cfoutput>
            <cfloop array="#local.result#" index="values">
                #values.number#
            </cfloop>
        </cfoutput>
    </div>
<body>
</html>

