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
<#-- Bolo - A stable and beautiful blogging system based in Solo. Copyright (c) 2020, https://github.com/adlered This
    program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public
    License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later
    version. This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
    implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License
    for more details. You should have received a copy of the GNU Affero General Public License along with this program.
    If not, see <https://www.gnu.org/licenses/>. -->
    <div>
        <#list articles as article>
            <#if article.articlePutTop>
                <div class="level">
                    <div class="blog-slider card">
                        <div class="blog-slider__wrp swiper-wrapper">
                            <div class="blog-slider__item swiper-slide">
							 <div class="blog-slider__img">
							    <a href="${article.articlePermalink}">
								    <img class="thumbnail" src="${adminUser.userAvatar!}" height="250" width="150"
									data-src="${article.articleImg1URL}" alt="${article.articleTitle!}"
									referrerpolicy="origin">
								</a>
						     </div>
                                <div class="blog-slider__content">
                                    <div>
                                        <span class="blog-slider__code"
                                            style="display:inline-block">${article.articleCreateDate?string("yyyy.MM.dd")}</span>
										&nbsp;浏览
										<#assign viewCountStr=article.articleViewCount?string('#.###')/>
										<#if viewCountStr?length gt 3>
										    <#assign viewCount=viewCountStr?number/>
											<#assign viewCountK=viewCount/1000 />
											    ${viewCountK?string('#.##')}K
										<#else>
										    ${article.articleViewCount}
										</#if>&nbsp;
                                        <#if article.categoryURI??>
                                            <h1 style="display:inline-block"><a class="has-link-black-ter"
                                                    href="/category/${article.categoryURI}">${article.articleCategory}</a></h1>
                                        </#if>
                                    </div>
                                    <h2 class="blog-slider__title "><a class="title is-6"
                                            href="${article.articlePermalink}">${article.articleTitle!}</a>
                                    </h2>
                                    <div class="blog-slider__text is-size-6" content="" >
                                        <#if article.articleAbstractText!?length gt 48>
                                            ${article.articleAbstractText!?substring(0, 48)} <#else>
                                                ${article.articleAbstractText!}</#if>
                                    </div>
                                    <a href="${article.articlePermalink}"
                                        class="button is-size-7 is-light">阅读更多</a>
                                </div>
                            </div>
                        </div>
                        <div class="blog-slider__pagination"></div>
                    </div>
                </div>
                <#else>
                    <div class="card">
					<!--
						 <div class="card-image">
						   <a href="${article.articlePermalink}">
						     <img class="thumbnail" src="${adminUser.userAvatar!}" height="200" width="100"
							 data-src="${article.articleImg1URL}" alt="${article.articleTitle!}"
							 referrerpolicy="origin">
						   </a>
						 </div>
						 -->
                        <div class="card-content article " id="card-content" style="width: 100%">
                            <div class="level article-meta is-size-7 is-uppercase is-mobile is-overflow-x-auto">
                                <div class="level-left">
                                    <time
                                        class="level-item has-text-grey">${article.articleCreateDate?string("yyyy.MM.dd")}</time>
										&nbsp;浏览
										<#assign viewCountStr=article.articleViewCount?string('#.###')/>
										<#if viewCountStr?length gt 3>
										    <#assign viewCount=viewCountStr?number/>
											<#assign viewCountK=viewCount/1000 />
											    ${viewCountK?string('#.##')}K
										<#else>
										    ${article.articleViewCount}
										</#if>&nbsp;
                                    <#if article.articleCategory != "">
                                       <h1 style="display:inline-block"> <a class="has-link-black-ter"
                                            href="/category/${article.categoryURI}">${article.articleCategory}</a></h1>
                                    </#if>
                                </div>
                            </div>
                            <h2 class="title is-size-5 is-size-5-mobile has-text-weight-normal">
                                <a class="has-link-black-ter" href="${article.articlePermalink}">${article.articleTitle!}</a>
                            </h2>
                            <div id="is-hidden-touch" class="content is-hidden-touch is-size-6">
                                <#if article.articleAbstractText!?length gt 128>
                                    ${article.articleAbstractText!?substring(0, 110)} <#else>
                                        ${article.articleAbstractText!}</#if>
                                <#-- ${article.articleAbstractText!?substring(0, 110)} ...... -->
                            </div>

                            <div class="level is-mobile">
                                <div class="level-start">
                                    <div class="level-item">
                                        <a class="button is-size-7 is-light"
                                            href="${article.articlePermalink}">阅读更多</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

            </#if>


        </#list>


        <div class="card card-transparent">

            <nav class="pagination is-centered" role="navigation" aria-label="pagination">
                <#if paginationCurrentPageNum !=paginationFirstPageNum>

                    <div class="pagination-previous">
                        <a class="is-flex-grow has-text-black-ter"
                            href="${path}?p=${paginationPreviousPageNum}">上一页</a>
                    </div>
                </#if>
                <#if paginationCurrentPageNum !=paginationLastPageNum>
                    <div class="pagination-next">
                        <a class="is-flex-grow has-text-black-ter"
                            href="${path}?p=${paginationNextPageNum}">下一页</a>
                    </div>
                </#if>


                <ul class="pagination-list is-hidden-mobile">
                    <#list paginationPageNums as paginationPageNum>
                        <#if paginationPageNum==paginationCurrentPageNum>
                            <li><span class="pagination-link is-current">${paginationPageNum}</span></li>
                            <#else>
                                <li><a class="pagination-link"
                                        href="${path}?p=${paginationPageNum}">${paginationPageNum}</a></li>
                        </#if>
                    </#list>
                </ul>

            </nav>
        </div>
    </div>

<style type="text/css">
.blog-slider__img {
	margin-left: 20px;
	width: 240px;
	height: 150px;
}
</style>
