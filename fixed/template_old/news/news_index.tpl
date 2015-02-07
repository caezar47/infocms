<div class="boxing news-page">
{foreach item=news from=$tData name=news}
	<article class="news-echo pt pb mb boxing">
		<!--{if $news.img_index neq ''}
		<div class="fl news-prev mr">
			<a href="/novosti.php?news_id={$news.id}">
				<img src="/{$news.img_index}" alt="" title="{$news.news_header}" />
			</a>
		</div>		
		<div class="fl news-text ml">
			<p class="news-data">{$news.data|date_format:"%e-%m-%Y"}</p>
			<p class="news-link"><a href="/novosti.php?news_id={$news.id}">{$news.news_header}</a></p>
			<p class="news-short-text">{$news.news_short}</p>	
		</div>
		{else}-->
		<p class="news-data">{$news.data|date_format:"%e-%m-%Y"}</p>
		<p class="news-link"><a href="/novosti/{$news.url}">{$news.news_header}</a></p>
		<p class="news-short-text">{$news.news_short}</p>	
		{/if}
	</article>
{/foreach}
</div>
