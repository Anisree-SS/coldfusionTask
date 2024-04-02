<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn21.css">
    <title>Document</title>
</head>
<body>
    <div>
        <cfif StructKeyExists(form, "submit")>
            <cfoutput>
                <cfinvoke component = "component/qn21" method ="send" returnVariable = "msg">
                    <cfsavecontent variable="message">
                        dear #form.name#,
                        Happy bday 
                        #form.wishes#
                    </cfsavecontent>
                    <cfdump var = "#message#">
                    <cfinvokeargument name="name" value="#form.name#">
                    <cfinvokeargument name="email" value="#form.email#">
                    <cfinvokeargument name="message" value="#message#">
                    <cfinvokeargument name="greeting" value="#form.greeting#">
                </cfinvoke>
               #msg#
            </cfoutput>
        </cfif>
    </div>
    <div>
        <form action="qn21.cfm" method="post" enctype="multipart/form-data">
            <label>Birthday Baby Name</label>
            <input type="text" name="name"><br>
            <label>Email Id to send</label>
            <input type="email" name="email"><br>
            <label>Birthday Wishes</label>
            <input type="text" name="wishes"><br>
            <label>Greeting image</label>
            <input type="file" name="greeting" accept=".jpg, .jpeg, .png, .gif"><br>
            <input type="submit" value="send" name="submit">
        </form>
    </div>
</body>
</html>