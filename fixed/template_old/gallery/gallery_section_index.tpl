<div class="row">
	{foreach item=photo from=$tData}
	<div class="photogal-sec-echo span3 mb">
		<div class="photo-box br5">
			<a href="?gal_id={$photo.id}" title="{$photo.name}">
			{if $photo.img_index neq ''} 			
				<img src="/{$photo.img_index}" alt="{$photo.name}" />			
			{else}
				<img class="no-img" src="/images/inc/no-img.jpg" alt="" title="" />
			{/if}
			</a>
		</div>
		<div class="photo-header"><a href="?gal_id={$photo.id}" title="{$photo.name}">{$photo.name}</a></div>
	</div>	
	{/foreach} 
</div>