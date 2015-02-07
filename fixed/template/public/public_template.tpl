{assign var=public value=$tData[0]}
<div class="boxing"><h1 class="page-header">{$public.header}</h1></div> 
{$public.content}
<div class="boxing docs-box mb">
	<div class="row">
		{foreach item=doc from=$subdocs}
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 docs-echo">
			<a href="/{$doc.file}" class="docs-icon" target="_blank">скачать</a>
			<a href="/{$doc.file}" class="docs-link" target="_blank">{$doc.name}</a>
		</div>
		{/foreach}
	</div>
</div>
<div class="boxing mt"> 
	<div class="row">			
		{foreach item=photo from=$subphoto}
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
<div class="boxing"><a class="btn btn-defualt fr" href="javascript:history.back()">Назад</a></div>   
