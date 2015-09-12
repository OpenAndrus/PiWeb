<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>错误</title>
    <link rel="shortcut icon" href="lib/Themes/Images/logo.ico"/>
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="lib/Themes/Styles/table.css" rel="stylesheet">
    <script src="lib/jquery/jquery-2.1.1.min.js"></script>
    <script src="lib/jquery/jquery.md5.js"></script>
    <script src="lib/bootstrap/js/bootstrap.js"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            //自动调整高度
            function resizeU() {
                $("#MainContent").height($(window).height() - 90);
            }

            resizeU();
            $(window).resize(resizeU);
        });
    </script>

</head>
<body>
<div id="MainContent" style="text-align: center;">
    <h1>错误!</h1>

    <p>
        ${errormessage}
    </p>
</div>
</body>
</html>