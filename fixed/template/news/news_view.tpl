<div class="news-page boxing">
	<div class="news-view boxing">
		{assign var=news value=$tData[0]}
		<h1 class="page-header">{$news.news_header}</h1>
		<time class="data" datetime="{$news.data|date_format:"%Y-%m-%e"}">{$news.data|date_format:"%e %m %Y"}</time>
		{$news.news_full} 		
		{if count($news.photo) > 0}
		<div class="news-gal boxing mt"> 
			<div class="row">				
				{foreach item=photo from=$news.photo}
				<div class="gal-echo col-xs-2">
					<a href="/{$photo.img_index}" class="fancybox-buttons" data-fancybox-group="button" {if $photo.name neq ''} data-toggle="tooltip" data-placement="bottom" data-title="{$photo.name}" title="{$photo.name}"{/if}>
						<img src="/{$photo.img_index|replace:'.':'_sm.'}" alt="{$photo.name}">
					</a>
				</div>	
				{/foreach} 
			</div>
		</div>
		{/if}
		<!-- <div class="boxing btn-more"><a href="javascript:history.back()">Назад</a></div> -->
		{if $prev_pub.id neq 0}
			<div class="btn-more pull-left"><a href="/novosti/{$prev_pub.url}">&larr; {$prev_pub.news_header}</a></div>
		{/if}
		
		{if $next_pub.id neq 0}
			<div class="btn-more pull-right"><a href="/novosti/{$next_pub.url}">{$next_pub.news_header} &rarr;</a></div>
		{/if}
	</div>
</div>