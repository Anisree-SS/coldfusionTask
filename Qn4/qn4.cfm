<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn4.css">
    <title>Document</title>
</head>
<body>
    <div> 
        <cfset local.demo=createObject("component","component/qn4")>
        <cfset local.result=local.demo.show()>
        <cfset local.fiveDays=local.demo.lastDays()>
        <cfoutput>
            <ul>
                <li>Today : #local.result.today#</li>
                <li>Current month numeric: #local.result.monthNumeric#</li>
                <li>Current month in word : #local.result.monthInWord# </li>
                <li>Last day of month : #local.result.lastDayInMonth#</li>
                <li>Last friday is : #local.result.lastFriday#</li>
                <cfif arrayLen(local.fiveDays)>
                    <cfloop array="#local.fiveDays#" index="days">
                        <li style="color:#days.color#; font-weight:#days.fontWeight#;">#days.date# - #days.day#</li>
                    </cfloop>
                </cfif>
            </ul>
        </cfoutput>
    </div>
</body>
</html>