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
<style type="text/css">
.halo-comment .comment-textarea textarea{
	display:block;
}
.tags_bigger .tag{
   font-size:13px;
}
.user__site {
	display: inline-block;
	height: 16px;
	line-height: 16px;
	border-bottom: 0;
	margin: 8px 5px 0 0;
	width: 16px;
}

.blog-slider__img{
	margin-left: 20px;
	width: 280px;
	height: 178px;
}
.card-normal .card .card-image img{
	margin-left: 13px;
}
#search,#search-m{
	box-shadow: none;
	border: 1px solid #e1e8ed;
	border-radius: 5px;
	box-sizing: border-box;
	color:#657786;
	resize: vertical;
	height:30px;
}

.vditor-tooltipped {
	border: none !important;
}
.vditor-toolbar{
	padding-left: 15px !important;
}
.vditor-reset{
	background-color:white !important;
}
.emoji{
	width:20px;
}
.media-comment .media-content {
	max-width: 170px;
	overflow: hidden;
	max-height: 90px;
}
.halo-comment {
   min-width: 300px;
}
.blog-slider__content{
	font-size: 12px;
}
.archive-year .fa-chevron-down, .archive-year .fa-chevron-up {
  background-position: 54px -84px;
  cursor: pointer;
  height: 16px;
  background-repeat: no-repeat;
}
#archiveSide .archive-year {
  color: #a12f08ff;
  font-weight: bold;
  height: 18px;
  line-height: 18px;
  list-style: none;
}

</style>
<nav class="navbar navbar-main  is-paddingless ">
    <div class="container ">
        <div class="navbar-brand transparent">
            <a class="navbar-item navbar-logo" href="${servePath}" rel="start">
                <img src="${faviconURL}" alt="${blogTitle!}" height="28"/>
                &nbsp;${blogTitle!}
            </a>
            <span class="navbar-burger burger" data-target="navMenu">
                    <span></span>
                    <span></span>
                    <span></span>
                </span>
        </div>
        <div id="navMenu" class="navbar-menu transparent">
            <div class="navbar-start transparent">
                <div class="navbar-start">
                    <#list pageNavigations as page>
                        <a class="navbar-item" href="${page.pagePermalink}" target="${page.pageOpenTarget}"
                           rel="section">
                            <#if page.pageIcon !=''><img class="page-icon" src="${page.pageIcon}"></#if>
                            ${page.pageTitle}
                        </a>
                    </#list>
                </div>
            </div>
            <div class="navbar-end">
                <#if interactive == "on">
                    <#if isLoggedIn>
                        <a class="navbar-item" href="${servePath}/admin-index.do#main" title="${adminLabel}">
                            ${adminLabel}
                        </a>
                        <a class="navbar-item" href="${logoutURL}">
                            ${logoutLabel}
                        </a>
                    <#else>
                        <a class="navbar-item" href="${servePath}/start">
                            ${startToUseLabel}
                        </a>
                    </#if>
                </#if>
            </div>
        </div>
</nav>


