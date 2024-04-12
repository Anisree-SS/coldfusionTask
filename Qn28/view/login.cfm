<cfset variables.loginMsg=''>
<cfset result=createObject("component","CFC.pages").login()>
<cfif structKeyExists(form,"password")>
    <cfinvoke component="CFC.pages" method="doLogin" returnvariable="loginMsg">
        <cfinvokeargument name="userName" value="#form.userName#">
        <cfinvokeargument name="password" value="#form.password#">
    </cfinvoke>
</cfif>

<!DOCTYPE html>
<html lang="en">
<cfinclude template = "header.cfm">
<body class="container-fluid p-0">
    <cfoutput>
        <div class="navBar d-flex align-items-center justify-content-center col-12 ">
            <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark  px-3 px-sm-5 col-12">
                <a class="navbar-brand"><h3 class="clrHead"><b>Page Dive</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                                <a class="nav-link" href="home.cfm">Home</a>
                        </div>
                        <a class="nav-link" href="pages.cfc?method=pageLogin">Log In</a>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="loginDiv">
            <form action="login.cfm" method="post">
                <h2 class="labelStyle">Log in</h2>
                <div class="labelStyle">
                    <input type="text" name="userName" class="inputLogin" placeholder="User Name">
                    <input type="password" name="password" class="inputLogin" placeholder="Password">
                </div>
                <div class="labelStyle">
                    <input type="submit" name="submit" value="login" class="inputLogin loginColor">
                </div>
                <p class="error labelStyle">#loginMsg#</p>
            </form>
        </div>
    </cfoutput>
</body>
</html>