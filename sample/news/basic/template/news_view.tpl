<div class="news-view boxing">
	{assign var=news value=$tData[0]}
	<div class="row">
		<div class="col-xs-8">
			<time class="data" datetime="{$news.data|date_format:"%Y-%m-%e"}">{$news.data|date_format:"%e %b %Y"}</time>
			<h1 class="page-header">{$news.news_header}</h1>
			{if count($news.photo) > 0}
			<div class="news-gal row ">				
				{foreach item=photo from=$news.photo}
				<div class="gal-echo col-xs-2">
					<a href="/{$photo.img_index}" class="fancybox-buttons" data-fancybox-group="button" title="{$photo.name}">
						<img src="/{$photo.img_index|replace:'.':'_sm.'}" class="img-responsive" alt="{$photo.name}">
					</a>
				</div>	
				{/foreach} 
			</div>
			{/if}
			<div class="text">{$news.news_full}</div>
			<div class="row mt">
				<div class="col-xs-5">
					{if $prev_pub.id neq 0}
						<div class="btn-more pull-left"><a href="/novosti/{$prev_pub.url}">&larr; {$prev_pub.news_header}</a></div>
					{/if}
				</div>
				<div class="col-md-offset-2 col-xs-5">
					{if $next_pub.id neq 0}
						<div class="btn-more pull-right"><a href="/novosti/{$next_pub.url}">{$next_pub.news_header} &rarr;</a></div>
					{/if}
				</div>
			</div>
		</div>
	</div>	

</div>