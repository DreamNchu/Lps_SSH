<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
StringBuffer basePath = request.getRequestURL();
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>小店助手</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="alternate icon" type="img/hengwang-1.png" href="img/hengwang-1.png">
    <link rel="stylesheet" href="css/amazeui.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet"href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/highcharts.js"></script>
    <script type="text/javascript">
        window.onload=function () {
            var lis=document.getElementById("lis").getElementsByTagName("li");
            var today=document.getElementById("today");
            var week=document.getElementById("week");
            var month=document.getElementById("month");
            var year=document.getElementById("year");
            var query=document.getElementById("equry");
            today.style.display="block";
            week.style.display="none";
            month.style.display="none";
            year.style.display="none";
            query.style.display="none";
            lis[0].onclick=function () {
                lis[0].className="active";
                lis[1].className="";
                lis[2].className="";
                lis[3].className="";
                lis[4].className="";
                today.style.display="block";
                week.style.display="none";
                month.style.display="none";
                year.style.display="none";
                query.style.display="none";
            }
            lis[1].onclick=function () {
                lis[0].className="";
                lis[1].className="active";
                lis[2].className="";
                lis[3].className="";
                lis[4].className="";
                today.style.display="none";
                week.style.display="block";
                month.style.display="none";
                year.style.display="none";
                query.style.display="none";
            }
            lis[2].onclick=function () {
                lis[0].className="";
                lis[1].className="";
                lis[2].className="active";
                lis[3].className="";
                lis[4].className="";
                today.style.display="none";
                week.style.display="none";
                month.style.display="block";
                year.style.display="none";
                query.style.display="none";
            }
            lis[3].onclick=function () {
                lis[0].className="";
                lis[1].className="";
                lis[2].className="";
                lis[3].className="active";
                lis[4].className="";
                today.style.display="none";
                week.style.display="none";
                month.style.display="none";
                year.style.display="block";
                query.style.display="none";
            }
            lis[4].onclick=function () {
                lis[0].className="";
                lis[1].className="";
                lis[2].className="";
                lis[3].className="";
                lis[4].className="active";
                today.style.display="none";
                week.style.display="none";
                month.style.display="none";
                year.style.display="none";
                query.style.display="block";
            }
        }
    </script>
</head>
<body>
<header class="am-topbar header">
    <div class="am-container-1">
        <div class="left hw-logo">
            <lable  style="margin-left: 15px;font-size: 250%">★</lable>
            <lable  style="margin-left: 5px;font-size: 250%;font-family: 仿宋">小店helper</lable>
        </div>
        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
                data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
                class="am-icon-bars"></span></button>
        <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
            <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
                <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
                    <li><a href="gzmk.html">工作模板</a></li>
                    <li class="hw-menu-active"><a href="gzbb.html">工作报表</a></li>
                    <li><a href="gzpm.html">工作排名 </a></li>
                    <li><a href="wdxx.html">员工信息</a></li>
                    <li><a href="xgxx.html">修改信息</a></li>
                    <li><a href="xgmm.html">修改密码</a></li>
                    <li><a href="sbqd.html">我要签退</a></li>
                    <li ><a href="login.html">退出</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<div class="toppic" style="background-image: url('img/gzbb.jpg')">
    <div class="am-container-1">
        <div class="toppic-title left">
            <span class="toppic-title-span" ></span>
        </div>
    </div>
</div>

