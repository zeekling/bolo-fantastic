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
<div class="card widget">
  <div class="card-content" style="width:100%">
    <div class="menu">
	  <div class="menu-label">
	 ${blogTitle!}-${noticeBoardLabel}
	  </div>
	  <ul class="menu-list">
	  ${noticeBoard}
	  </ul>
	</div>
  </div>
</div>
<div class="card widget">
	<div class="card-content" style="width:100%">
		<div class="menu">
			<input type="text" required="required" value="" name="s" id="search" onkeydown="enterSearch(event)">
	    	<input type="submit" id="searchsubmit" class="button" value="搜索" onclick="search()">
		</div>
	</div>
</div>
<div class="card widget">
    <div class="card-content">
        <div class="menu-label">
           ${blogTitle!}-${mostViewCountArticlesLabel}
        </div>

        <#list mostViewCountArticles as article>
            <article class="media">
                <#if article.articleImg1URL?? && article.articleImg1URL!=''>
                    <a href="${article.articlePermalink}" class="media-left">
                        <p class="image is-64x64">
                            <img class="thumbnail" src="${adminUser.userAvatar!}"width="48" height="48"
							data-src="${article.articleImg1URL!}" alt="${article.articleTitle!}">
                        </p>
                    </a>
                </#if>
                <div class="media-content">
                    <div class="content">
                        <div style="padding-top: 10px;">

                            <div class="has-text-grey is-size-7 is-uppercase">
                            <#assign viewCountStr=article.articleViewCount?string('#.###')/>
							<#if viewCountStr?length gt 3>
							    <#assign viewCount=viewCountStr?number/>
								<#assign viewCountK=viewCount/1000 />
								${viewCountK?string('#.##')}K 浏览
							<#else>
							    ${article.articleViewCount}浏览
							 </#if>
                            </div>
                        </div>
                        <a href="${article.articlePermalink}"
                           class="title has-link-black-ter is-size-6 has-text-weight-normal">${article.articleTitle!}</a>
                    </div>
                </div>
            </article>
        </#list>

    </div>
</div>
<div class="card widget">
	<div class="card-content">
		<div class="menu">
			<div class="menu-label">${blogTitle!}-${tagLabel}</div>
			<div class="field is-grouped is-grouped-multiline">
			<#list mostUsedTags as tag>
				<div class="control">
					<a class="tags has-addons" href="/tags/${tag.tagTitle?url('UTF-8')}">
						<span class="tag">${tag.tagTitle}</span>
					    <span class="tag is-grey">${tag.tagPublishedRefCount!}</span>
					</a>
				</div>
			</#list>
			</div>
		</div>
	</div>
</div>
