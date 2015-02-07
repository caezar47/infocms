<div class="boxing br5 bs gal-inner">
	{foreach item=photo from=$tData}
	<div class="boxing gal-echo">
		<a href="/fotogalereja.php?gal_id={$photo.id}" title="{$photo.name}"><img src="/{$photo.img_index}" alt="{$photo.name}" title="" /></a>
	</div>
	{/foreach} 
</div>