<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn15.css">
    <title>Document</title>
</head>
<body>
    <cfoutput>
        <!---cfinvoke tage--->
        <div>
            <h4>cfinvoke tage</h4>
            <cfinvoke component = "component/qn15" method = "multiply" returnVariable = "invokeResult">
                <cfinvokeargument name="num1" value="1">
                <cfinvokeargument name="num2" value="2">
            </cfinvoke>
            <cfinvoke component = "component/qn15" method = "multiply" returnVariable = "invokeResult1">
                <cfinvokeargument name="num1" value="1">
                <cfinvokeargument name="num2" value="2">
                <cfinvokeargument name="num3" value="3">
            </cfinvoke>
            <cfinvoke component = "component/qn15" method = "multiply" returnVariable = "invokeResult2">
                <cfinvokeargument name="num1" value="1">
                <cfinvokeargument name="num2" value="2">
                <cfinvokeargument name="num3" value="3">
                <cfinvokeargument name="num4" value="4">
            </cfinvoke>
        </div>
        <div>
            multiply(1,2) = #invokeResult#<br>
            multiply(1,2,3) = #invokeResult1#<br>
            multiply(1,2,3,4) = #invokeResult2#<br>
        </div>

        <!---cfobject tag--->
        <div>
            <h4>cfobject tag</h4>
            <cfobject name="cfobjectTag" component="component/qn15">
        </div>
        <div>
            multiply(1,2) = #cfobjectTag.multiply(1,2)#<br>
            multiply(1,2,3) = #cfobjectTag.multiply(1,2,3)#<br>
            multiply(1,2,3,4) = #cfobjectTag.multiply(1,2,4)#<br>
        </div>   
         
        <!---cfobject function--->
        <div>
            <h4>cfobject function</h4>
            <cfset local.cfobjectFunction=createObject("component","component/qn15")>
        </div>
        <div>
            multiply(1,2) = #local.cfobjectFunction.multiply(1,2)#<br>
            multiply(1,2,3) = #local.cfobjectFunction.multiply(1,2,3)#<br>
            multiply(1,2,3,4) = #local.cfobjectFunction.multiply(1,2,4)#<br>
        </div>
    </cfoutput>
</body>
</html>