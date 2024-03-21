<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn19.css">
    <title>Document</title>
</head>
<body>
    <div>
        <h5>Visits Count</h5>
        <form action="qn19.cfm" method="post">
            <input type="submit" value="count" name="submit">
        </form>
        <cfif StructKeyExists(form,"submit")>
            <cfobject name ="count" component="component/qn19">
            <cfoutput>
                <span>#count.cookieCount()#</span>
            </cfoutput>
        </cfif>
    </div>
</body>
</html>