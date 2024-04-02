<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn14.css">
    <title>Document</title>
</head>
<body>
        <cfset local.imgId=URL.imgId>
        <cfset local.object = createObject("component","component/qn14")>
        <cfset local.alldatas=#local.object.displayImage(local.imgId)#>
        <cfoutput>
            <cfloop query="local.alldatas">
                <h4>#imgName#</h4>
                <p>#imgDes#</p>
                <img src="./assets/#imgFile#">
            </cfloop>
        </cfoutput>
</body>
</html>