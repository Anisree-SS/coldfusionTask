<cfset variables.addPage=''>
<cfset variables.addPage=(cgi.CF_TEMPLATE_PATH EQ "C:\ColdFusion2023\cfusion\wwwroot\coldfusionTask\Qn28\view\list.cfm")&&((session.role EQ "admin")||(session.role EQ "editor"))?"Add Page":''>
<cfoutput>
<div class="navBar d-flex align-items-center justify-content-center col-12 ">
    <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark  px-3 px-sm-5 col-12">
        <a class="navbar-brand"><h3 class="clrHead"><b>Page Dive</b></h3></a>
        <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                <div class="d-flex  gap-3">
                        <a class="nav-link" href="homePage.cfm">Home</a>
                        <a class="nav-link" href="list.cfm">Page List</a>
                        <a class="nav-link" href="editPage.cfm">#variables.addPage#</a>
                </div>
                <a class="nav-link" href="pages.cfc?method=pageLogin">Log Out</a>
            </ul>
        </div>
    </nav>
</div>
</cfoutput>