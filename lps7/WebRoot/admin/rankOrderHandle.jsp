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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>排钟手发</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="dist/css/skins/skin-red.min.css">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-red sidebar-mini">
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
                            <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs">你好，世界</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

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
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <aside class="main-sidebar" style="background-color: #555555">
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>你好世界</p>
                    <a href="#"><i class="fa fa-circle text-success"></i>空闲</a>
                </div>
            </div>
            <ul class="sidebar-menu" data-widget="tree">
                <li class="treeview active">
                    <a href="#"><i class="glyphicon glyphicon-th-large"></i><span>工作模块</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li  class="treeview active">
                            <a href="dzsf.html"><i class="fa fa-circle-o text-red"></i><span>订单发起</span>
                                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li ><a href="spotOrderHandle"><i class="fa fa-circle-o text-yellow"></i>点钟手发</a></li>
                                <li class="active"><a href="rankOrderHandle"><i class="fa fa-circle-o text-blue"></i>排钟手发</a></li>
                                <li><a href="rankOrderAuto"><i class="fa fa-circle-o text-green"></i>排钟自发</a></li>
                            </ul>
                        </li>
                        <li><a href="userWorkData"><i class="fa fa-circle-o text-green"></i>员工状态</a></li>
                        <li><a href="cfdd.html"><i class="fa fa-circle-o text-yellow"></i>重发订单</a></li>
                        <li><a href="ddqk.html"><i class="fa fa-circle-o text-blue"></i>订单情况</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#"> <i class="fa fa-pie-chart"></i><span>员工报表</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu active">
                        <li class="treeview"><a href="#"><i class="fa fa-circle-o text-orange"></i>个人报表
                            <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                        </a>
                            <ul class="treeview-menu">
                                <li ><a href="pages/charts/gjrbb.html"><i class="fa fa-circle-o text-yellow"></i>今日报表</a></li>
                                <li ><a href="pages/charts/gbzbb.html"><i class="fa fa-circle-o text-blue"></i>本周报表</a></li>
                                <li ><a href="pages/charts/gbybb.html"><i class="fa fa-circle-o text-green"></i>本月报表</a></li>
                                <li><a href="pages/charts/gqnbb.html"><i class="fa fa-circle-o text-red"></i>全年报表</a></li>
                            </ul>
                        </li>
                        <li class="treeview"><a href="#"><i class="fa fa-circle-o text-purple"></i>总体报表
                            <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                        </a>
                            <ul class="treeview-menu">
                                <li ><a href="pages/charts/zjrbb.html"><i class="fa fa-circle-o text-yellow"></i>今日报表</a></li>
                                <li ><a href="pages/charts/zbzbb.html"><i class="fa fa-circle-o text-blue"></i>本周报表</a></li>
                                <li ><a href="pages/charts/zbybb.html"><i class="fa fa-circle-o text-green"></i>本月报表</a></li>
                                <li><a href="pages/charts/zqnbb.html"><i class="fa fa-circle-o text-red"></i>全年报表</a></li>
                            </ul>
                        </li>
                        <li><a href="pages/charts/cxbb.html"><i class="fa fa-circle-o text-bold"></i>查询报表</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="pages/layout/jrpm.html"><i class="glyphicon glyphicon-signal"></i> <span>员工排名</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="pages/layout/jrpm.html"><i class="fa fa-circle-o text-red"></i>今日排名</a></li>
                        <li><a href="pages/layout/zzpm.html"><i class="fa fa-circle-o text-yellow"></i>此周排名</a></li>
                        <li><a href="pages/layout/zypm.html"><i class="fa fa-circle-o text-blue"></i>这月排名</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="pages/tables/grxx.html"><i class="glyphicon glyphicon-user"></i> <span>个人信息</span>
                        <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="pages/tables/grxx.html"><i class="fa fa-circle-o text-red"></i>信息查看</a></li>
                        <li><a href="pages/tables/xgmm.html"><i class="fa fa-circle-o text-blue"></i>密码修改</a></li>
                    </ul>
                </li>
                <li><a href="pages/tables/xxcx.html"><i class="glyphicon glyphicon-home"></i><span>员工管理</span></a></li>
                <li><a href="gsjj.html"><i class="glyphicon glyphicon-home"></i><span>公司简介</span></a></li>
                <li><a href="gywz.html"><i class="glyphicon glyphicon-book"></i> <span>关于网站</span></a></li>
            </ul>


        </section>
    </aside>

    <div class="content-wrapper">
        <section class="content-header">
            <h1>
                工作模块
                <small>排钟手发</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>2017-11-27-18-19</a></li>
            </ol>
        </section>

        <section class="content container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box box-warning">
                            <div class="box-header with-border">
                                <h3 class="box-title">排钟订单发布--手发</h3>
                            </div>
                            <div class="box-body">
                                <form role="form" id="createOrder">
                                <input type="hidden" name="clockCategoryId" value="<s:property value='sendOrderDto.clockCategory.id'/>"/>
                                    <div class="form-group">
                                        <label>选择员工</label>
                                        <select class="form-control" name="stuffId">
                                            <s:iterator value="sendOrderDto.userList" id="user">
                    							<option value="<s:property value='#user.id'/>"><s:property value="#user.workId"/></option>
                    						</s:iterator>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>选择房间</label>
                                        <select class="form-control" name="roomId">
                                           <s:iterator value="sendOrderDto.roomList" id="room">
                    						<option value="<s:property value='#room.id'/>"><s:property value="#room.name"/></option>
                    						</s:iterator>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>选择项目</label>
                                        <select class="form-control" name = "roomCategotyId">
                                            <s:iterator value="sendOrderDto.roomCategorySet" id="roomCategory">
                    							<option value="<s:property value="#roomCategory.id"/>"><s:property value="#roomCategory.roomCategory"/></option>
                   							 </s:iterator>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>选择客户优先级别</label>
                                        <select class="form-control">
                                            <option>普通会员</option>
                                            <option>普通VIP</option>
                                            <option>高级VIP</option>
                                            <option>尊贵VIP</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>备注</label>
                                        <textarea class="form-control" rows="3" placeholder="备注信息......"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="button" class="btn btn-info pull-left" onclick="submitOrder('createOrder')" value="发布"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>


    <aside class="control-sidebar control-sidebar-dark">
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">内容头部标题</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">内容标题</h4>

                                <p>内容实体</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <h3 class="control-sidebar-heading">内容头部标题</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                内容标题
                                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="tab-pane" id="control-sidebar-stats-tab">表格内容</div>
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">内容头部标题</h3>
                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            内容标题
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            一些关于设置的信息
                        </p>
                    </div>
                </form>
            </div>
        </div>
    </aside>
    <div class="control-sidebar-bg"></div>
</div>

<script src="bower_components/jquery/dist/jquery.min.js"></script>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="dist/js/adminlte.min.js"></script>
<script src="js/createOrderAjax.js"></script>
</body>
</html>