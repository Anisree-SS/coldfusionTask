
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
    <cfif session.role EQ "admin" OR session.role EQ "editor">
        <cfset session.isLogin=true>
        <div class="navBar d-flex align-items-center justify-content-center col-12 ">
            <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark  px-3 px-sm-5 col-12">
                <a class="navbar-brand"><h3 class="clrHead"><b>Page Dive</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                                <a class="nav-link" href="homePage.cfm">Home</a>
                                <a class="nav-link" href="list.cfm">Page List</a>
                                <a class="nav-link" href="editPage.cfm">Add Page</a>
                        </div>
                        <a class="nav-link" href="controls/pages.cfc?method=pageLogin">Log Out</a>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="labelStyle">
            <h3>Page List</h3>
        </div>
            <div>
                <cfset local.demo=createObject("component","controls/pages")>
                <cfset local.display=#local.demo.displayPage()#>
            </div>
            <div class="labelStyle">
                <table class="table table-hover table-hover table-striped">
                    <thead>
                    <tr>
                        <th>Page Name</th>
                        <th>Page Description</th>
                        <th>Action</th>
                        
                    </tr>
                    </thead>
                    <cfloop query="#local.display#">
                        <cfset session.pageId=#pageId#>
                        <cfset session.pageName=#pageName#>
                        <cfset session.pageDes=#pageDes#>
                        <tbody>
                        <tr>
                            <td>#pageName#</td>
                            <td>#pageDes#</td>
                            <td>
                                <a href="editPage.cfm?pageId=#pageId#"  title="Edit this page"><img src="./assets/editIcon.png" class="ImgStyle" alt='Edit'></a>
                                <a href="controls/pages.cfc?method=deleteRow&idPage=#pageId#" title="Delete this page"><img src="./assets/deleteIcon.png" class="ImgStyle" alt='Delete'></a>
                            </td>
                        </tr>   
                        </tbody>  
                    </cfloop>      
                </table>
            </div>
            <div class="back">
                <a href="homePage.cfm" title="Back to home"><img src="./assets/arrow.png" alt="back" class="backStyle"></a>
            </div>

            <footer class="footerHeight bg-light d-flex justify-content-center align-items-center ">
                <div class="d-flex">
                    <div class="m-4 d-flex justify-content-between text-sm">
                        <div>Page Dive</div>
                    </div>
                </div>
                <div class="d-flex">
                    <nav class="navbar navbar-expand-lg navbar-light px-3">
                        <a  href="homePage.cfm">Home</a>
                    </nav>
                    <nav class="navbar navbar-expand-lg navbar-light  px-3">
                        <a  href="List.cfm">Page List</a>
                    </nav>
                    <nav class="navbar navbar-expand-lg navbar-light  px-3">
                        <a href="editPage.cfm">Add Page</a>
                    </nav>
                </div>
            </footer>
        <cfelse>
            <cfset session.isLogin=true>
            <div class="navBar d-flex align-items-center justify-content-center col-12 ">
                <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark  px-3 px-sm-5 col-12">
                    <a class="navbar-brand"><h3 class="clrHead"><b>Page Dive</b></h3></a>
                    <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                            <div class="d-flex  gap-3">
                                    <a class="nav-link" href="homePage.cfm">Home</a>
                                    <a class="nav-link" href="list.cfm">Page List</a>
                                    <a class="nav-link" href="editPage.cfm">Add Page</a>
                            </div>
                            <a class="nav-link" href="controls/pages.cfc?method=pageLogin">Log Out</a>
                        </ul>
                    </div>
                </nav>
            </div>           
            <div>
                <cfset local.demo=createObject("component","controls/pages")>
                <cfset local.display=#local.demo.displayPage()#>
            </div>
            <div class="m-5">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>PageName</th>
                        <th> View</th>
                    </tr>
                    </thead>
                    <cfloop query="#local.display#">
                        <tbody>
                        <tr>
                            <td class="">#pageName#</td>
                            <td><a href="userView.cfm?idPage=#pageId#"><img src="./assets/viewIcon.png" class="ImgStyle" title="View page" alt='view'></a></td>
                        </tr> 
                        </tbody>          
                    </cfloop>
                </table>
            </div>
            <div class="back">
                <a href="homePage.cfm" title="Back to home"><img src="./assets/arrow.png" alt="back" class="backStyle"></a>
            </div>
            <footer class="footerHeight bg-light d-flex justify-content-center align-items-center ">
                <div class="d-flex">
                    <div class="m-4 d-flex justify-content-between text-sm">
                        <div>Page Dive</div>
                    </div>
                </div>
                <div class="d-flex">
                    <nav class="navbar navbar-expand-lg navbar-light px-3">
                        <a  href="homePage.cfm">Home</a>
                    </nav>
                    <nav class="navbar navbar-expand-lg navbar-light  px-3">
                        <a  href="List.cfm">Page List</a>
                    </nav>
                                
                </div>
            </footer>
    </cfif>
    </cfoutput>

</body>
</html>