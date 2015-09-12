<%--
  Created by IntelliJ IDEA.
  User: Zrui
  Date: 15/9/10
  Time: 下午8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>PI</title>
    <meta name="viewport" content="width=device-width, initial-scale=0.9, maximum-scale=2, user-scalable=yes, minimum-scale=0.5">
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="lib/Themes/Styles/table.css" rel="stylesheet">
    <link href="lib/jquery/jquery.dataTables.min.css" rel="stylesheet">
    <script src="lib/jquery/jquery-2.1.1.min.js"></script>
    <script src="lib/jquery/jquery.md5.js"></script>
    <script src="lib/jquery/jquery.form.js"></script>
    <script src="lib/jquery/jquery.dataTables.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/lhgdialog/lhgdialog.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            //刷新
            <c:forEach items="${gpio}" var="item">

            $("#button_update_${item.toString()}").click(function () {
                $.ajax({
                    type: "post",
                    url: "gpio.json",
                    data: {
                        "gpioid": "${item.toString()}",
                        "cmd": "get",
                    },
                    timeout: 5000,
                    beforeSend: function () {
                        $.dialog.tips('命令执行中..', 600, 'loading.gif');
                    },
                    success: function (data) {
                        var jsonobjs = eval("(" + data + ")");

                        if (jsonobjs.code == "0") {

                            var state = jsonobjs.state;
                            var mode = jsonobjs.mode;

                            if (mode == "INPUT") {
                                $("#button_mode_${item.toString()}").text("输入");
                            }
                            if (mode == "OUTPUT") {
                                $("#button_mode_${item.toString()}").text("输出");
                            }

                            if (state == "LOW") {
                                $("#button_state_${item.toString()}").text("低电平");
                            }
                            if (state == "HIGH") {
                                $("#button_state_${item.toString()}").text("高电平");
                            }

                        } else {
                            alert(jsonobjs.message);
                        }
                    },
                    complete: function () {
                        $.dialog.tips('命令执行中..', 0.1, 'loading.gif');
                    },
                    error: function () {
                        $.dialog.tips('命令执行中..', 0.1, 'loading.gif');
                        alert("网络请求失败");
                    }
                });

            });

            //调整输入输出模式
            $("#button_mode_${item.toString()}").click(function () {
                var modestr = $("#button_mode_${item.toString()}").text();

                $.ajax({
                    type: "post",
                    url: "gpio.json",
                    data: {
                        "gpioid": "${item.toString()}",
                        "cmd": "setmode",
                        "mode": modestr,
                    },
                    timeout: 5000,
                    beforeSend: function () {
                        $.dialog.tips('命令执行中..', 600, 'loading.gif');
                    },
                    success: function (data) {
                        var jsonobjs = eval("(" + data + ")");

                        if (jsonobjs.code == "0") {

                            var state = jsonobjs.state;
                            var mode = jsonobjs.mode;

                            if (mode == "INPUT") {
                                $("#button_mode_${item.toString()}").text("输入");
                            }
                            if (mode == "OUTPUT") {
                                $("#button_mode_${item.toString()}").text("输出");
                            }

                            if (state == "LOW") {
                                $("#button_state_${item.toString()}").text("低电平");
                            }
                            if (state == "HIGH") {
                                $("#button_state_${item.toString()}").text("高电平");
                            }

                        } else {
                            alert(jsonobjs.message);
                        }
                    },
                    complete: function () {
                        $.dialog.tips('命令执行中..', 0.1, 'loading.gif');
                    },
                    error: function () {
                        $.dialog.tips('命令执行中..', 0.1, 'loading.gif');
                        alert("网络请求失败");
                    }
                });
            });

            //调整电平高低
            $("#button_state_${item.toString()}").click(function () {
                var modestr = $("#button_state_${item.toString()}").text();

                $.ajax({
                    type: "post",
                    url: "gpio.json",
                    data: {
                        "gpioid": "${item.toString()}",
                        "cmd": "setstate",
                        "mode": modestr,
                    },
                    timeout: 5000,
                    beforeSend: function () {
                        $.dialog.tips('命令执行中..', 600, 'loading.gif');
                    },
                    success: function (data) {
                        var jsonobjs = eval("(" + data + ")");

                        if (jsonobjs.code == "0") {

                            var state = jsonobjs.state;
                            var mode = jsonobjs.mode;

                            if (mode == "INPUT") {
                                $("#button_mode_${item.toString()}").text("输入");
                            }
                            if (mode == "OUTPUT") {
                                $("#button_mode_${item.toString()}").text("输出");
                            }

                            if (state == "LOW") {
                                $("#button_state_${item.toString()}").text("低电平");
                            }
                            if (state == "HIGH") {
                                $("#button_state_${item.toString()}").text("高电平");
                            }

                        } else {
                            alert(jsonobjs.message);
                        }
                    },
                    complete: function () {
                        $.dialog.tips('命令执行中..', 0.1, 'loading.gif');
                    },
                    error: function () {
                        $.dialog.tips('命令执行中..', 0.1, 'loading.gif');
                        alert("网络请求失败");
                    }
                });
            });

            </c:forEach>

            //全部刷新
            $("#button_update_all").click(function () {
                $.ajax({
                    type: "post",
                    url: "gpio.json",
                    data: {
                        "cmd": "getall",
                    },
                    timeout: 5000,
                    beforeSend: function () {
                        $.dialog.tips('命令执行中..', 600, 'loading.gif');
                    },
                    success: function (data) {
                        var jsonobjs = eval("(" + data + ")");

                        if (jsonobjs.code == "0") {

                            for (var i = 0; i < jsonobjs.allgpio.length; i++) {

                                var gpioname = jsonobjs.allgpio[i].gpioname;
                                var state = jsonobjs.allgpio[i].state;
                                var mode = jsonobjs.allgpio[i].mode;

                                if (mode == "INPUT") {
                                    $("#button_mode_" + gpioname).text("输入");
                                }
                                if (mode == "OUTPUT") {
                                    $("#button_mode_" + gpioname).text("输出");
                                }
                                if (state == "UNKNOW") {
                                    $("#button_mode_" + gpioname).text("未知");
                                }

                                if (state == "LOW") {
                                    $("#button_state_" + gpioname).text("低电平");
                                }
                                if (state == "HIGH") {
                                    $("#button_state_" + gpioname).text("高电平");
                                }
                                if (state == "UNKNOW") {
                                    $("#button_state_" + gpioname).text("未知");
                                }
                            }

                        } else {
                            alert(jsonobjs.message);
                        }
                    },
                    complete: function () {
                        $.dialog.tips('命令执行中..', 0.1, 'loading.gif');
                    },
                    error: function () {
                        $.dialog.tips('命令执行中..', 0.1, 'loading.gif');
                        alert("网络请求失败");
                    }
                });
            });
        });

    </script>
