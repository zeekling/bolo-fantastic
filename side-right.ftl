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
	<div class="card-content" style="width:100%;min-width:300px">
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
                <div class="media-content">
                    <div class="content">
                        <div style="padding-top: 10px;padding-left:20px;" >
                            <a href="${article.articlePermalink}" class="">${article.articleTitle!}</a>
                        </div>
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
