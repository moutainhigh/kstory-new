<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <title>退款详情</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <#assign basePath=request.contextPath>
    <link rel="stylesheet" type="text/css" href="${basePath}/css/base.min.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${basePath}/css/pages.css" />
    <script type="text/javascript" src="${basePath}/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="${basePath}/index_960/js/app.js"></script>
    <style>
        .track-info{padding-left:300px;color:#afafaf}
        .track-info .track-date,.track-info i,.track-info .track-cont{display:inline-block;*display:inline;*zoom:1;vertical-align:middle;vertical-align:bottom;}
        .track-info .track-date{width:160px;text-align:right}
        .track-info i{background:url(../images/track-bg.png) no-repeat left bottom;width:14px;height:40px;margin:0 20px}
        .track-info .current .track-date{color:#e64f25}
        .track-info .current .track-cont{color:#333}
        .track-info .current .track-cont em{color:#e64f25;font-style:normal}
        .track-info .latest-track i{background:url(../images/track-circle.png) no-repeat;width:14px;height:14px}
        .back-orders {padding:0 30px;color:#666;}
        .details-item {margin-bottom:20px;}
        .details-item .code-num {margin-right:100px;}
        .details-item h3, .details-item em {margin-bottom:20px;font-size:14px;font-weight:700;}
        .form-group {padding:0 20px;}
        .form-group .form-item {overflow:hidden;margin:0 0 10px 0;line-height:30px;}
        .form-item .control-label {float:left;width:120px;text-align:right;}
        .form-item .controls {margin:0 0 0 150px;}
        .voucher-imgs {overflow:hidden;}
        .voucher-imgs li {float:left;margin-right:5px;}
        .voucher-imgs img {border:1px solid #ccc;}
        .order-table {width:100%;}
        .order-table th, .order-table td {border:1px solid #ccc;padding:10px;text-align:center;}
        .order-table .tl {text-align: left;}
        .order-table th {background:#f8f8f8;}
        .order-table .od-img img {width:50px;height:50px;border:1px solid #ddd;}
        .order-table .od-name {display:inline-block;zoom:1;*display:inline;width:200px;margin-left:10px;vertical-align:top;}
        .order-table .od-tip {font-size:12px;font-weight:500;background:#f00;padding:2px 3px;color:#fff;line-height:15px;border-radius:3px;margin-left:2px;}
        .order-table .od-code {display:block;line-height:150%;}
        .member_right{width:930px; padding:20px;background:#fff;margin-bottom:10px;}

        .memebr_title {
            height: 38px;
            line-height: 38px;
            border: none;
        }
        .memebr_title h2 {
            color: #666;
            text-indent: 20px;
            font-size: 16px;
            font-family: microsoft YaHei;
        }
        .ftx04{
            display: block;
        }
        .track-cont{
            height:20px;
            width:300px;
        }
    </style>

</head>
<body>


<#--一引入头部 <#include "/index/topnew.ftl" />  -->
<#if (topmap.temp)??>
    <#if (topmap.temp.tempId==8)>
        <#include "../index/newtop3.ftl">
    <#elseif (topmap.temp.tempId==9)>
        <#include "../index/newtop4.ftl">
    <#elseif (topmap.temp.tempId==10)>
        <#include "../index/newtop7.ftl">
    <#elseif (topmap.temp.tempId==11)>
        <#include "../index/newtop6.ftl">
    <#elseif (topmap.temp.tempId==12)>
        <#include "../index/newtop7.ftl">
    <#elseif (topmap.temp.tempId==13)>
        <#include "../index/newtop8.ftl">
    <#elseif (topmap.temp.tempId==14)>
        <#include "../index/newtop9.ftl">
    <#elseif (topmap.temp.tempId==15)>
        <#include "../index/newtop8.ftl">
    <#elseif (topmap.temp.tempId==16)>
        <#include "../index/newtop11.ftl">
    <#elseif (topmap.temp.tempId==17)>
        <#include "../index/newtop12.ftl">
    <#elseif (topmap.temp.tempId==18)>
        <#include "../index/newtop13.ftl">
    <#elseif (topmap.temp.tempId==19)>
        <#include "../index/newtop14.ftl">
    <#elseif (topmap.temp.tempId==20)>
        <#include "../index/newtop15.ftl">
    <#elseif (topmap.temp.tempId==21)>
        <#include "../index/newtop21.ftl">
    <#else>
        <#include "../index/newtop.ftl"/>
    </#if>
</#if>

<#include "newtop.ftl"/>
<div style="background: #f5f5f5;">
<div class="container pt20">
    <div class="member_box mb20">
        <#include "newleftmenu.ftl" >
        <div class="member_right fl ml10">
            <div class="memebr_title mb20">
                <h2 class="f14 fb">退款详情</h2>
            </div>

            <div class="back-orders">
                <div class="details-item">
                    <em>退单编号：</em>
                    <span class="code-num">${bOrder.backOrderCode}</span>
                    <em>订单编号：</em>
                    <span class="code-num">${order.orderCode}</span>
                </div>

                <div class="details-item">
                    <h3>跟踪信息</h3>
                    <div class="item-cont">
                        <div class="track-info">
                            <#list backOrderLogs as  backOrderLog>
                                <#if backOrderLog.backLogStatus??>
                                    <#if backOrderLog.backLogStatus == '7' || backOrderLog.backLogStatus == '8'>
                                        <p>
                                            <span class="track-date">${backOrderLog.backLogTime?string("yyyy-MM-dd HH:mm:ss")}</span>
                                            <i style="height: 59px;"></i>
                                            <span class="track-cont">退款${(bOrder.backPrice)?string("0.00")}元成功 (操作：平台)<#if backOrderLog.backRemark??>留言：<#if backOrderLog.backRemark?length gt 31><b title="${backOrderLog.backRemark}" style="font-weight: normal">${backOrderLog.backRemark?substring(0,30)}...</b><#else>${backOrderLog.backRemark}</#if></#if></span>
                                        </p>
                                    </#if>
                                    <#if backOrderLog.backLogStatus == '6'>
                                        <p>
                                            <span class="track-date">${backOrderLog.backLogTime?string("yyyy-MM-dd HH:mm:ss")}</span>
                                            <i style="height: 59px;"></i>
                                            <span class="track-cont">收货失败 (操作：平台)<#if backOrderLog.backRemark??>留言：<#if backOrderLog.backRemark?length gt 36><b title="${backOrderLog.backRemark}" style="font-weight: normal">${backOrderLog.backRemark?substring(0,35)}...</b><#else>${backOrderLog.backRemark}</#if></#if></span>
                                        </p>
                                    </#if>
                                    <#if backOrderLog.backLogStatus == '5'>
                                        <p>
                                            <span class="track-date">${backOrderLog.backLogTime?string("yyyy-MM-dd HH:mm:ss")}</span>
                                            <i style="height: 59px;"></i>
                                            <span class="track-cont">确认收货(操作：平台)<#if backOrderLog.backRemark??>留言：<#if backOrderLog.backRemark?length gt 36><b title="${backOrderLog.backRemark}" style="font-weight: normal">${backOrderLog.backRemark?substring(0,35)}...</b><#else>${backOrderLog.backRemark}</#if></#if></span>
                                        </p>
                                    </#if>
                                    <#if backOrderLog.backLogStatus == '4'>
                                        <p>
                                            <span class="track-date">${backOrderLog.backLogTime?string("yyyy-MM-dd HH:mm:ss")}</span>
                                            <i style="height: 59px;"></i>
                                            <span class="track-cont">填写快递信息(操作：顾客)<#if backOrderLog.backRemark??>留言：<#if backOrderLog.backRemark?length gt 36><b title="${backOrderLog.backRemark}" style="font-weight: normal">${backOrderLog.backRemark?substring(0,35)}...</b><#else>${backOrderLog.backRemark}</#if></#if></span>
                                        </p>
                                    </#if>
                                    <#if backOrderLog.backLogStatus == '3'>
                                        <p>
                                            <span class="track-date">${backOrderLog.backLogTime?string("yyyy-MM-dd HH:mm:ss")}</span>
                                            <i style="height: 59px;"></i>
                                            <span class="track-cont">申请审核不通过(操作：平台)<#if backOrderLog.backRemark??>留言：<#if backOrderLog.backRemark?length gt 36><b title="${backOrderLog.backRemark}" style="font-weight: normal">${backOrderLog.backRemark?substring(0,35)}...</b><#else>${backOrderLog.backRemark}</#if></#if></span>
                                        </p>
                                    </#if>
                                    <#if backOrderLog.backLogStatus == '2'>
                                        <p>
                                            <span class="track-date">${backOrderLog.backLogTime?string("yyyy-MM-dd HH:mm:ss")}</span>
                                            <i style="height: 59px;"></i>
                                            <span class="track-cont">申请审核通过(操作：平台)<#if backOrderLog.backRemark??>留言：<#if backOrderLog.backRemark?length gt 36><b title="${backOrderLog.backRemark}" style="font-weight: normal">${backOrderLog.backRemark?substring(0,35)}...</b><#else>${backOrderLog.backRemark}</#if></#if></span>
                                        </p>
                                    </#if>
                                    <#if backOrderLog.backLogStatus == '1'>
                                        <p class="latest-track">
                                            <span class="track-date">${backOrderLog.backLogTime?string("yyyy-MM-dd HH:mm:ss")}</span>
                                            <i></i>
                                            <span class="track-cont">申请退款审核(操作：顾客)<#if backOrderLog.backRemark??>留言：<#if backOrderLog.backRemark?length gt 36><b title="${backOrderLog.backRemark}" style="font-weight: normal">${backOrderLog.backRemark?substring(0,35)}...</b><#else>${backOrderLog.backRemark}</#if></#if></span>
                                        </p>
                                    </#if>
                                    <#--<#if backOrderLog.backLogStatus == '8'>-->
                                        <#--<p>-->
                                            <#--<span class="track-date">${backOrderLog.backLogTime?string("yyyy-MM-dd HH:mm:ss")}</span>-->
                                            <#--<i></i>-->
                                            <#--<span class="track-cont">同意退款(操作：平台)<#if backOrderLog.backRemark??>留言：${backOrderLog.backRemark}</#if></span>-->
                                        <#--</p>-->
                                    <#--</#if>-->
                                    <#if backOrderLog.backLogStatus == '9'>
                                        <p>
                                            <span class="track-date">${backOrderLog.backLogTime?string("yyyy-MM-dd HH:mm:ss")}</span>
                                            <i style="height: 59px;"></i>
                                            <span class="track-cont">拒绝退款(操作：平台)<#if backOrderLog.backRemark??>留言：<#if backOrderLog.backRemark?length gt 36><b title="${backOrderLog.backRemark}" style="font-weight: normal">${backOrderLog.backRemark?substring(0,35)}...</b><#else>${backOrderLog.backRemark}</#if></#if></span>
                                        </p>
                                    </#if>
                                </#if>
                            </#list>
                        </div>
                    </div>
                </div>

                <div class="details-item">
                    <h3>申请信息</h3>
                    <div class="item-cont">
                        <div class="form-group">
                            <div class="form-item">
                                <label class="control-label">是否退款：</label>
                                <div class="controls">
                                    <#if bOrder.isBack??>
                                        <#if bOrder.isBack=='1'>退货</#if>
                                        <#if bOrder.isBack=='2'>退款</#if>
                                    </#if>
                                </div>
                            </div>
                            <div class="form-item">
                                <label class="control-label">退款原因：</label>
                                <div class="controls">
                                    <#if bOrder.backReason??>
                                        <#if bOrder.backReason=='1'>不想买了</#if>
                                        <#if bOrder.backReason=='2'>收货信息有误</#if>
                                        <#if bOrder.backReason=='3'>商品未按时发货</#if>
                                        <#if bOrder.backReason=='4'>其他</#if>
                                    </#if>
                                </div>
                            </div>
                            <#--<div class="form-item">-->
                                <#--<label class="control-label">申请凭据：</label>-->
                                <#--<div class="controls">-->
                                    <#--<#if bOrder.applyCredentials??>-->
                                        <#--<#if bOrder.applyCredentials=='3'>-->
                                            <#--没有任何凭证-->
                                        <#--<#elseif bOrder.applyCredentials=='1'>-->
                                            <#--有发票-->
                                        <#--<#elseif bOrder.applyCredentials=='2'>-->
                                            <#--有质检报告-->
                                        <#--<#else>-->
                                            <#--有发票、有质检报告-->
                                        <#--</#if>-->
                                    <#--</#if>-->
                                <#--</div>-->
                            <#--</div>-->
                            <div class="form-item">
                                <label class="control-label">申请退款金额：</label>
                                <div class="controls">
                                    ${bOrder.backPrice?string('0.00')}元
                                </div>
                            </div>
                            <#--<div class="form-item">-->
                                <#--<label class="control-label">实退金额：</label>-->
                                <#--<div class="controls">-->
                                  <#--<#if order.backPrice??>-->
                                    <#--${order.backPrice!''}.00元-->
                                  <#--<#else>-->
                                     <#--0.00元-->
                                  <#--</#if>-->

                                <#--</div>-->
                            <#--</div>-->
                            <div class="form-item">
                                <label class="control-label">问题说明：</label>
                                <div class="controls">${bOrder.backRemark!''}</div>
                            </div>
                        <#if imglist??>
                            <div class="form-item">
                                <label class="control-label">上传凭证：</label>
                                <div class="controls">
                                    <ul class="voucher-imgs">

                                            <#list imglist as imgs>
                                                <#if imgs??&&imgs!=''>
                                                    <li><img src="${imgs}" alt="" style="width:30px;height:30px;"/></li>
                                                </#if>
                                            </#list>

                                    </ul>
                                </div>
                            </div>
                        </#if>

                        <table class="order-table">
                            <thead>
                            <tr>
                                <th class="tl" width="40%">退单商品</th>
                                <th>商品货号</th>
                                <th>销售单价</th>
                                <#--<th>数量</th>-->
                                <th>商品总价</th>
                            </tr>
                            </thead>
                            <tbody>
                                <#if order.orderGoodsList?? && order.orderGoodsList?size gt 0>
                                    <#list order.orderGoodsList as list>
                                    <tr>
                                        <td class="tl">
                                            <a class="od-img" href="javascript:;"><img alt="" src="${list.goodsImg}" style="width:30px;height:30px;"/></a>
                                            <p class="od-name"><a href="javascript:;"><#if list.isPresent?? && list.isPresent=="1"><span style="color: white;background-color: lightgrey;">&nbsp;赠品&nbsp;</span>&nbsp;</#if>${list.goodsInfoName}</a></p>
                                        </td>
                                        <td><span class="od-code">${list.goodsInfoItemNo!''}</span></td>
                                        <#--<td>&yen;${list.goodsInfoPrice?string('0.00')}</td>-->
                                        <#--<td>${list.goodsInfoNum!''}</td>-->
                                        <td>
                                            <#if list.countRush?? && list.countRush?number!=0>
                                                <#if list.goodsInfoNum?number gt list.countRush?number>
                                                    <span class="ftx04" style="font-family: '微软雅黑'">
                                                        ￥<#if list.goodsInfoPrice??>
                                                            ${list.goodsInfoPrice?string('0.00')}
                                                        </#if>
                                                        x <#if list.countRush??>
                                                            ${list.countRush}
                                                        </#if>
                                                    </span>
                                                    <span class="ftx04" style="font-family: '微软雅黑'">
                                                        ￥<#if list.goodsInfoOldPrice??>
                                                            ${list.goodsInfoOldPrice?string('0.00')}
                                                        </#if>
                                                        x <#if list.goodsInfoNum??>
                                                            ${list.goodsInfoNum?number-list.countRush?number}
                                                        </#if>
                                                    </span>
                                                <#else>
                                                    <span class="ftx04" style="font-family: '微软雅黑'">
                                                        ￥<#if list.goodsInfoPrice??>
                                                            ${list.goodsInfoPrice?string('0.00')}
                                                        </#if>
                                                        x <#if list.goodsInfoNum??>
                                                            ${list.goodsInfoNum}
                                                        </#if>
                                                    </span>
                                                </#if>
                                            <#else>
                                                <span class="ftx04" style="font-family: '微软雅黑'">
                                                    ￥<#if list.goodsInfoPrice??>
                                                        ${list.goodsInfoPrice?string('0.00')}
                                                    </#if>
                                                    x <#if list.goodsInfoNum??>
                                                        ${list.goodsInfoNum}
                                                    </#if>
                                                </span>
                                            </#if>
                                        </td>
                                        <td>&yen;${list.goodsInfoSumPrice?string('0.00')}</td>
                                    </tr>
                                    </#list>
                                </#if>
                            </tbody>
                        </table>


                        </div>
                    </div>
                </div>
            </div>


        </div><!-- END OF member_right -->
        <div class="cb"></div>
    </div><!-- END OF member_box -->
</div><!--container-->
</div>

<#--引入底部 <#include "/index/bottom.ftl" /> -->
<#if (topmap.temp)??>
    <#if (topmap.temp.tempId==1)>
        <#include "../index/bottom.ftl">
    <#else>
        <#include "../index/newbottom.ftl" />
    </#if>
</#if>
<script type="text/javascript" src="${basePath}/js/default.js"></script>
<script type="text/javascript" src="${basePath}/js/tab-switch.js"></script>
<script type="text/javascript" src="${basePath}/js/newapp.js"></script>
<script type="text/javascript" src="${basePath}/js/customer/findcode.js"></script>
<script type="text/javascript" src="${basePath}/js/jsOperation.js"></script>
        <script>
            $(function(){
                $('.item_title').each(function(){
                    $(this).click(function(){
                        $(this).next().toggle('fast',function(){
                            if($(this).is(':visible')){
                                $(this).prev().removeClass('up');
                                $(this).prev().addClass('down');
                            }
                            else{
                                $(this).prev().removeClass('down');
                                $(this).prev().addClass('up');
                            }
                        });
                    });
                });
            })
        </script>
</body>
</html>