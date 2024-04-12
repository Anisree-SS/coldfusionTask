<cfinclude template="../controls/action.cfm">
<html lang="en">
<cfinclude template = "header.cfm">
<cfoutput>
    <body class="container-fluid p-0">
        <cfinclude template="navbar.cfm">
        <div class="d-flex justify-content-center mt-5">
            <h2>#variables.heading#</h2>
        </div>
            <div class="d-flex justify-content-center forHeight">
                <p class="text-success">#variables.editMsg#</p>
                <p class="text-danger" id="error">#variables.Error#</p>
            </div>
            <form action=""  method="post">
                <div class="form-group row px-0 mx-5">
                    <input type="hidden" name="pageId" value="#variables.pageId#">
                    <label for="pageName " class="col-sm-2 col-form-label px-0">Page Name</label>
                    <div class="col-sm-10">
                    <input type="text" class="form-control px-0" id="pageName" value="#variables.name#" name="pageName">
                    </div>
                </div>
                <div class="form-group row px-0 mx-5">
                    <label for="pageDes" class="col-sm-2 col-form-label px-0">Page description</label>
                    <div class="col-sm-10">
                    <input type="text" class="form-control px-0" id="pageDes" name="pageDes" value="#variables.description#">
                    </div>
                </div>
                <div class="d-flex justify-content-end align-items-center w-25 m-5">
                    <input type="submit" name="submit" value="Save" class="inputLogin loginColor" id="submitBtn">
                    <button type="button" class="inputLogin bg-light border-0 ms-5"><a href="list.cfm">Cancel</a></button>
                </div>
            </form>
        <div class="back">
            <a href="list.cfm"><img src="../assets/images/arrow.png" alt="back" class="backStyle"></a>
        </div>
    </body>
</cfoutput>
</html>