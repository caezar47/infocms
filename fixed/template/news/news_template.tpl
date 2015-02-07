<div class="boxing news-echo-page">
	{assign var=news value=$tData[0]}
	<h1 class="page-header">{$news.news_header}</h1>
	<p class="news-data">{$news.data|date_format:"%d-%m-%Y"}</p>
	{$news.news_full} 
	<div class="boxing mt"> 
		<div class="row">
			
			{foreach item=photo from=$news.photo}
			<div class="span3 mb">
				<div class="photo-box br5">
					<a href="/{$photo.img_index}" class="fancybox-buttons" data-fancybox-group="button" title="{$photo.name}">
						<img src="/{$photo.img_index|replace:'.':'_sm.'}" alt="{$photo.name}">
					</a>
				</div>
			</div>	
			{/foreach} 
		</div>
	</div>
	<div class="boxing"><a class="btn fr" href="javascript:history.back()">Назад</a></div>
</div>