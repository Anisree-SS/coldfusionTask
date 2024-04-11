<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./assets/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/style.css">
    <title>Document</title>
</head>
<body class="container-fluid p-0">
    <cfoutput>
         <div class="navBar d-flex align-items-center justify-content-center col-12 ">
            <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark  px-3 px-sm-5 col-12">
                <a class="navbar-brand"><h3 class="clrHead"><b>Page Dive</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                                <a class="nav-link" href="homePage.cfm">Home</a>
                                <a class="nav-link" href="list.cfm">Page List</a>
                        </div>
                        <a class="nav-link" href="controls/pages.cfc?method=pageLogin">Log Out</a>
                    </ul>
                </div>
            </nav>
        </div>
            <cfset local.idPage=URL.idPage>
            <cfset local.demo=createObject("component","controls/pages")>
            <cfset local.display=#local.demo.viewPage(local.idPage)#>
            <cfloop query="#local.display#">
            <div class="d-flex justify-content-center">
                <h3>#pageName#</h3>
            </div>
            <div class="d-flex-column align-items-center p-3 border border border-light mx-5">
                <p>#pageDes#</p>
            </div>    
            </cfloop>      
            <div class="back">
                <a href="list.cfm"><img src="./assets/arrow.png" alt="back" class="backStyle"></a>
            </div>
    </cfoutput>
</body>
</html>