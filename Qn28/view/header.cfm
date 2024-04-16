<cfset variables.editScript=''>
<cfset variables.editAjax=''>

<cfset variables.editScript=(cgi.CF_TEMPLATE_PATH EQ "C:\ColdFusion2023\cfusion\wwwroot\coldfusionTask\Qn28\view\editPage.cfm")&&((session.role EQ "admin")||(session.role EQ "editor"))?"../assets/Javascript/script.js":''>

<cfset variables.editAjax=(cgi.CF_TEMPLATE_PATH EQ "C:\ColdFusion2023\cfusion\wwwroot\coldfusionTask\Qn28\view\editPage.cfm")&&((session.role EQ "admin")||(session.role EQ "editor"))?"../assets/Javascript/ajaxEditPage.js":''>


<!DOCTYPE html>
<html lang="en">
<head>
<cfoutput>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="../assets/Javascript/jquery.js"></script>
    <script src="#variables.editScript#"></script>
    <script src="#variables.editAjax#"></script>
    <script src="../assets/Javascript/ajaxScript.js"></script>
    <link rel="stylesheet" type="text/css" href="../assets/CSS/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/CSS/style.css">
    <title>Page Dive</title>
</cfoutput>
</head>
