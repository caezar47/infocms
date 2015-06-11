{if $category.note neq ''}<div>{$category.note}</div>{/if}
{foreach item=album from=$tData}
<div class="album-echo">
	<h3>{$album.name}</h3>
	{if $album.img_index neq ''}
	<div class="preview">
		<a href="/{$album.img_index}" class="fancybox-buttons thumbnail" data-fancybox-group="button" data-toggle="tooltip" data-placement="bottom" title="{$album.name}" data-title="{$album.name}">
			<img src="/{$album.img_index|replace:'.':'_sm.'}" alt="{$album.name}" class="img-responsive">
		</a>
	</div>
	{/if}
	{if $album.note neq ''}<div>{$album.note}</div>{/if}
	{if count($album.gallery) > 0}
	<div class="row">
	{foreach item=gallery from=$album.gallery}
		<div class="col-xs-2 gal-echo">
			<a href="/{$gallery.foto}" class="fancybox-buttons thumbnail" data-fancybox-group="button" data-toggle="tooltip" data-placement="bottom" title="{$gallery.name}" data-title="{$gallery.name}">
				<img src="/{$gallery.foto|replace:'.':'_sm.'}" alt="{$gallery.name}" class="img-responsive" />
			</a>
		</div>
	{/foreach}
	</div>
	{/if}
</div>
{/foreach}