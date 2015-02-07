{assign var=public value=$tData[0]}
<div class="boxing"><h1 class="page-header">{$public.header}</h1></div>
	{$public.content}
<div class="boxing docs-box mt">
{foreach item=doc from=$subdocs}
	<div class="boxing docs-echo">
		<a href="/public_docs/{$doc.file_name}" class="docs-link" target="_blank">{$doc.doc_name}</a>
	</div>
{/foreach}
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
<div class="boxing"><a class="btn fr" href="javascript:history.back()">Назад</a></div>   
