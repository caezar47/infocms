<div class="news-page boxing">
	<div class="news-view boxing">
		{assign var=news value=$tData[0]}
		<h1 class="page-header">{$news.news_header}</h1>
		<time class="data" datetime="{$news.data|date_format:"%Y-%m-%e"}">{$news.data|date_format:"%e %m %Y"}</time>
		{$news.news_full} 

		<div class="news-gal boxing mt"> 
			<div class="row">				
				{foreach item=photo from=$news.photo}
				<div class="gal-echo col-xs-2">
					<a href="/{$photo.img_index}" class="fancybox-buttons" data-fancybox-group="button" title="{$photo.name}">
						<img src="/{$photo.img_index|replace:'.':'_sm.'}" alt="{$photo.name}">
					</a>
				</div>	
				{/foreach} 
			</div>
		</div>
		<div class="boxing btn-more"><a href="javascript:history.back()">Назад</a></div>
	</div>
</div>