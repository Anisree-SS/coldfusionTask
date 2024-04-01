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
            <cfset alldatas=#local.object.findName()#>
            <cfset firstName=#local.object.getFirstName(form.number)#>
            <cfoutput>
                <div>
                    <table>
                    <cfloop query="alldatas">
                    <tr>
                        <td>#alldatas.fname#</td>
                        <td>#alldatas.lname#</td>
                    </tr>
                    </cfloop>
                    </table>
                </div>
                <div>
                    <cfoutput>
                        #firstName.fname#
                    </cfoutput>
                </div>
            </cfoutput>
        </cfif>
  
        
</body>
</html>