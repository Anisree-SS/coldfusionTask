
<!DOCTYPE html>
<html lang="en">
<cfinclude template = "header.cfm">
<cfoutput>
    <body class="container-fluid p-0">
        <div class="navBar d-flex align-items-center justify-content-center col-12 ">
            <nav class="navbar navbar-expand-lg flex-nowrap navbar-dark  px-3 px-sm-5 col-12">
                <a class="navbar-brand"><h3 class="clrHead"><b>Page Dive</b></h3></a>
                <div class="collapse navbar-collapse d-flex align-items-center justify-content-between" id="navbarColor02">
                        <div class="d-flex  gap-3">
                            <a class="nav-link" href="home.cfm">Home</a>
                        </div>
                        <a class="nav-link" href="CFC.pages.cfc?method=pageLogin">Log In</a>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="d-flex-column m-5">
            <div class="d-flex align-items-center p-3 mx-5">
                <p class="h2">Welcome to Page Dive!</p>
            </div>
            <div class="d-flex align-items-center p-3 mx-5">
                <p class="h5"><i>As User</i></p>
            </div>
            <div class="d-flex-column align-items-center p-3 border border border-light bg-light mx-5">
                <div class="d-flex align-items-center justify-content-center mb-2">
                    <img src="../assets/images/view.png" class="userView" alt='User View'>
                </div>
                <p><b>A</b>s a user, you have access to the latest content added by our administrators. You'll see the main titles of articles, images, or multimedia on our homepage. Simply click on a title to view the full details and dive deeper into the content that interests you. Enjoy exploring and discovering new information on our platform! </p>
            </div>

            <div class="d-flex align-items-center p-3 mx-5">
                <p class="h5"><i> As Admin </i></p>
            </div>
            <div class="d-flex-column align-items-center p-3 border border border-light bg-light mx-5">
                <div><p class="h5">Add Page</p></div>
                <div class="d-flex align-items-center justify-content-center mb-2">
                    <img src="../assets/images/add.jpg" class="userView" alt='Add Page'>
                </div>
                <p><b>E</b>asily upload new articles, images, or multimedia to your website. Our user-friendly interface makes it simple to keep your content fresh and engaging for your audience. </p>
            </div>

            <div class="d-flex align-items-center p-3 mx-5">
            </div>
            <div class="d-flex-column align-items-center p-3 border border border-light bg-light mx-5">
                <div><p class="h5">Edit Page</p></div>
                <div class="d-flex align-items-center justify-content-center mb-2">
                    <img src="../assets/images/edit.jpg" class="userView" alt='Edit Page'>
                </div>
                <p><b>Q</b>uickly make adjustments to existing content. Whether it's updating text, swapping out images, or refining layouts, you can ensure your website stays up-to-date with minimal effort.</p>
            </div>
            <div class="d-flex align-items-center p-3 mx-5">
            </div>
            <div class="d-flex-column align-items-center p-3 border border border-light bg-light mx-5">
                <div><p class="h5">Delete Page</p></div>
                <div class="d-flex align-items-center justify-content-center mb-2">
                    <img src="../assets/images/delete.jpg" class="userView" alt='Edit Page'>
                </div>
                <p><b>R</b>emove outdated or irrelevant content with ease. As an administrator, you have the power to maintain the relevance and integrity of your website by efficiently removing any unnecessary Page.</p>
            </div>
        </div>
        <footer class="footerHeight bg-light d-flex justify-content-center align-items-center mt-5">
            <div class="d-flex">
                <div class="m-4 d-flex justify-content-between text-sm ">
                    <div>Page Dive</div>
                </div>
            </div>
            <div class="d-flex">
                <nav class="navbar navbar-expand-lg navbar-light px-3">
                    <a class="nav-link" href="home.cfm">Home</a>
                </nav>
                <nav class="navbar navbar-expand-lg navbar-light px-3">
                    <a class="nav-link" href="pages.cfc?method=pageLogin">Log In</a>
                </nav>
            </div>
        </footer> 
    </body>
 </cfoutput>
</html>

