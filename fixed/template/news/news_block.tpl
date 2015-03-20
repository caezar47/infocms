<div class="news-page boxing">
	<div class="news-block boxing">
	{foreach item=news from=$tData}
		<article class="news-echo boxing">
			<div class="row">
				{if $news.img_index neq ''}
				<div class="preview col-xs-12">
					{if $news.news_full neq ''}
					<a href="/novosti/{$news.url}">
						<img src="/{$news.img_index}" alt="{$news.news_header}" title="{$news.news_header}" />
					</a>
					{else}
					<div>
						<img src="/{$news.img_index}" alt="{$news.news_header}" title="{$news.news_header}" />
					</div>
					{/if}
				</div>	
				{/if}			
				<div class="note col-xs-12">
					<time class="data" datetime="{$news.data|date_format:"%Y-%m-%e"}">{$news.data|date_format:"%e %m %Y"}</time>	
					<h4 class="header">				
						{if $news.news_full neq ''}				
						<a href="/novosti/{$news.url}">{$news.news_header}</a>
						{else}
						{$news.news_header}
						{/if}
					</h4>
					{if $news.news_short neq ''}
					<div class="short">{$news.news_short|truncate:140:"..."}</div>
					{/if}	
				</div>
			</div>
		</article>
	{/foreach}
	</div>
</div>
