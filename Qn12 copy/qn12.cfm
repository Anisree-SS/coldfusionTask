<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn12.css">
    <title>Document</title>
</head>
<body>
    <div> 
        <form action="qn12.cfm" method="post">
            <label>Enter number</label>
            <input type="number" name="number"><br> 
            <input type="submit" name="submit" value="show">
        </form>  
    </div>
    <cfif StructKeyExists(form,"number")>
        <cfset local.object = createObject("component","component/qn12")>
        <cfset local.alldatas=#local.object.findName()#>
        <cfset local.firstName=#local.object.getFirstName(form.number,local.alldatas)#>
        <cfoutput>
            <div>
                <table>
                    <cfloop query="local.alldatas">
                        <tr>
                            <td>#fname#</td>
                            <td>#lname#</td>
                        </tr>
                    </cfloop>
                </table>
            </div>
            <div>
                #local.firstName.fname#
            </div>
        </cfoutput>
    </cfif>     
</body>
</html>