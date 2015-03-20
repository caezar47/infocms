{assign var=public value=$tData[0]}
<div class="pub-page boxing">
	<h1 class="page-header">{$public.header}</h1>
	<div class="pub-view boxing">
		{$public.content}
		<div class="pub-docs boxing mb">
			<div class="row">
				{foreach item=doc from=$subdocs}
				<div class="docs-echo col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<a href="/public_docs/{$doc.file_name}" class="docs-icon" target="_blank"><span>{$doc.doc_name} (скачать)</span></a>
				</div>
				{/foreach}
			</div>
		</div>

		<div class="pub-gal boxing mt"> 
			<div class="row">			
				{foreach item=photo from=$subphoto}
				<div class="gal-echo col-lg-2 col-md-2 col-sm-2 col-xs-2 mb">
					<a href="/{$photo.img_index}" class="fancybox-buttons" data-fancybox-group="button" title="{$photo.name}">
						<img src="/{$photo.img_index|replace:'.':'_sm.'}" alt="{$photo.name}">
					</a>
				</div>	
				{/foreach} 
			</div>
		</div>
		<!-- <div class="btn-more boxing"><a href="javascript:history.back()">Назад</a></div> -->
		
		{if $prev_pub.id neq 0}
			<div class="btn-more pull-left"><a href="/nasha-voda/{$prev_pub.url}">&larr; {$prev_pub.header}</a></div>
		{/if}
		
		{if $next_pub.id neq 0}
			<div class="btn-more pull-right"><a href="/nasha-voda/{$next_pub.url}">{$next_pub.header} &rarr;</a></div>
		{/if}
	</div>
</div>   
