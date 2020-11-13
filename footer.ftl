<#--

    Bolo - A stable and beautiful blogging system based in Solo.
    Copyright (c) 2020, https://github.com/adlered

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<footer class="footer">
    <div class="container">
        <div class="level footer_main">
            <div class="level-start has-text-centered-mobile">
                    &copy; ${.now?string('yyyy')} ${blogTitle!} • ${onlineVisitor1Label}${onlineVisitorCnt}
					<br>
					${footerContent}
					<br>
                    Powered by <a href="https://doc.stackoverflow.wiki/web/#/7?page_id=87" target="_blank">Bolo</a>
					Theme ${skinDirName}
            </div>
                <div class="field has-addons is-flex-center-mobile has-mt-5-mobile is-flex-wrap is-flex-middle">
					<#--
                    <#include "../../common-template/macro-user_site.ftl"/>
					<@userSite dir="n"/>
					-->
                </div>
            </div>
        </div>
    </div>
</footer>
<script type="text/javascript" src="${staticServePath}/js/lib/jquery/jquery.min.js" charset="utf-8"></script>
<script src="${staticServePath}/js/lib/compress/pjax.min.js"></script>
<script src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/skins/${skinDirName}/js/common${miniPostfix}.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/skins/${skinDirName}/js/layer.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/skins/${skinDirName}/js/lazyload.js?${staticResourceVersion}"></script>
<script type="text/javascript" >

$(document).ready(function(){
	var ctrlDown = false,ctrlKey = 17,cmdKey = 91,vKey = 86, cKey = 67;
	$(document).keydown(function(e) {
		if (e.keyCode == ctrlKey || e.keyCode == cmdKey) {
			ctrlDown = true;
		}
	}).keyup(function(e) {
		if (e.keyCode == ctrlKey || e.keyCode == cmdKey) {
			ctrlDown = false;
		}
	});
	$(document).keydown(function(e) {
		if (ctrlDown && (e.keyCode == cKey)) {
			layer.open({
				title:"${blogTitle!}友情提示",
				content:"您复制了本站内容,转载请注明来源:<a href=\"\">${blogTitle!}</a>。",
				anim:4
			});
		}
		if (ctrlDown && (e.keyCode == vKey)) console.log("Document catch Ctrl+V");
	});
	document.oncopy = function(){
		layer.open({
			title:"${blogTitle!}友情提示",
			content:"您复制了本站内容,转载请注明来源:<a href=\"\">${blogTitle!}</a>。",
			anim:4
		});
	}
	$(".gallery-item").each(function(){
		var href = $(this).attr("href");
		var img = $(this).find("img");
		var w = img.width;
		var h = img.height;
	    $(this).attr("href","javascript:void(0)");
	});
	$(".gallery-item").on("click",function(){
        var img = $(this).find("img");
		var w = img.width;
		var h = img.height;
		var url = $(img).attr("src");
		var alt = $(img).attr("alt");
		showImage(w, h, url, alt);
	});

	$(".thumbnail").each(function(){
		var src = $(this).attr("data-src");
		$(this).attr("data-original", src);
		$(this).attr("src", src);
		$(this).lazyload();
	});
});

function showImage(w, h,url, alt){
	layer.photos({
		photos:{
			"title":"${blogTitle!}图片显示",
			"id":"",
			"data":[{
				"alt":alt,
				"src":url,
				"thumb":url
			}]
		},anim: 0
	});
}
function enterSearch(event){
	if(event.keyCode == "13"){
		search();
	}

}
function qq(){
	layer.open({
		title:"${blogTitle!}友情提示",
		content:"${blogTitle!}的QQ号码是:${usite.usiteQQ}",
		anim:4
	});
}
function wechat(){
	layer.open({
		title:"${blogTitle!}友情提示",
		content:"${blogTitle!}的微信号码是:${usite.usiteWeChat}",
		anim:4
	});
}
function search(){
	var s = $("#search").val();
	if (s == ""){
		layer.open({
			title:"${blogTitle!}友情提示",
			content:"搜索关键词不能为空!",
			anim:4
		});
		return;
	}
	window.open("https://www.zeekling.cn/search?keyword=" + s);
}
function search_m(){
	var s = $("#search-m").val();
	if (s == ""){
		layer.open({
			title:"${blogTitle!}友情提示",
			content:"搜索关键词不能为空!",
			anim:4
		});
		return;
	}
	window.open("https://www.zeekling.cn/search?keyword=" + s);
}
</script>
<#include "../../common-template/label.ftl">

${plugins}
