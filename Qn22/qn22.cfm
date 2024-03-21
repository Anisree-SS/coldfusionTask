<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script src="script/scriptQn20.js"></script>
    <link rel="stylesheet" href="./style/styleQn22.css">
    <title>Document</title>
</head>
<body>
    <div>
        <cfset local.object=createObject("component","component/qn22")>
        <cfoutput>
            <table border="1">
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Location</th>
                </tr>
                <cfloop array="#local.object.showData()#" index="i">
                    <tr>
                        <td>#i.Name#</td>
                        <td>#i.Age#</td>
                        <td>#i.LOCATION#</td>
                    </tr>
                </cfloop>
            </table>
        </cfoutput>

    </div>
<body>
</html>