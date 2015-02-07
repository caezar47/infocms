<div class="news-box boxing">
	{foreach item=news from=$tData name=news}
		<article class="news-echo mb boxing">
			{if $news.img_index neq ''}<div class="img"><img src="/{$news.img_index}" alt="{$news.news_header}"></div>{/if}
			<div class="note">
				<time datetime="{$news.data|date_format:"%e %m %Y"}">{$news.data|date_format:"%e %m %Y"}</time>
				<p class="header">{$news.news_header}</p>
				<div class="more-box"><a href="/novosti/{$news.url}">Подробнее</a></div>
			</div>								
		</article>
	{/foreach}
</div>