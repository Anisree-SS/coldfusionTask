<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script src="script/scriptQn20.js"></script>
    <link rel="stylesheet" href="./style/styleQn20.css">
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn20.cfm" method="post" onsubmit="validate()">
            <lablel>Enter email</label>
            <input type="text" name="email" id="email"><br>
            <cfimage action = "captcha" height = "35" text = "#session.captchaText#" width = "150"> 
            <br>
            <label>Enter Captcha:</label>
            <input type="text" name="captcha" id="captcha"><br>
            
            <input type="submit" value="subscribe" name="submit">
        </form>
    </div>
    <div>
        <cfif StructKeyExists(form, "captcha")>
            <cfset local.Object=createObject("component","component/qn20")>
            <cfoutput>
                <p>#local.Object.subscribe(form.captcha)#</p>
            </cfoutput>
        </cfif>
    </div>
</body>
</html>