<div class=" am-container-1">
    <div class="container">
        <div class="row">
            <div class="col-xs-12  col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
                <ul id="lis" class="nav nav-tabs" style="font-size: 3px;width: 100%">
                    <li class="active"><a href="#">日报表</a></li>
                    <li ><a href="#">周报表</a></li>
                    <li ><a href="#">月报表</a></li>
                    <li ><a href="#">年报表</a></li>
                    <li ><a href="#">查询</a></li>
                </ul>
            </div>
            <div id="today" class="col-xs-11 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
                <script language="JavaScript">
                    $(document).ready(function() {
                        var title = {
                            text: '今日业绩',
                            style:{
                                'color':'red'
                            }
                        };
                        var chart = {
                            type: 'column'
                        };
                        var credits={
                            text:'南通一店'
                        };
                        var subtitle = {
                            text: '南通一店'
                        };
                        var xAxis = {
                            categories: ['14:00', '15:00', '16:00','17:00', '16:00', '18:00', '19:00', '20:00', '21:00',
                                '22:00']
                        };
                        var yAxis = {
                            title: {
                                text: '接单数（个）'
                            },
                            plotLines: [{
                                value: 0,
                                width: 1,
                                color: '#808080'
                            }]
                        };

                        var tooltip = {
                            valueSuffix: '个'
                        }

                        var legend = {
                            layout: 'vertical',
                            align: 'right',
                            verticalAlign: 'middle',
                            borderWidth: 0
                        };
                        var plotOptions = {
                            line: {
                                dataLabels: {
                                    enabled: true
                                }
                            }
                        };
                        var series =  [
                            {
                                name: '点钟',
                                data: [1, 0, 2, 0, 1, 0, 2,1,0,1]
                            },
                            {
                                name: '排钟',
                                data: [2, 1, 1, 3, 0,1 , 0,2,1,0]
                            }
                        ];

                        var json = {};

                        json.title = title;
                        json.chart=chart;
                        json.credits=credits;
                        json.subtitle = subtitle;
                        json.xAxis = xAxis;
                        json.yAxis = yAxis;
                        json.tooltip = tooltip;
                        json.legend = legend;
                        json.series = series;
                        json.plotOptions = plotOptions;
                        $('#today').highcharts(json);
                    });
                </script>
            </div>
            <div id="week" class="col-xs-11 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
                <script language="JavaScript">
                    $(document).ready(function() {
                        var title = {
                            text: '员工连续七天业绩',
                            style:{
                                'color':'blue'
                            }
                        };
                        var credits={
                            text:'南通一店'
                        };
                        var subtitle = {
                            text: '南通一店'
                        };
                        var xAxis = {
                            categories: ['周一', '周二', '周三', '周四', '周五', '周六',
                                '周日']
                        };
                        var yAxis = {
                            title: {
                                text: '接单数（个）'
                            },
                            plotLines: [{
                                value: 0,
                                width: 1,
                                color: '#808080'
                            }]
                        };

                        var tooltip = {
                            valueSuffix: '个'
                        }

                        var legend = {
                            layout: 'vertical',
                            align: 'right',
                            verticalAlign: 'middle',
                            borderWidth: 0
                        };
                        var plotOptions = {
                            line: {
                                dataLabels: {
                                    enabled: true
                                }
                            }
                        };
                        var series =  [
                            {
                                name: ' 点钟',
                                data: [7., 6, 9, 14, 9, 10, 12]
                            },
                            {
                                name: '排钟',
                                data: [8, 9, 12, 13,0, 18,15]
                            }
                        ];

                        var json = {};

                        json.title = title;
                        json.credits=credits;
                        json.subtitle = subtitle;
                        json.xAxis = xAxis;
                        json.yAxis = yAxis;
                        json.tooltip = tooltip;
                        json.legend = legend;
                        json.series = series;
                        json.plotOptions = plotOptions;
                        $('#week').highcharts(json);
                    });
                </script>
            </div>
            <div id="month" class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
                <script language="JavaScript">
                    $(document).ready(function() {
                        var title = {
                            text: '员工连续一个月业绩'
                        };
                        var credits = {
                            text: '南通一店'
                        };
                        var subtitle = {
                            text: '南通一店'
                        };
                        var xAxis = {
                            categories: ['1-5', '6-10', '11-15', '16-20', '21-25', '25-31']
                        };
                        var yAxis = {
                            title: {
                                text: '接单数（个）'
                            },
                            plotLines: [{
                                value: 0,
                                width: 1,
                                color: '#808080'
                            }]
                        };

                        var tooltip = {
                            valueSuffix: '个'
                        }

                        var legend = {
                            layout: 'vertical',
                            align: 'right',
                            verticalAlign: 'middle',
                            borderWidth: 0
                        };
                        var series =  [
                            {
                                name: '点钟',
                                data: [70, 60, 90, 140, 90, 100]
                            },
                            {
                                name: '排钟',
                                data: [80, 90, 120, 130,90, 180]
                            },
                        ];

                        var json = {};

                        json.title = title;
                        json.credits=credits;
                        json.subtitle = subtitle;
                        json.xAxis = xAxis;
                        json.yAxis = yAxis;
                        json.tooltip = tooltip;
                        json.legend = legend;
                        json.series = series;
                        $('#month').highcharts(json);
                    });
                </script>
            </div>
            <div id="year" class="col-xs-12  col-sm-8 col-sm-offset-1 col-md-8 col-md-offset-2">
                <script language="JavaScript">
                    $(document).ready(function() {
                        var title = {
                            text: '员工连续一年业绩'
                        };
                        var credits = {
                            text: '南通一店'
                        };
                        var subtitle = {
                            text: '南通一店'
                        };
                        var xAxis = {
                            categories: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11','12']
                        };
                        var yAxis = {
                            title: {
                                text: '接单数（个）'
                            },
                            plotLines: [{
                                value: 0,
                                width: 1,
                                color: '#808080'
                            }]
                        };

                        var tooltip = {
                            valueSuffix: '个'
                        }

                        var legend = {
                            layout: 'vertical',
                            align: 'right',
                            verticalAlign: 'middle',
                            borderWidth: 0
                        };
                        var series =  [
                            {
                                name: '点钟',
                                data: [70, 60, 90, 140, 90, 100,80,100,160,120,60,90]
                            },
                            {
                                name: '排钟',
                                data: [80, 90, 120, 130,90, 180,120,90,140,50,80,110]
                            },
                        ];

                        var json = {};
                        json.title = title;
                        json.credits=credits;
                        json.subtitle = subtitle;
                        json.xAxis = xAxis;
                        json.yAxis = yAxis;
                        json.tooltip = tooltip;
                        json.legend = legend;
                        json.series = series;
                        $('#year').highcharts(json);
                    });
                </script>
            </div>
            <div id="equry" class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2">
                <form>
                    <div class="form-group">
                        <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2" style="margin-bottom: 15px">
                            <select class="form-control" id="selecttype">
                                <option value="1">点钟</option>
                                <option value="2">排钟</option>
                            </select>
                        </div>
                        <div class="col-xs-12  col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2" style="margin-bottom: 15px">
                            <select class="form-control" id="selectdate">
                                <option value="1">一天</option>
                                <option value="2">七天</option>
                                <option value="3">三十天</option>
                            </select>
                        </div>
                        <div class="col-xs-12  col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2" style="margin-bottom: 15px">
                            <input type="date" name="date" class="form-control" placeholder="选择其实日期 ">
                        </div >
                        <div class="col-xs-12 col-xs-offset-4 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2" style="margin-bottom: 15px">
                            <input type="submit" class="btn btn-primary" value=" 查询">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
<!--[if lt IE 9]>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="js/amazeui.min.js"></script>
<!--[if (gte IE 9)|!(IE)]><!-->

</html>