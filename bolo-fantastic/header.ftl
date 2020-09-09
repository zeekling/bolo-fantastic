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
<style type="text/css">
.user__site {
	display: inline-block;
	height: 16px;
	line-height: 16px;
	border-bottom: 0;
	margin: 8px 5px 0 0;
	width: 16px;
}
.footer_main{
	max-width: 900px;
	margin: auto;
}
.footer{
	padding: 1rem 1.5rem 1.5rem;
}
.blog-slider__img{
	margin-left: 20px;
	width: 280px;
	height: 178px;
}
.card-normal .card .card-image img{
	margin-left: 15px;
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
					<a class="navbar-item" href="${servePath}/tags.html"  rel="section">${allTagsLabel}</a>
					<a class="navbar-item" href="${servePath}/archives.html"  rel="section">${archiveLabel}</a>
					<a class="navbar-item" href="${servePath}/links.html"  rel="section">${linkLabel}</a>
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

            </div>
        </div>
</nav>


