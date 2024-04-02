<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="./style/styleQn26.css">
      <title>Document</title>
   </head>
   <body>
        <div>
            <form action="qn26.cfm" method="post" enctype="multipart/form-data">
                <label>Upload File </label>
                <input type="file" name="textFile"><br>
                <input type="submit" value="count" name="submit">
            </form>
        </div>
        <div>
            <cfif StructKeyExists(form, "textFile")>
                <cfset local.object=createObject("component","component/qn26")>
                <cfoutput>
                    #local.object.countWord(form.textFile)#
                </cfoutput>
            </cfif>
        </div>
   </body>
</html>