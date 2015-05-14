<div class="news-index boxing">
{foreach item=news from=$tData}
	<article class="news-echo boxing">			
		<time class="data" datetime="{$news.data|date_format:"%Y-%m-%e"}">{$news.data|date_format:"%e %b %Y"}</time>	
		<h4 class="header">				
			{if $news.news_full neq ''}			
			<a href="/novosti/{$news.url}">{$news.news_header}</a>
			{else}
			{$news.news_header}
			{/if}
		</h4>
		{if $news.news_short neq ''}
		<div class="short">{$news.news_short}</div>
		{/if}
	</article>
{/foreach}
</div>