</head>
<body>

<div class="panel panel-default">
    <div class="panel-body">


        <ul class="nav nav-pills">
            <li role="presentation" class="active"><a href="#panel1" data-toggle="tab">INFO</a></li>
            <li role="presentation"><a href="#panel2" data-toggle="tab">GPIO</a></li>
        </ul>
        <p></p>

        <div class="tab-content">


            <div class="tab-pane active in" id="panel1">
                <div class="panel panel-default">
                    <div class="panel-body">

                        <c:forEach items="${info}" var="group">

                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">${group.key}</h3>
                                </div>
                                <div class="panel-body">

                                    <table class="table table-bordered table-condensed" id="info" style="width: auto">
                                        <thead>
                                        <tr>
                                            <th>属性</th>
                                            <th>值</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${group.value}" var="item">
                                            <tr>
                                                <td>${item.key}</td>
                                                <td>${item.value}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>

                                </div>
                            </div>

                        </c:forEach>

                    </div>
                </div>
            </div>


            <div class="tab-pane fade" id="panel2">
                <div class="panel panel-default">
                    <div class="panel-body">

                        <table class="table table-bordered" style="width: auto">
                            <thead>
                            <tr>
                                <th>编号</th>
                                <th>模式</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><label class="control-label">全部</label></td>

                                <td colspan="3">
                                    <button type="button" class="btn btn-primary" id="button_update_all">刷新</button>
                                </td>
                            </tr>
                            <c:forEach items="${gpio}" var="item">
                                <tr>
                                    <td><label class="control-label">${item.toString()}</label></td>
                                    <td>
                                        <button type="button" class="btn btn-danger" id="button_mode_${item.toString()}">
                                            未知
                                        </button>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-success" id="button_state_${item.toString()}">
                                            未知
                                        </button>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-primary" id="button_update_${item.toString()}">
                                            刷新
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
