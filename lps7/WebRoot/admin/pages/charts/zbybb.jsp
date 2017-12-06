<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
StringBuffer basePath = request.getRequestURL();
%>
<%-- <s:debug></s:debug> --%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>总体本月报表</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <header class="main-header" style="background-color: #333333">
        <a href="" class="logo" style="background-color: #333333">
            <span class="logo-mini"><b>☆</b></span>
            <span class="logo-lg"><b> 小店助手</b></span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation" style="background-color: #555555">
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">显示/隐藏</span>
            </a>
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">你有四个消息</li>
                            <li>
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                运动
                                                <small><i class="fa fa-clock-o"></i> 5分钟</small>
                                            </h4>
                                            <p>今天去打篮球</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">我看了所有消息</a></li>
                        </ul>
                    </li>
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">你有10个通知</li>
                            <li>
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 去11号房间
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">所有通知已读</a></li>
                        </ul>
                    </li>
                    <li class="dropdown tasks-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">你有9个任务</li>
                            <li>
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <h3>
                                                打扫房间
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">20%完成</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">所有任务已看</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">你好，世界</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    你好世界-前端工程师
                                    <small>注册时间 2012</small>
                                </p>
                            </li>
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">鲜花</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">销售</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">朋友</a>
                                    </div>
                                </div>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">人物介绍</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">退出</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <aside class="main-sidebar" style="background-color: #555555">
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>你好世界</p>
                    <a href="#"><i class="fa fa-circle text-success"></i>空闲</a>
                </div>
            </div>
            <ul class="sidebar-menu" data-widget="tree">
                <li class="treeview">
                    <a href="#"><i class="glyphicon glyphicon-th-large"></i><span>工作模块</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li  class="treeview">
                            <a href="../../dzsf.html"><i class="fa fa-circle-o text-red"></i><span>订单发起</span>
                                <span class="pull-right-container">
                                 <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ><a href="../../dzsf.html"><i class="fa fa-circle-o text-yellow"></i>点钟手发</a></li>
                                <li ><a href="../../pzsf.html"><i class="fa fa-circle-o text-blue"></i>排钟手发</a></li>
                                <li ><a href="../../pzzf.html"><i class="fa fa-circle-o text-green"></i>排钟自发</a></li>
                            </ul>
                        </li>
                        <li><a href="../../ygzt.html"><i class="fa fa-circle-o text-green"></i>员工状态</a></li>
                        <li ><a href="../../cfdd.html"><i class="fa fa-circle-o text-yellow"></i>重发订单</a></li>
                        <li ><a href="../../ddqk.html"><i class="fa fa-circle-o text-blue"></i>订单情况</a></li>
                    </ul>
                </li>
                <li class="treeview active">
                    <a href="#"> <i class="fa fa-pie-chart"></i><span>员工报表</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                         </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="treeview active"><a href="#"><i class="fa fa-circle-o text-orange"></i>个人报表
                            <span class="pull-right-container">
                                 <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                            <ul class="treeview-menu">
                                <li ><a href="gjrbb"><i class="fa fa-circle-o text-yellow"></i>今日报表</a></li>
                                <li ><a href="gbzbb.html"><i class="fa fa-circle-o text-blue"></i>本周报表</a></li>
                                <li ><a href="gbybb.html"><i class="fa fa-circle-o text-green"></i>本月报表</a></li>
                                <li><a href="gqnbb.html"><i class="fa fa-circle-o text-red"></i>全年报表</a></li>
                            </ul>
                        </li>
                        <li class="treeview  active"><a href="#"><i class="fa fa-circle-o text-purple"></i>总体报表
                            <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                        </a>
                            <ul class="treeview-menu">
                                <li ><a href="zjrbb"><i class="fa fa-circle-o text-yellow"></i>今日报表</a></li>
                                <li ><a href="zbzbb.html"><i class="fa fa-circle-o text-blue"></i>本周报表</a></li>
                                <li class="active"><a href="zbybb.html"><i class="fa fa-circle-o text-green"></i>本月报表</a></li>
                                <li><a href="zqnbb.html"><i class="fa fa-circle-o text-red"></i>全年报表</a></li>
                            </ul>
                        </li>
                        <li><a href="cxbb.html"><i class="fa fa-circle-o text-bold"></i>查询报表</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="../layout/jrpm.html"><i class="glyphicon glyphicon-signal"></i> <span>员工排名</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="../layout/jrpm.html"><i class="fa fa-circle-o text-red"></i>今日排名</a></li>
                        <li><a href="../layout/zzpm.html"><i class="fa fa-circle-o text-yellow"></i>此周排名</a></li>
                        <li><a href="../layout/zypm.html"><i class="fa fa-circle-o text-blue"></i>这月排名</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="../tables/grxx.html"><i class="glyphicon glyphicon-user"></i> <span>个人信息</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="../tables/grxx.html"><i class="fa fa-circle-o text-red"></i>信息查看</a></li>
                        <li><a href="../tables/xgmm.html"><i class="fa fa-circle-o text-blue"></i>密码修改</a></li>
                    </ul>
                </li>
                <li><a href="../tables/xxcx.html"><i class="glyphicon glyphicon-home"></i><span>员工管理</span></a></li>
                <li><a href="../../gsjj.html"><i class="glyphicon glyphicon-home"></i><span>公司简介</span></a></li>
                <li><a href="../../gywz.html"><i class="glyphicon glyphicon-book"></i> <span>关于网站</span></a></li>
            </ul>

        </section>
    </aside>
    <div class="content-wrapper">
        <section class="content-header">
            <form>
                <table>
                    <tr>
                        <td ><b><h4 style="font-family: 仿宋;">总体报表</h4></b></td>
                        <td><input type="date" class="form-control" placeholder="输入日期查询"></td>
                        <td> <button type="submit" class="btn btn-info pull-right">查询</button></td>
                    </tr>
                </table>
            </form>
            <ol class="breadcrumb">
                <li><a href="#">2017-11-27-20-14</a></li>
            </ol>
        </section>

        <section class="content">
            <div class="row">
                <div class="col-md-12" >
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title"> 总体月工作报表--横轴为日期--纵轴为本月总收益</h3>
                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="chart">
                                <canvas id="barChart" style="height:250px"></canvas>
                            </div>
                        </div>
                        <div class="box-header with-border">

                            <h3 class="box-title">总体月工作报表--横轴为日期--纵轴为本月总订单数</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                </button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
                            <div id="line-chart" style="height: 250px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>


    <div class="control-sidebar-bg"></div>
