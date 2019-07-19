<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>


<%
    String contextPath = request.getContextPath();
    String iplat_msgKey = (String) request.getAttribute("iplat_msgKey");
    iplat_msgKey = iplat_msgKey != null ? iplat_msgKey : "";
    String iplat_msg = (String) request.getAttribute("iplat_msg");
    iplat_msg = iplat_msg != null ? iplat_msg : "";

%>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link rel="shortcut icon" href="${ctx}/iplat.ico" type="image/x-icon">
    <title>错误信息</title>
    <script type="text/javascript" src="<%=contextPath %>/kendoui/js/jquery.min.js"></script>
    <style type="text/css">
        html {
            height: 100%;
            width: 100%;
            min-height: 580px;
        }

        body {
            font-size: 12px;
            color: #89A4C5;
            text-decoration: none;
            margin: 0;
            height: 100%;
            width: 100%;
            min-height: 580px;
            position: relative;
            font-family: "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", SimSun, sans-serif;
        }

        img {
            border: 0;
        }

        .http-500, .http-404, .http-403 {
            height: 100%;
            width: 100%;
            text-align: center;
            padding-top: 150px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .tip {
            position: absolute;
            bottom: 17px;
            left: 0;
            width: 100%;
            padding: 0;
        }

        .tip-info, .copyright-info {
            text-align: center;
            font-size: 12px;
            line-height: 17px;
            color: #FFFFFF;
        }

        .tip-info {
            padding-bottom: 18px;
        }

        .copyright-info {
            font-size: 10px;
            opacity: 0.4;
        }

        .main-info {
            color: #FFF;
            font-size: 24px;
            padding: 60px 0 50px 15px;
            line-height: 33px;
        }

        .http-403 span, .http-404 span, .http-500 span {
            color: #89A4C5;
            font-size: 14px;
            padding: 0 0 10px 0;
            line-height: 20px;
        }

        .http-403 p, .http-404 p, .http-500 p {
            color: #89A4C5;
            font-size: 12px;
            padding: 0;
            line-height: 20px;
        }

        .http-error {
            width: 100%;
            text-align: center;
        }

        .http-error > img {
            width: 285px;
            height: 128px;
        }

        .bg {
            position: absolute;
            overflow: hidden;
            height: 100%;
            width: 100%;
            z-index: -1;
        }
    </style>
</head>

<body>
<div class="bg">
    <img src="<%=contextPath %>/iplatui/img/login.png" width="100%" height="100%">
</div>
<!-- 页面不存在 或禁止使用-->
<% if (iplat_msgKey.contains("ep.0010") || iplat_msgKey.contains("ep.0012") || iplat_msgKey.contains("404")) {%>
<div class="http-404">
    <div class="http-error">
        <img src="<%=contextPath %>/iplatui/img/http-404_2x.png" alt="">
    </div>
    <div class="main-info">您访问的页面不存在!
    </div>
    <span>详细信息</span><br>
    <p><%=iplat_msg%>
    </p>
</div>
<%} else if (iplat_msgKey.contains("ES001") || iplat_msgKey.contains("403")) {%>

<div class="http-403">
    <div class="http-error">
        <img src="<%=contextPath %>/iplatui/img/http-403_2x.png" alt="">
    </div>
    <div class="main-info">您没有当前页面的访问权限!</div>

    <span>详细信息</span><br>
    <p><%=iplat_msg%>
    </p>
</div>
<%} else {%>
<div class="http-500">
    <div class="http-error">
        <img src="<%=contextPath %>/iplatui/img/http-500_2x.png" alt="">
    </div>
    <div class="main-info">您访问的页面出错了!
    </div>
    <span>详细信息</span><br>
    <p><%=iplat_msg%>
    </p>
</div>
<%}%>
<div class="tip">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
            <div class="tip-info">
                <span> <a href="<%=contextPath %>/META-INF/resources/iPlatV6-index.jsp"
                          style="color: #FFF;text-decoration: none;">返回首页</a></span>
            </div>
            <div class="copyright-info">
                <span>©xxxxxx Copyright @1998-2017 xxxxx Corporation. All Rights Reserved</span>
            </div>
        </div>
    </div>
</div>
</body>

</html>
