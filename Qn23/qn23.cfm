<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="./script/jquery.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

    <script src="./script/phone.js"></script>
    <script src="../Qn23/script/forScript23.js"></script>

    <link rel="stylesheet" href="style/styleFor23.css">
    <title>Document</title>
</head>
<body>
    <div class="formBackground">
        <div class="formSection">
            <form action="component/qn23.cfc?method=formData" method="post" onsubmit="return validate()" enctype="multipart/form-data">
                <div class="formTopSection">
                    <img src="../Qn23/assets/logo.png" alt="logo" class="logo">
                </div>
                <div class="formBodySection">
                    <div class="divStyle">
                        <p class="fontSize20"> Employment Application</p>
                        <p class="fontSize12">Infinity Box Inc.</p>
                    </div>
                    <hr>
                    <div id="displayError">
                        <div class="dataOfError">
                            <p class="errorMsg">There was a problem with your submission.</p>
                            <p class="errorMsgSnd">Errors have been <span class="highlight">highlighted</span> below.</p>
                        </div>
                    </div>
                    <div class="divStyle" id="positionErrorDiv" class="errorDivClr" class="selectDivClr" >
                        <p class="spanStyle" class="error" id="errorPosition">Which position are you applaying for? <span class="clrRed">*</span></p>
                        <select name='dropDown' class="widthForInput" id="positions">
                            <option value=""></option>
                            <option value="InterFace Designer">InterFace Designer</option>
                            <option value="Software Engineer">Software Engineer</option>
                            <option value="System Administrator">System Administrator</option>
                            <option value="Office Manager">Office Manager</option>
                        </select>
                        <p id="forPosition" class="errorStyle"> </p>
                    </div>
                    <div class="divStyle" >
                        <p class="spanStyle">Are you willing to relocate?<span class="clrRed">*</span></p>
                        <div class="redioStyle" ><input type="radio" name="radioButton" value="Yes" checked="checked">Yes</div>
                        <div class="redioStyle" ><input type="radio" name="radioButton" value="No">No</div>
                    </div>
                    <div class="divStyle" id="dateErrorDiv" class="errorDivClr calender" id="cal">
                        <p class="spanStyle" class="error" id="errorDate">When can you start?<span class="clrRed">*</span></p>
                            <div class="calInput dateContainer" >
                                <div class="inputs">
                                    <input type="text" class="field text dateInputOne" id="inputFieldTwo" maxlength="2" name="month">
                                    <p>MM</p>
                                </div>
                                <p>/</p>
                                <div class="inputs">
                                    <input type="text" class="field text dateInputOne" id="day" maxlength="2" name="day">
                                    <p>DD</p>
                                </div>
                                <p>/</p>
                                <div class="inputs inputss">
                                    <input type="text"  class="field text dateInputTwo" id="datepicker" maxlength="4" name="year">
                                    <p>YYYY</p>
                                </div>
                            </div>          
                        <p id="forDate" class="errorStyle"></P>
                    </div>
                    <div class="divStyle" id="profileErrorDiv" class="errorDivClr">
                        <span class="spanStyle"  class="error" id="errorProfile">Portfolio Web Site</span>
                        <input type="text" placeholder="http//" id="profile" name="profile">
                        <p id="forProfile" class="errorStyle"></p>
                    </div>
                    <div class="divStyle"></p>
                        <span class="spanStyle">Attach a Copy of Your Resume</span>
                        <input type="file" id="resume" name="resume" accept=".pdf,.doc,.docx">
                        <p class="fontSize10">Word or PDF Documents Only</p>
                    </div>
                    <div class="divStyle">
                        <span class="spanStyle">Salary Requirements</span>
                        <div class="divRowFlex">
                            <div>
                                <span class="fontSize15">$<span>
                            </div>
                            <div class="divColoumFlex">
                                <input type="text" name="dollar" class="widthForSalary">
                                <span class="fontSize11">Dollars</span>
                            </div>
                            <div>
                                <span>.<span>
                            </div>
                            <div class="divColoumFlex">
                                <input type="text" name="cents" class="widthForCent">
                                <span class="fontSize11">Cents</span>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div>
                        <span>Your Contact Information</span>
                    </div>
                    <div class="divStyle" id="nameErrorDiv" class="errorDivClr">
                        <p class="spanStyle" class="error" id="errorName">Name<span>*<span></p>
                        <div class="divRowFlex">
                            <div class="divColoumFlex">
                                <input type="text" name="Fname" class="widthForFirst" id="fName">
                                <span class="fontSize11">first</span>
                            </div>
                            <div class="divColoumFlex">
                                <input type="text" name="Lname" class="widthForLast" id="lName">
                                <span class="fontSize11">Last</span>
                            </div>
                        </div>
                        <p class="errorStyle" id="forName"></p>
                    </div>
                    <div class="divStyle" id="emailErrorDiv" class="errorDivClr">
                        <p class="spanStyle" class="error" id="errorEmail">Email Address<span class="clrRed">*</span></p>
                        <input type="text" name="email" id="email">
                        <p id="forEmail" class="errorStyle"> </P>
                    </div>
                    <div class="divStyle" id="phoneErrorDiv" class="errorDivClr">
                        <p class="spanStyle" class="error" id="errorPhone">Phone<span class="clrRed">*</span></p>
                        <div class="phoneInput">
                        <div class="inputsValues">
                            <input type="text" id="n0" class="authInput" maxlength="3"   data-next="1" name="partOne">
                            <p>###</p>
                        </div>
                        <p>-</p>
                        <div class="inputsValues">
                            <input type="text" id="n1" class="authInput" maxlength="3"  data-next="2" name="partTwo">
                            <p>###</p>
                        </div>
                        <p>-</p>
                        <div class="inputsValues inputssValues">
                            <input type="text" id="n2" class="authInput" maxlength="4"  data-next="3" name="partThree">  
                            <p>####</p>
                        </div>
                    </div>
                        <p id="forPhone" class="errorStyle"></p>
                    </div>

                    <div>
                        <input type="submit" value="Submit" name="submit" class="buttonStyle">
                    </div>
                    <div class="lastData">
                            This site is protected by reCAPTCHA Enterprise and the Google <a href="#" class="aStyle">Privacy Policy</a> and <a href="#" class="aStyle">Terms of Service</a> apply.
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="LastData">
        <p class="fontSize10">Powered By</p>
        <img src="../Qn23/assets/logoLast.png" alt="logo" class="imageLast">
        <span class="fontSize12">See how easy it is to <a href="#">create a form</span>
    </div>

</body>
</html>
