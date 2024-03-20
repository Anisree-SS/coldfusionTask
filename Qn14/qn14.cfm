<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="script/scriptQn14.js"></script>
    <link rel="stylesheet" href="./style/styleQn14.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn14.cfm" method="post" onsubmit="printFile()" enctype="multipart/form-data">
            <label>Image Name:</label>
            <input type="text" name="imgName"><br>
            <label>Description:</label>
            <textarea name="imgDesc" rows="2" cols="20"></textarea>
            <br>
            <label>Image Upload</label>
            <input type="file" id="imgFile" name="imgFile" accept=".jpg, .jpeg, .png, .gif" onchange="check()">
            <br>
            <input type="submit" value="Upload Image">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form, "imgFile")>
            <cfinvoke component="component/qn14" method="imgDisplay">
                <cfinvokeargument name="imgName" value="#form.imgName#">
                <cfinvokeargument name="imgDesc" value="#form.imgDesc#">
                <cfinvokeargument name="imgFile" value="#form.imgFile#">                
            </cfinvoke>
        </cfif>
    </div>
</body>
</html>
