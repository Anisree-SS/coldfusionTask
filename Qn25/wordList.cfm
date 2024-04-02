<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn25.css">
    <title>Document</title>
</head>
<body>
    <div>
        <h3>Data Count </h3>
    </div>
    <div>
        <form action="wordList.cfm" method="post">
            <label>Enter Data : </label>
            <textarea name="datas"></textarea><br>
            <br>
            <input type="submit" vale="ADD" name="submit">
        </form>
    </div>
    <cfoutput>
        <div>
            <cfif StructKeyExists(form, "datas")>
                <cfset local.demo=createObject("component","component/tagCloud")>
                    <cfset local.keyandvalue=local.demo.countWord(form.datas)>
                    <cfif arrayLen(local.keyandvalue)>
                        <cfloop array="#local.keyandvalue#" index="word">
                            #word[2]#  (#word[1]#)<br>
                        </cfloop>
                    </cfif>
            </cfif>
        </div>
    </cfoutput>
</body>
</html>