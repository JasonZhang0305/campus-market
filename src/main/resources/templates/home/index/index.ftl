<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<title>${siteName!""}</title>
<link rel="icon" href="/home/imgs/favicon.ico" type="image/x-icon">
<link media="all" href="/home/css/index.css" type="text/css" rel="stylesheet">
</head>
<body>
  <#include "../common/top_header.ftl"/>
	<#include "../common/left_menu.ftl"/> 
    <div class="container">
   		<div class="main center">
                <div class="wrap-site mt20">
            <div class="recom-title"></div>
            <ul class="recom-list group">
                <#if newsList??>
                <#list newsList as news>
                <li><a href="/home/index/news_detail?id=${news.id}" target="_top">${news.title}</a></li>
                </#list>
                </#if>
            </ul>
            <#--  <#if ylrc_auth != 1>
            <p class="h6 text-white m-t-0" style="font-size:16px;margin-top:10px;" id="show-copyright">本系统由【猿来入此】发布，请认准官网获取，官网获取的正版源码提供免费更新升级！</p>
            <p class="h3 text-white m-b-0" style="font-size:16px;margin-top:10px;">正版官网地址：<a href="https://www.yuanlrc.com/product/details.html?pid=326&fuid=4" style="color:red;margin-right:20px;">https://www.yuanlrc.com</a><a href="javascript:alert('请登录后台首页后点击去广告按钮，后台验证成功后刷新一下此处的自动消失!')" class="btn btn-danger" id="order-auth-btn">点我去广告</a></p>
        	</#if>  -->
        </div>
        <div class="label-wr center clearfix">
            <div id="nav-labels">
                <button id="new_pro" class="labels" onclick="" ></button>
            </div>
           
        </div>
        
        <div class="item-list">
            <ul class="items clearfix">
            
            	<#if pageBean.content??>
            	<#list pageBean.content as goods>
            	<li class="item">
                    <a href="../goods/detail?id=${goods.id}" class="img" target="_top">
                    	<img src="/photo/view?filename=${goods.photo}" alt="${goods.name}"></a>
                    <div class="info">
                        <div class="price">${goods.sellPrice}</div>
                        <div class="name">
                            <a href="../goods/detail?id=${goods.id}" target="_top">${goods.name}</a>
                        </div>
                        <div class="department"><span>${goods.student.academy}</span></div>
                        <div class="place"><span>${goods.student.school}</span></div>
                        <#if goods.recommend == 1>
                        <div class="school"><span>推荐</span></div>
                        </#if>
                     </div>
                </li>
                </#list>
            	</#if>
            </ul>
        </div>
        <#if pageBean.total gt 0>
        <!-- 分页 开始 -->
        <div class="pages">
            <#if pageBean.currentPage == 1>
            <a class="page-arrow arrow-left" href="javascript:void(0)">首页</a>
            <#else>
            <a class="page-arrow arrow-left" href="/home/index/index?name=${name!""}&currentPage=1">首页</a>
            </#if>
            <#list pageBean.currentShowPage as showPage>
	        <#if pageBean.currentPage == showPage>
	        <a class="page-num cur" href="javascript:void(0)">${showPage}</a>
	        <#else>
            <a class="page-num " href="/home/index/index?name=${name!""}&currentPage=${showPage}">${showPage}</a>
           	</#if>
           	</#list>
           	<#if pageBean.currentPage == pageBean.totalPage>
            <a class="page-arrow arrow-right" href="javascript:void(0)">尾页</a>
            <#else>
	        <a class="page-arrow arrow-right" href="/home/index/index?name=${name!""}&currentPage=${pageBean.totalPage}">尾页</a>
	        </#if>
        </div>
        <!-- 分页 结束 -->
        </#if>
    </div>
</div>
<div class="return-to-top"><a href="#"></a></div><!--返回顶部-->
 	<#include "../common/right_menu.ftl"/>
	<#include "../common/bottom_footer.ftl"/> 
<script  src="/home/js/jquery-3.1.1.min.js"></script>
<script src="/home/js/common.js"></script>
<script src="/home/js/index.js"></script>
</html>