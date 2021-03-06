<!doctype html>
<html lang="en">
<head>
	<#assign basePath=request.contextPath>
	<meta charset="UTF-8">
	<title>找回密码</title>
    <#--shf-->
        <link rel="stylesheet" type="text/css" href="${basePath}/css/pages.css" />
	<link rel="stylesheet" type="text/css" href="${basePath}/css/jd.base.min.css"/>
	<link rel="stylesheet" type="text/css" href="${basePath}/css/jd.style.css"/>
	<#if (topmap.systembase.bsetHotline)??>
	<link rel = "Shortcut Icon" href="${(topmap.systembase.bsetHotline)!''}">
	<#else>
	<link rel = "Shortcut Icon" href="${basePath}/images/Paistore.ico">
	</#if>
    <script type="text/javascript" src="${basePath}/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="${basePath}/js/jquery.js"></script>
	<script type="text/javascript" src="${basePath}/js/app.js"></script>
	<script type="text/javascript" src="${basePath}/js/customer/findcode.js"></script>
    <script type="text/javascript" src="${basePath}/js/default.js"></script>
        <script type="text/javascript" src="${basePath}/index_960/js/app.js"></script>
        <style>
            /*shf*/
            .footer{
                border:none!important;
            }
            .rightpar{
                display: none;
            }
            .loading{
                color: rgb(255, 255, 255);
                text-align: center;
                height: 40px;
				line-height: 40px;
                width: 122px;
                font-size: 14px;
                letter-spacing: 0.5px;
                display: block;
                cursor: pointer;
                background:  #00991D url(${basePath}/images/tigger_green.gif) no-repeat 50%;
                border-radius: 3px;
                border-width: initial;
                border-style: none;
                border-color: initial;
                border-image: initial;
                background-size: 30%!important;

            }
        </style>
