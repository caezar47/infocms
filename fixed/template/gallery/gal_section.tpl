<div class="gal-page">
	<div class="row gal-section">
		{foreach item=photo from=$tData}
		<div class="gal-echo col-xs-3">
			<div class="preview">
				<a href="?gal_id={$photo.id}" title="{$photo.name}">
				{if $photo.img_index neq ''} 			
					<img src="/{$photo.img_index}" alt="{$photo.name}" class="img-responsive" />			
				{else}
					<img src="/images/inc/no-img.jpg" alt="" title="" class="img-responsive" />
				{/if}
				</a>
			</div>
			<div class="header"><a href="?gal_id={$photo.id}" title="{$photo.name}">{$photo.name}</a></div>
		</div>	
		{/foreach} 
	</div>
</div>