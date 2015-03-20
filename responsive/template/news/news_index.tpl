<div class="news-page boxing">
	<div class="news-index boxing">
	{foreach item=news from=$tData}
		<article class="news-echo boxing">
			<div class="row">
				{if $news.img_index neq ''}
				<div class="preview col-lg-3 col-md-3 col-sm-3 col-xs-12">
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
				<div class="note col-lg-9 col-md-9 col-sm-9 col-xs-12">
				{else}				
				<div class="note col-lg-12 col-md-12 col-sm-12 col-xs-12">
				{/if}
					<time class="data" datetime="{$news.data|date_format:"%Y-%m-%e"}">{$news.data|date_format:"%e %m %Y"}</time>	
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
				</div>
			</div>
		</article>
	{/foreach}
	</div>
</div>