</head>
<body>
<input type="hidden" id="basePath" value="${basePath}"/>
<#--shf-->
<#include "../index/newheader3.ftl"/>
    <#--<#if (topmap.temp)??>-->
        <#--<#if (topmap.temp.tempId==8)>-->
            <#--<#include "../index/newtop3.ftl">-->
        <#--<#elseif (topmap.temp.tempId==9)>-->
            <#--<#include "../index/newtop4.ftl">-->
        <#--<#elseif (topmap.temp.tempId==10)>-->
            <#--<#include "../index/newtop5.ftl">-->
        <#--<#elseif (topmap.temp.tempId==11)>-->
            <#--<#include "../index/newtop6.ftl">-->
        <#--<#elseif (topmap.temp.tempId==12)>-->
            <#--<#include "../index/newtop7.ftl">-->
        <#--<#elseif (topmap.temp.tempId==13)>-->
            <#--<#include "../index/newtop8.ftl">-->
        <#--<#elseif (topmap.temp.tempId==14)>-->
            <#--<#include "../index/newheader9.ftl">-->
        <#--<#elseif (topmap.temp.tempId==15)>-->
            <#--<#include "../index/newheader10.ftl">-->
        <#--<#elseif (topmap.temp.tempId==16)>-->
            <#--<#include "../index/newheader11.ftl">-->
        <#--<#elseif (topmap.temp.tempId==17)>-->
            <#--<#include "../index/newheader12.ftl">-->
        <#--<#elseif (topmap.temp.tempId==18)>-->
            <#--<#include "../index/newheader13.ftl">-->
        <#--<#elseif (topmap.temp.tempId==19)>-->
            <#--<#include "../index/newheader14.ftl">-->
        <#--<#elseif (topmap.temp.tempId==20)>-->
            <#--<#include "../index/newheader15.ftl">-->
        <#--<#else>-->
            <#--<#include "../index/newtop.ftl"/>-->
        <#--</#if>-->
    <#--</#if>-->
    <#--<div class="n_head">-->
    	<#--<div class="container clearfix pr">-->
    		<#--<div class="n_logo fl clearfix">-->
    			<#--&lt;#&ndash;<h1 class="ml10 fl"><a href="${topmap.systembase.bsetAddress}"><img src="${topmap.systembase.bsetLogo}" style="height:45px;width:auto;"/></a></h1>&ndash;&gt;-->
    			<#--<div class="fl ml20">-->
    				<#--<a href="${basePath}/customer/index.html" class="fore1">我的${topmap.systembase.bsetName}</a>-->
    				<#--<a href="${basePath}/index.html" class="fore2">返回首页</a>-->
    			<#--</div>-->
    		<#--</div>-->
    		<#--<div class="n_menu fl">-->
    			<#--<ul class="clearfix">-->
    				<#--<li><a href="${basePath}/index.html">首页</a></li>-->
                    <#--<li><a href="${basePath}/customer/index.html">个人主页</a></li>-->
                    <#--<li class="n_hover">-->
                    	<#--<div class="pr">-->
                    		<#--<a href="#">账户中心</a>-->
                    		<#--<div class="n_menu_hide">-->
                    			<#--<a href="${basePath}/customer/myinfo.html">个人信息</a>-->
                    			<#--<a href="${basePath}/customer/securitycenter.html">账户安全</a>-->
                    			<#--<a href="${basePath}/customer/address.html">收货地址</a>-->
                    		<#--</div>-->
                    	<#--</div></li>-->
                    <#--<li><a href="${basePath}/systemmsg.html">消息中心</a></li>-->
    			<#--</ul>-->
    		<#--</div><!--n_menu&ndash;&gt;-->
    		<#--<div class="cartfd">-->
            <#--<s class="cartBanner"></s>-->
            <#--<div class="cartit">-->
                <#--<span><s></s><a href="${basePath}/myshoppingcart.html">我的购物车</a></span>-->
                <#--<strong class="cartNum">0</strong>-->
            <#--</div>-->
            <#--<div class="miniCart hide">-->
                <#--<div class="mCartBox">-->
                    <#--<div class="mcBoxTop clearfix">                        -->
                    <#--</div>-->
                    <#--<div class="mcBoxList">-->
                    <#--</div>-->
                    <#--<div class="emCartBox hide" style="display: block;">-->
                        <#--<span>购物车中还没有商品，再去逛逛吧！</span>-->
                    <#--</div>-->
                <#--</div>-->
                <#--<div class="mcGenius bmcGenius"></div>-->
                <#--<div class="mCartError">-->
                    <#--<p>正在为您加载数量！</p>-->
                <#--</div>-->
                <#--<div class="mCartHandler clearfix">-->
                    <#--<span class="mcCashier">-->
                        <#--<span class="mcTotal">-->
                            <#--<span class="mcRmb">¥</span>-->
                            <#--<span class="mcTotalFee">0.00</span>-->
                        <#--</span>-->
                        <#--<span class="mcGo"><a href="/myshoppingcart.html">结算</a></span>-->
                    <#--</span>-->
                    <#--<h3>-->
                        <#--<span class="mc_e1">购物车</span>-->
                        <#--<span class="mc_e2">共</span>-->
                        <#--<strong class="mcNumTotal">0</strong>-->
                        <#--<strong class="mcNumChecked">0</strong>-->
                        <#--<span class="mc_e2">件</span>-->
                    <#--</h3>-->
                <#--</div>-->
            <#--</div>-->
        <#--</div>-->
    	<#--</div>-->

    <#--</div>-->


    <div class="container pb50">
    	<div class="n_step">
    		<p class="title">找回密码</p>
    		<div class="n_step_con">
    			<div class="n_step3"></div>
    			<ul class="ml10 clearfix">
    				<li class="p100 prev">填写账户名</li>
    				<li class="p130 prev">验证身份</li>
    				<li class="p130 cur">设置新密码</li>
    				<li>完成</li>
    			</ul>
    		</div>
    		<div class="n_password">
    			<div class="n_item clearfix mb20">
    				<#--<span class="label fl">历史收货人姓名：</span>
    				<div class="fl">
    					<input type="text"/>
    					<div class="ne_tips hide">您输入的用户名有误</div>
    				</div>-->
    			</div>
                <div class="n_item clearfix mb20">
                    <span class="label fl">新登录密码：</span>
                    <div class="fl">
                        <input type="password" id="npwd"/>
                        <div class="col9 pt10 npwd_tip hide">密码为6-16位字母加数字的组合，不得含特殊字符</div>
                    </div>
                </div>
                <div class="n_item clearfix mb20">
                    <span class="label fl">确认密码：</span>
                    <div class="fl">
                        <input type="password" id="repwd"/>
                        <div class="col9 pt10 repwd_tip hide">密码为6-16位字母加数字的组合，不得含特殊字符</div>
                    </div>
                </div>
    			<div class="n_item clearfix mb20">
    				<span class="label fl">&nbsp;</span>
    				<div class="fl">
    					<button class="n_nextstep" id="resetpwd_btn" onclick="updatePwd();" disabled="true" style="background-color:#999999;">提交</button>
    				</div>
    			</div>
    		</div>
    	</div><!--n_step-->
    </div>
	<div class="bh-mask"></div>
	<div id="ctDia" class="bh-dialog dia0">
	    <div class="dia-tit">
	        <h4>加入收藏</h4>
	        <a class="dia-close" href="javascript:;" onclick="scls(this)"></a>
	    </div>
	    <div class="dia-cont">
	        <p style="text-align: center">请使用菜单栏或Ctrl+D进行添加！</p>
	    </div>
	    <div class="dia-btn"><a href="javascript:;" onclick="scls(this)">确定</a></div>
	</div>


<#--shf-->
<#--<div class="footer_tab">-->
    <#--<ul>-->

        <#--<li class="list1"><a href="http://www.ge960.com/channel/237.html">食品荟萃</a></li>-->
        <#--<li class="list2"><a href="http://www.ge960.com/channel/239.html">饮品总汇</a></li>-->
        <#--<li class="list3"><a href="http://www.ge960.com/channel/241.html">购物中心</a></li>-->
        <#--<li class="list4"><a href="http://www.ge960.com/channel/243.html">大药房</a></li>-->

    <#--</ul>-->
<#--</div>-->

     <#if (topmap.temp)??>
		<#if (topmap.temp.tempId==1)>
			<#include "../index/bottom.ftl">
		<#else>
		    <#include "../index/newbottom.ftl" />
		</#if>
	</#if>

<script type="text/javascript">
 document.onkeydown=function(event){
	var e = event || window.event || arguments.callee.caller.arguments[0];
  	if(e && e.keyCode==13){ // enter 键
     	updatePwd();
    }
};
</script>
</body>
</html>