</div>
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../../bower_components/Chart.js/Chart.js"></script>
<script src="../../bower_components/Flot/jquery.flot.js"></script>
<script src="../../bower_components/Flot/jquery.flot.resize.js"></script>
<script src="../../bower_components/Flot/jquery.flot.pie.js"></script>
<script src="../../bower_components/Flot/jquery.flot.categories.js"></script>
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<script src="../../dist/js/adminlte.min.js"></script>
<script src="../../dist/js/demo.js"></script>
<script>
    $(function () {

        var sin = [];
        for (var i = 1; i < 14; i ++) {
            sin.push([i,i])
        }
        var line_data1 = {
            data: sin,
            color: '#3c8dbc'
        }
        $.plot('#line-chart', [line_data1], {
            grid: {
                hoverable: true,
                borderColor: '#f3f3f3',
                borderWidth: 1,
                tickColor: '#f3f3f3'
            },
            series: {
                shadowSize: 0,
                lines: {
                    show: true
                },
                points: {
                    show: true
                }
            },
            lines: {
                fill: false,
                color: ['#3c8dbc', '#f56954']
            },
            yaxis: {
                show: true
            },
            xaxis: {
                show: true
            }
        })
        //Initialize tooltip on hover
        $('<div class="tooltip-inner" id="line-chart-tooltip"></div>').css({
            position: 'absolute',
            display: 'none',
            opacity: 0.8
        }).appendTo('body')
        $('#line-chart').bind('plothover', function (event, pos, item) {

            if (item) {
                var x = item.datapoint[0],
                    y = item.datapoint[1]

                $('#line-chart-tooltip').html('周天=' + x + '，值 = ' + y)
                    .css({top: item.pageY + 5, left: item.pageX + 5})
                    .fadeIn(200)
            } else {
                $('#line-chart-tooltip').hide()
            }
        })

        var yearChartData = {
            labels  : ['9.00', '10.00', '11.00', '12.00', '13.00', '14.00', '15.00','16.00', '17.00', '18.00', '19.00', '20.00','21.00','22.00','23.00','24.00'],
            datasets: [
                {
                    label               : ' 点钟',
                    fillColor           : '#3c8dbc',
                    strokeColor         : '#f56954',
                    pointColor          : '#3c8dbc',
                    pointStrokeColor    : '#f56954',
                    pointHighlightFill  : '#3c8dbc',
                    pointHighlightStroke: 'rgba(220,220,220,1)',
                    data                : [60, 50, 80, 80, 60, 90,20 ,100, 70, 30, 80, 102, 50,40,50,70]
                }
            ]
        }

        var barChartCanvas= $('#barChart').get(0).getContext('2d')
        var barChart = new Chart(barChartCanvas)
        var barChartData  = yearChartData
        barChartData.datasets[0].fillColor   = '#00a65a'
        barChartData.datasets[0].strokeColor = '#00a65a'
        barChartData.datasets[0].pointColor  = '#00a65a'
        var barChartOptions                  = {
            scaleBeginAtZero        : true,
            //网格线
            scaleShowGridLines      : true,
            //网格线颜色
            scaleGridLineColor      : 'rgba(0,0,0,.05)',
            //网格线的粗细
            scaleGridLineWidth      : 1,
            //是否显示水平线
            scaleShowHorizontalLines: true,
            //是否显示竖直线
            scaleShowVerticalLines  : true,
            //杆上有线
            barShowStroke           : true,
            //杆的像素宽度
            barStrokeWidth          : 2,
            //X值之间的距离
            barValueSpacing         : 5,
            //间距的数据集在X的价值观
            barDatasetSpacing       : 1,
            //图例模板
            //legendTemplate          : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].fillColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',
            //是否使图表响应
            responsive              : true,
            maintainAspectRatio     : true
        }

        barChartOptions.datasetFill = false
        barChart.Bar(yearChartData, barChartOptions)
    })
</script>

</body>
</html>