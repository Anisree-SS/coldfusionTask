<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn3.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn3.cfm" method="post">
            <label>Enter the numbers </label>
            <input type="text" name="numbers">
            <br>
            <input type="submit" name="submit">
        </form>
    </div>
    <div>
        <cfif structKeyExists(form,"submit")>
            <cfinvoke component = "component/qn3" method = "show" returnVariable = "values">
                <cfinvokeargument name="numbers" value="#form.numbers#">
            </cfinvoke>
            <cfoutput>
                <cfloop array="#values#" index="value">
                    #value#,
                </cfloop>
            </cfoutput>
        </cfif>
    </div>
</body>
</html>