<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn18.css">
    <title>Document</title>
</head>
<body>
    <div>
        <cfset demo=createObject("component","component/qn18")>
        <cfset data=#demo..getValue()#>
        <cfoutput>
            <table>
                <tr>
                    <th>id</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
                <cfloop query="#data#">
                    <tr>
                        <td>#ID#</td>
                        <td>#Name#</td>
                        <td>#email#</td>                       
                    </tr>
                </cfloop>
            </table>
        </cfoutput>
    </div>
</body>
</html>
