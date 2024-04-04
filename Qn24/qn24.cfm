<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style/styleQn24.css">
    <script src="./script/jquery.min.js"></script>
    <script src="./script/validation.js"></script>
    <title>Document</title>
</head>
<body>
    <div>
        <form action="qn24.cfm" method="post">
            <label>Enter Name</label>
            <input type="text" name="name" id="name"><br>
            <label>Enter Email</label>
            <input type="email" name="email" id="email">
            <button type="button" id="check">Check</button>
            <br>
            <input type="submit" id="submitButton" value="submit" name="submit" disabled>
        </form>        
    </div>
</body>
</html>