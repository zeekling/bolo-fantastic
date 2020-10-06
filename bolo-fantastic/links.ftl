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
<#-- Solo - A small and beautiful blogging system written in Java. Copyright (c) 2010-present, b3log.org This program is
    free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
    warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
    details. You should have received a copy of the GNU Affero General Public License along with this program. If not,
    see <https://www.gnu.org/licenses/>. -->
<#include "../../common-template/macro-common_head.ftl">


<!DOCTYPE html>
<html>

<head>
    <@head title="${linkLabel} - ${blogTitle}">
        <link rel="stylesheet" href="https://www.zeekling.cn/cdn/css/bulma.min.css"/>
        <link rel="stylesheet" href="https://www.zeekling.cn/cdn/css/all.min.css">
        <link rel="stylesheet"
              href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}"/>
        <link rel="stylesheet" href="https://www.zeekling.cn/cdn/css/swiper.min.css">
        <script src='https://www.zeekling.cn/cdn/js/swiper.min.js'></script>
    </@head>
    <style>
        .link-body {
            margin: 10px auto;
			display:inline-block;
			vertical-align:text-top;
	        width:230px;
			text-align: center;
			background-color:#F8F8F8;
			height:160px;
            padding: 5px;
			border-radius:10px;
            border: 0;
            font-size: 100%;
            font-style: inherit;
            font-weight: inherit;
            outline: 0;
        }
		.link-avatar-div{
			width:90px;
			height:60px;
			display:inline-block;
			margin-buttom:10px;
		}
		.link-avatar-div a{
			margin:auto;
			width:90px;
			height:60px;
		}
        .link-avatar {
            display: block;
			text-align: center;
            -o-object-fit: cover;
            object-fit: cover;
            border-radius: 100%;
            width: 68px;
            height: 68px;
            margin-right: 20px;
            cursor: pointer;
            -webkit-transition: all .8s;
            transition: all .8s
        }
		.link-content{
			width:90%;
			font-size:12px;
		}
        .link-avatar:hover {
            -webkit-transform: rotate(1turn);
            transform: rotate(1turn)
        }

        .link-contain-main {
            margin-left: 58px;
            border: 0;
            font-size: 100%;
			width:90%;
            font-style: inherit;
            font-weight: inherit;
            margin: 0;
            padding-top:10px ;
            display: inline-block;
            flex-direction: column;
            justify-content: center;
            vertical-align: baseline;
        }
    </style>

    <#-- <#include "style.theme.ftl"> -->
</head>

<body class="is-3-column">
<#include "header.ftl">
<div class="card-normal">
    <section class="section">
        <div class="container">
            <div class="columns">

                <div class="column is-8-tablet is-8-desktop is-9-widescreen is-9-fullhd has-order-2 column-main"
                     style="margin-left: 10px">
                    <div class="columns">
                        <div
                                class="column is-12-tablet is-12-desktop is-12-widescreen has-order-2 column-main">
                            <div class="level">
                                <div class="columns" style="width:100%">
                                    <div
                                            class="column is-12-tablet is-12-desktop is-8-widescreen is-8-fullhd has-order-2 column-main">
                                        <div class="card widget">
                                            <div class="card-content">
                                                <h3 class="menu-label">
                                                    ${linkLabel}
                                                </h3>

                                                <div>
                                                    <#list links as link>
                                                        <div class="link-body">
                                                            <div class="link-avatar-div">
                                                                <a href="${link.linkAddress}" rel="nofollow"
                                                                   target="_blank">
                                                                    <img alt="${link.linkDescription}"
                                                                         src="${link.linkIcon}"
                                                                         class="link-avatar">
                                                                </a>
                                                            </div>
                                                            <div class="link-contain-main">
                                                                <div class="link-meta">
                                                                    <div itemprop="author"
                                                                         class="link-author">
                                                                        <a href="${link.linkAddress}"
                                                                           rel="nofollow"
                                                                           target="_blank"
                                                                           title="${link.linkTitle}"
                                                                           class="author-name">${link.linkTitle}</a>
                                                                    </div>

                                                                </div>
                                                                <div itemprop="description"
                                                                     class="link-content">
                                                                    ${link.linkDescription}
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </#list>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div
                                            class="column is-4-tablet is-4-desktop  is-hidden-touch is-hidden-desktop-only is-4-widescreen is-4-fullhd   has-order-3 column-right <%= sticky_class(position) %>">
                                        <#include "side-right.ftl">


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <#include "side.ftl">
            </div>

        </div>
    </section>
</div>


<a id="back-to-top" title="返回顶部" href="javascript:"><i class="fas fa-chevron-up"></i></a>
<!-- 博客底部-->
<ins class="adsbygoogle"
     style="display:block;height:90px;width:728px;margin:auto;text-align:center;"
	 data-ad-client="ca-pub-1331219010215317"
	 data-ad-slot="2801313884"
	 data-full-width-responsive="true">
</ins>
<script>
	(adsbygoogle = window.adsbygoogle || []).push({});
</script>
<#include "footer.ftl">
</body>

</html>
