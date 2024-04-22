<cfset variables.forLogin=''>
<cfset variables.forHome=''>
<cfset variables.pageList=''>
<cfset variables.addPage=''>

<cfset variables.forLogin= session.isLogin?"Log out":"Log In">
<cfset variables.pageList=session.isLogin &&(session.role EQ "admin"||session.role EQ "editor"||session.role EQ "user")?"Page List":"">
<cfset variables.addPage=session.isLogin &&(session.role EQ "admin"||session.role EQ "editor")?"Add Page":"">

<cfoutput>
<div class="navBar d-flex align-items-center justify-content-center col-12 ">
    <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark  px-3 px-sm-5 col-12">
        <a class="navbar-brand"><h3 class="clrHead"><b>Page Dive</b></h3></a>
        <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
            <div class="d-flex  gap-3">
                <a class="nav-link" href="homePage.cfm">Home</a>
                <a class="nav-link" href="list.cfm">#variables.pageList#</a>
                <a class="nav-link" href="editPage.cfm">#variables.addPage#</a>
            </div>
            <a class="nav-link" href="../models/pages.cfc?method=pageLogin">#variables.forLogin#</a>
        </div>
    </nav>
</div>
</cfoutput>


<!---<cfset variables.forLogin=''>
<cfset variables.forHome=''>
<cfset variables.pageList=''>
<cfset variables.addPage=''>

<cfset variables.forLogin= session.isLogin?"Log out":"Log In">
<cfset variables.pageList=session.isLogin &&(session.role EQ "admin"||session.role EQ "editor"||session.role EQ "user")?"Page List":"">
<cfset variables.addPage=session.isLogin &&(session.role EQ "admin"||session.role EQ "editor")?"Add Page":"">

<cfoutput>
<div class="navBar d-flex align-items-center justify-content-center col-12 ">
    <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark  px-3 px-sm-5 col-12">
        <a class="navbar-brand"><h3 class="clrHead"><b>Page Dive</b></h3></a>
        <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
            <div class="d-flex  gap-3">
                <a class="nav-link" href="homePage.cfm">Home</a>


                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown button
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="list.cfm">Action</a></li>
                        <li><a class="dropdown-item" href="editPage.cfm">Another action</a></li>
                    </ul>
                </div>

                <div class="dropdown show">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        More
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="list.cfm">#variables.pageList#</a>
                        <a class="dropdown-item" href="editPage.cfm">#variables.addPage#</a>
                    </div>
                </div>
            </div>
            <a class="nav-link" href="../models/pages.cfc?method=pageLogin">#variables.forLogin#</a>
        </div>
    </nav>
</div>
</cfoutput>--->
