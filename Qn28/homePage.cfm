<cfset variables.dataHeading=''>
<cfset variables.data=''>

<cfset variables.dataHeading=structKeyExists(session,"role") AND session.role EQ "user" ?"User":"Admin Or Editer">
<cfset variables.data=structKeyExists(session,"role") AND session.role EQ "user" ?"We can view a list of pages and we can choose any of the page from the list. When we select a page we can view the description of the list of  ":"Admin Or Editer">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/style.css">
    <title>Document</title>
</head>
<body>
    <cfoutput>
        <header class="navBar d-flex align-items-center justify-content-between col-12">
           <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark bg-primary px-3 px-sm-5 col-12">
                <a class="navbar-brand" href=""><h3><b>Data Dive</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                                <a class="nav-link" href="editPage.cfm">Page List</a>
                        </div>
                        <a class="nav-link" href="controls/pages.cfc?method=pageLogin">Log Out</a>
                    </ul>
                </div>
            </nav>
        </header>
       
            
       
        <h4>#variables.dataHeading#</h4>
        <p>#variables.data#</p>
    </cfoutput>
</body>
</html>