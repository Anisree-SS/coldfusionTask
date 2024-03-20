<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="./style/styleQn13.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn13.cfm" method="post">
            <label>Enter the word</label>
            <input type="text" name="word"><br>
            <input type="submit" name="submit" value="find">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form, "word")>
            <cfinvoke component = "component/qn13" method ="countWord" returnVariable = "count">
                <cfinvokeargument name="word" value="#form.word#">
            </cfinvoke>
            <cfoutput>
                the word #form.word# found #count# times
            </cfoutput> 
        </cfif>
    </div>
    
</body>
</html>