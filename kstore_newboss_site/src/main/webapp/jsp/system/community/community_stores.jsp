<%--
  Created by IntelliJ IDEA.
  User: NP-Heh
  Date: 2015/3/21
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <!-- Bootstrap -->
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css">
    <link href="<%=basePath%>iconfont/iconfont.css" rel="stylesheet">
    <link href="<%=basePath%>css/summernote.css" rel="stylesheet">
    <link href="<%=basePath%>css/bootstrap-select.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/style.css" rel="stylesheet">
    <link href="<%=basePath %>css/select2.min.css" rel="stylesheet">
    <link href="<%=basePath %>css/style_new.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- 引用头 -->
<jsp:include page="../../page/header.jsp"></jsp:include>
<div class="page_body container-fluid">
    <div class="row">
        <jsp:include page="../../page/left.jsp"></jsp:include>
        <div class="col-lg-20 col-md-19 col-sm-18 main">
            <jsp:include page="../../page/left2.jsp"></jsp:include>
            <div class="main_cont">
                 <jsp:include page="../../page/breadcrumbs.jsp"></jsp:include>
                <h2 class="main_title">${pageNameChild}<small>(共${pageBean.rows }条)</small></h2>

                <div class="common_data p20">
                    <div class="filter_area">
                        <input type="hidden" id="formId" value="searchCommunityStoreForm"/>
                        <input type="hidden" id="formName" value="queryCommunityStores.htm"/>
                        <form role="form" class="form-inline" action="queryCommunityStores.htm" method="post" id="searchCommunityStoreForm">
                            <input type="hidden" name="CSRFToken" value="${token}">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">社区店名称</span>
                                    <input type="text" class="form-control specstr" name="communityStoreName" value="${communityStoreName}">
                                </div>
                            </div>

                            <div class="form-group">
                                <button type="button" class="btn btn-primary" onclick="searchCommunityStore()">搜索</button>
                            </div>
                        </form>
                    </div>
                    <div class="data_ctrl_area mb20">
                        <div class="data_ctrl_search pull-right"></div>
                        <div class="data_ctrl_brns pull-left">
                            <button type="button" class="btn btn-info" onclick="showAddCommunityStore()">
                                <i class="glyphicon glyphicon-plus"></i> 添加
                            </button>
                            <button type="button" class="btn btn-info" onclick="showDeleteBatchConfirmAlert('deleteCommunityStoreForm','communityStoreIds')">
                                <i class="glyphicon glyphicon-trash"></i> 删除
                            </button>
                            <button type="button" class="btn btn-info" onclick="location.reload();">
                                <i class="glyphicon glyphicon-refresh"></i> 刷新
                            </button>
                        </div>
                        <div class="clr"></div>
                    </div>
                    <form action="deleteCommunityStores.htm" method="post" id="deleteCommunityStoreForm">
                        <input type="hidden" name="CSRFToken" value="${token}" id="CSRFToken"/>
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th width="50"><input type="checkbox" onclick="selectAll('communityStoreIds',this)"></th>
                            <th>社区店名称</th>
                            <th>联系人</th>
                            <th>联系电话</th>
                            <th>是否启用</th>
                            <th width="200">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${pageBean.list}" var="tempObject" varStatus="i">
                        <tr>
                            <td width="50"><input type="checkbox" name="communityStoreIds"  value="${tempObject.communityStoreId }"></td>
                            <td>${tempObject.communityStoreName }</td>
                            <td>${tempObject.contact}</td>
                            <td>${tempObject.contactMobile}</td>
                            <td>
                                <c:if test="${tempObject.openFlag == 0 }">
                                    <span class="label label-default">否</span>
                                </c:if>
                                <c:if test="${tempObject.openFlag == 1 }">
                                    <span class="label label-success">是</span>
                                </c:if>
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" onclick="showEditCommunityStoreForm(${tempObject.communityStoreId })">编辑</button>
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="javascript:;" onclick="showAjaxDeleteConfirmAlert('deleteCommunityStore.htm?CSRFToken=${token}&communityStoreId=${tempObject.communityStoreId }')">删除</a></li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    </form>
                    <c:import url="../../page/searchPag.jsp">
                        <c:param name="pageBean" value="${pageBean }"/>
                    </c:import>

                </div>

            </div>

        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="addCommunityStore"  role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加社区店</h4>
            </div>
            <div class="modal-body">
                <form role="form" class="form-horizontal" action="addCommunityStore.htm" id="addCommunityStoreForm" method="post">
                    <input type="hidden" name="CSRFToken" value="${token}">

                    <div class="form-group">
                        <label class="control-label col-sm-7"><font color="red">*</font>社区店名称：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-14">
                            <input type="text" class="form-control w200 required specstr" name="communityStoreName" maxlength="100">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-7"><font color="red">*</font>联系人：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-4">
                            <input type="text" class="form-control required" name="contact" maxlength="100">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-7">联系电话：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-14">
                            <input type="text" class="form-control isPhone" name="contactMobile" maxlength="100">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-7"><b style="color: red;">*</b>选择地区：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-14">
                            <select class="inline required" data-live-search="true" id="provinces" name="provinceId" onchange="queryCityByProvinceId(this)">
                                <option>选择省份</option>
                            </select>
                            <select class="inline required" data-live-search="true" id="cities" name="cityId" onchange="queryDistrictByCityId(this)">
                                <option>选择城市</option>
                            </select>
                            <select class="inline required" data-live-search="true" id="districts" name="districtId" onchange="selectDistrict(this)">
                                <option>选择区县</option>
                            </select>
                            <label for="districts" generated="true" class="districts_valid"></label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-7">详细地址：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-14">
                            <input type="text" class="form-control required" name="communityStoreAddress" maxlength="200">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-7">是否启用：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-14">
                            <label class="radio-inline">
                                <input type="radio" name="openFlag" value="1" checked> 是
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="openFlag"value="0"> 否
                            </label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="submitAddCommunityStoreForm()">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="editCommunityStore"  role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">编辑社区店</h4>
            </div>
            <div class="modal-body">
                <form role="form" class="form-horizontal" action="updateCommunityStore.htm" id="editCommunityStoreForm" method="post">
                    <input type="hidden" id="communityStoreId" name="communityStoreId"/>
                    <input type="hidden" name="CSRFToken" value="${token}">

                    <div class="form-group">
                        <label class="control-label col-sm-7"><font color="red">*</font>社区店名称：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-14">
                            <input type="text" class="form-control w200 required specstr" name="communityStoreName" id="communityStoreName" maxlength="100">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-7"><font color="red">*</font>联系人：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-4">
                            <input type="text" class="form-control required" name="contact" id="contact" maxlength="100">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-7">联系电话：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-14">
                            <input type="text" class="form-control isPhone" name="contactMobile" id="contactMobile" maxlength="100">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-7"><b style="color: red;">*</b>选择地区：</label>
                        <div class="col-sm-1"></div>

                        <input type="hidden" name="temp3" id="editTemp3">
                        <input type="hidden" name="temp4" id="editTemp4">
                        <input type="hidden" name="temp5" id="editTemp5">
                        <div class="col-sm-14">
                            <select class="inline " data-live-search="true" name="provinceId" id="province" onchange="editQueryCityByProvinceId(this)">
                                <option>选择省份</option>
                            </select>
                            <select class="inline " data-live-search="true" name="cityId" id="city" onchange="editQueryDistrictByCityId(this)">
                                <option>选择城市</option>
                            </select>
                            <select class="inline " data-live-search="true" name="districtId" id="district" onchange="selectDistrict(this)">
                                <option>选择区县</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-7">详细地址：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-14">
                            <input type="text" class="form-control required" name="communityStoreAddress" id="communityStoreAddress" maxlength="200">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-7">是否启用：</label>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-14">
                            <label class="radio-inline">
                                <input type="radio" name="openFlag" id="open1" value="1" checked> 是
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="openFlag" id="open2" value="0"> 否
                            </label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="submitEditCommunityStoreForm()">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/summernote.min.js"></script>
<script src="<%=basePath%>js/language/summernote-zh-CN.js"></script>
<script src="<%=basePath%>js/bootstrap-select.min.js"></script>
<script src="<%=basePath%>js/common.js"></script>
<script src="<%=basePath%>js/common/common_alert.js"></script>
<script src="<%=basePath %>js/common/common_checked.js"></script>
<script src="<%=basePath%>js/system/system_common.js"></script>
<script src="<%=basePath%>js/system/communitystore.js"></script>
<script src="<%=basePath %>js/select2.min.js"></script>
</body>
</html>

