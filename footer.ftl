<#--

    Bolo - A stable and beautiful blogging system based in Solo.
    Copyright (c) 2020-present, https://github.com/bolo-blog

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
        <div class="level">
            <div class="level-start has-text-centered-mobile">
                <p class="is-size-6">
                    &copy; ${.now?string('yyyy')} ${blogTitle!}
                    Powered by <a href="https://github.com/AdlerED/bolo-solo" target="_blank">Bolo</a>
                    <br>
                    &nbsp;&nbsp;&nbsp;Theme <a href="https://github.com/csfwff/bolo-fantastic">Fantastic</a> by
                    <a href="https://github.com/csfwff" target="_blank">唐墨夏</a>
                    <br />
                </p>
            </div>
            <div class="level-end">
                <div class="field has-addons is-flex-center-mobile has-mt-5-mobile is-flex-wrap is-flex-middle">
                    <#if interactive=="on"><a href="${servePath}/search"> 搜索</a>&nbsp;•&nbsp;</#if>
                    <a href="${servePath}/tags.html">
                        ${allTagsLabel}
                    </a>&nbsp;•&nbsp;
                    <a href="${servePath}/archives.html">
                        ${archiveLabel}
                    </a>&nbsp;•&nbsp;
                    <a href="${servePath}/links.html">
                        ${linkLabel}
                    </a>&nbsp;•&nbsp;
                    <a href="${servePath}/follows.html">
                        ${followLabel}
                    </a>
                </div>
                <div class="field has-addons is-flex-center-mobile has-mt-5-mobile is-flex-wrap is-flex-middle">
                    <div>
                        ${footerContent}
                        <br>
                    </div>
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
var currentYear = (new Date()).getFullYear()
year=currentYear
$('#archiveSide li').each(function (i) {
    var currentLi = $(this)

    // hide other year month archives
    if (currentLi.data('year') !== currentYear) {
      $(this).hide()
    }

    // append year archive
    if (year !== currentLi.data('year')) {
      year = currentLi.data('year')
      currentLi.before('<li class=\'archive-year\'><div onclick=\'collapseArchive(this, ' +
        year + ')\' class=\'fa fa-chevron-down\'>' + year + '&nbsp;\u5e74</div></li>')
    }
  })

var collapseArchive = function (it, year) {
  var tag = true
  if (it.className === 'fa fa-chevron-up') {
    it.className = 'fa fa-chevron-down'
    tag = false
  } else {
    it.className = 'fa fa-chevron-up'
  }

  $('#archiveSide li').each(function () {
    var currentLi = $(this)
    // hide other year month archives
    if (currentLi.data('year') === year) {
      if (tag) {
        $(this).show()
      } else {
        $(this).hide()
      }
    }
  })
}

</script>

<#include "../../common-template/label.ftl">
    ${plugins}