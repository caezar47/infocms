{foreach item=photo name=photoIn from=$tData}
<div class="item">
	<a class="fancybox-buttons" data-fancybox-group="button" href="/{$photo.foto}" data-title="{$photo.name}"><img src="/{$photo.foto|replace:'.':'_sm.'}" alt="{$photo.name}" /></a>
</div>	
{/foreach}
