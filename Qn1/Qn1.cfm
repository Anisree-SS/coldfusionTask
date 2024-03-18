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
        <form action="Qn1.cfm" method="post">
            <label> Enter the number</label>
            <input type="number" name="num">
            <br>
            <br>
            <input type="submit" name="submit">
        </form>
   </div>
   <div>
        <!---<cfif StructKeyExists(form, "number")>
            <cfinvoke component="component/qn1" method="show" returnvariable="value">
                <cfinvokeargument name="number" value="#form.number#">              
            </cfinvoke>
        </cfif>--->
        <cfif structKeyExists(form,"num")>
            <cfset demoObj = createObject("component","components/qn1")>
            <cfoutput>
                <p>#demoObj.show(form.num)#</p>
            </cfoutput>
        </cfif>
        
   </div>
</body>
</html>