<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html>
<head>

    <title>咚咚商城 Administrator's Control Panel - powered by 咚咚商城</title>
    <link href="/res/css/admin.css" rel="stylesheet"/>
    <link href="/res/common/css/theme.css" rel="stylesheet"/>
    <link href="/res/common/css/jquery.validate.css" rel="stylesheet"/>
    <link href="/res/common/css/jquery.treeview.css" rel="stylesheet"/>
    <link href="/res/common/css/jquery.ui.css" rel="stylesheet"/>

    <script type="text/javascript" src="/res/fckeditor/fckeditor.js"></script>
    <script src="/res/common/js/jquery.js" type="text/javascript"></script>
    <script src="/res/common/js/jquery.ext.js" type="text/javascript"></script>
    <script src="/res/common/js/jquery.form.js" type="text/javascript"></script>
    <script src="/res/common/js/yongheng.js" type="text/javascript"></script>
    <script src="/res/js/admin.js" type="text/javascript"></script>
    <style>
        * {
            margin: 0;
            padding: 0
        }

        a:focus {
            outline: none;
        }

        html {
            height: 100%;
            overflow: hidden;
        }

        body {
            height: 100%;
        }

        #top {
            background-color: #1d63c6;
            height: 69px;
            width: 100%;
        }

        .logo {
            width: 215px;
            height: 69px;
        }

        .topbg {
            height: 38px;
        }

        .login-welcome {
            padding-left: 20px;
            color: #fff;
            font-size: 12px;
        }

        .login-welcome a:link, .login-welcome a:visited {
            color: #fff;
            text-decoration: none;
        }

        #welcome {
            color: #FFFFFF;
            padding: 0 30px 0 5px;
        }

        #logout {
            color: #FFFFFF;
            padding-left: 5px;
        }

        .nav {
            height: 31px;
            overflow: hidden;
        }

        .nav-menu {
            height: 31px;
            list-style: none;
            padding-left: 20px;
            font-size: 14px;
        }

        .nav .current {
            color: #fff;
            width: 72px;
            text-align: center;
        }

        .nav .current a {
            color: #fff;
        }

        .nav-menu li {
            height: 31px;
            text-align: center;
            line-height: 31px;
            float: left;
        }

        .nav-menu li a {
            color: #2b2b2b;
            font-weight: bold;
        }

        .nav-menu li.sep {
            width: 2px;
            height: 31px;
            margin: 0px 5px;
        }

        .nav .normal {
            width: 72px;
            text-align: center;
        }

        .top-bottom {
            width: 100%;
            height: 3px;
        }

        .undis {
            display: none;
        }

        .dis {
            display: block;
        }
    </style>

    <script type="text/javascript">
        function HoverLi(id) {
            $("li[id^='tb_']").each(function () {
                $(this).removeClass("current");
                $(this).addClass("normal");
            });
            $("#tb_" + id).removeClass("normal");
            $("#tb_" + id).addClass("current");
        }
    </script>
</head>
<body>
<div id="top">
    <div class="top">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="215">
                    <div class="logo"><img src="/res/img/pic/logo-1.png" width="215" height="69"/></div>
                </td>
                <td valign="top">
                    <div class="topbg">
                        <div class="login-welcome">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="420" height="38">
                                        <img src="/res/img/admin/welconlogin-icon.png"/><span
                                            id="welcome">您好:admin!</span>
                                        <img src="/res/img/admin/loginout-icon.png"/><a
                                            href="logout.do?returnUrl=index.do" target="_top" id="logout"
                                            onclick="return confirm('您确定退出吗?');">退出</a> 
                                        <img src="/res/img/admin/message-unread.png"/>&nbsp;<a
                                            href="message/v_list.do" target="rightFrame">你有<span
                                            id="countDiv">0</span>条信息未读</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="nav">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <ul class="nav-menu">
                                            <li class="current" id="tb_11" onclick="HoverLi(11);"><a href="main.jsp"
                                                                                                     target="mainFrame">首页</a>
                                            </li>
                                            <li class="sep"></li>
                                            <li class="normal" id="tb_12" onclick="HoverLi(12);"><a
                                                    href="frame/product_main.jsp" target="mainFrame">商品</a></li>
                                            <li class="sep"></li>
                                            <li class="normal" id="tb_13" onclick="HoverLi(13);"><a
                                                    href="frame/order_main.jsp" target="mainFrame">订单</a></li>
                                            <li class="sep"></li>
                                            <li class="normal" id="tb_14" onclick="HoverLi(14);"><a
                                                    href="frame/product_main.jsp" target="mainFrame">支付</a></li>
                                            <li class="sep"></li>
                                            <li class="normal" id="tb_15" onclick="HoverLi(15);"><a
                                                    href="frame/product_main.jsp" target="mainFrame">资源</a></li>
                                            <li class="sep"></li>
                                            <li class="normal" id="tb_16" onclick="HoverLi(16);"><a
                                                    href="frame/product_main.jsp" target="mainFrame">辅助</a></li>
                                            <li class="sep"></li>
                                            <li class="normal" id="tb_17" onclick="HoverLi(17);"><a
                                                    href="frame/product_main.jsp" target="mainFrame">维护</a></li>
                                            <li class="sep"></li>
                                            <li class="normal" id="tb_18" onclick="HoverLi(18);"><a
                                                    href="frame/product_main.jsp" target="mainFrame">生成</a></li>
                                            <li class="sep"></li>
                                            <li class="normal" id="tb_19" onclick="HoverLi(19);"><a
                                                    href="frame/product_main.jsp" target="mainFrame">用户</a></li>
                                            <li class="sep"></li>
                                            <li class="normal" id="tb_20" onclick="HoverLi(20);"><a
                                                    href="frame/product_main.jsp" target="mainFrame">配置</a></li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>
<div class="top-bottom"></div>
</body>
</html>