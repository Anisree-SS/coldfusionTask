<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn14.css">
    <title>Document</title>
</head>
<body>
    <div>
        <cfset local.imgId=URL.imgId>
        <cfset local.object = createObject("component","component/qn14")>
        <cfset local.alldatas=#local.object.displayThumbnail(local.imgId)#>
        <cfoutput>
            <cfloop query="local.alldatas">
                <a href="displayImage.cfm?imgId=#imgId#">#imgName#</a>
                <img src="./assets/#imgFile#" width="20" height="20">
            </cfloop>
        </cfoutput>
    </div>
</body>
</html>