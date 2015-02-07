{assign var=public value=$tData[0]}
<div class="pub-page boxing">
	<h1 class="page-header">{$public.header}</h1>
	<div class="pub-view boxing">
		{$public.content}
		<div class="pub-docs boxing mb">
			<div class="row">
				{foreach item=doc from=$subdocs}
				<div class="docs-echo col-xs-12">
					<a href="/{$doc.file}" target="_blank">
					<span>{$doc.name}</span></a>
				</div>
				{/foreach}
			</div>
		</div>

		<div class="pub-gal boxing mt"> 
			<div class="row">			
				{foreach item=photo from=$subphoto}
				<div class="gal-echo col-xs-2 mb">
					<a href="/{$photo.img_index}" class="fancybox-buttons" data-fancybox-group="button" title="{$photo.name}">
						<img src="/{$photo.img_index|replace:'.':'_sm.'}" alt="{$photo.name}">
					</a>
				</div>	
				{/foreach} 
			</div>
		</div>
		<div class="btn-more boxing"><a href="javascript:history.back()">Назад</a></div>
	</div>
</div>   
