<cfset variables.addPage=''>
<cfset variables.addPage=(cgi.CF_TEMPLATE_PATH EQ "C:\ColdFusion2023\cfusion\wwwroot\coldfusionTask\Qn28\view\list.cfm")&&((session.role EQ "admin")||(session.role EQ "editor"))?"Add Page":''>
<cfoutput>
    <footer class="footerHeight bg-light d-flex justify-content-center align-items-center ">
        <div class="d-flex">
            <div class="m-4 d-flex justify-content-between text-sm">
                <div>Page Dive</div>
            </div>
        </div>
        <div class="d-flex">
            <nav class="navbar navbar-expand-lg navbar-light px-3">
                <a  href="homePage.cfm" class="text-secondary">Home</a>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light  px-3">
                <a  href="List.cfm" class="text-secondary">Page List</a>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light  px-3">
                <a  href="editPage.cfm" class="text-secondary">#variables.addPage#</a>
            </nav>
            <nav class="navbar navbar-expand-lg navbar-light  px-3">
                <a class="nav-link text-secondary" href="../models/pages.cfc?method=pageLogin">Log Out</a>
            </nav>
        </div>
    </footer>
</cfoutput>