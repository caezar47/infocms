<h1 class="title-page">{$price.name}</h1>				
<ul class="breadcrumb">
	<li>
		<a href="/">Главная</a> <span class="divider">/</span>
	</li>
	<li>
		<a href="/produkcii.php">Продукция</a> <span class="divider">/</span>
	</li>

	{foreach item=bread from=$breads name=breadFOR} 
	<li><a href="?cat_id={$bread.id}">{$bread.name}</a> <span class="divider">/</span></li>		
	{/foreach}
	
	<li class="active">{$price.name}</li>
</ul>
<div class="category-item" >
	<ul class="thumbnails">	
		<li class="span3" >
			<div class="thumbnail">
				{if $price.img_index neq ''}
				<a href="/{$price.img_index}" class="fancybox-buttons thumbnail" data-fancybox-group="button" title="{$price.name}" >				
					<img src="{$price.img_index}" alt="{$price.name}" />			
				</a>
				{else}					
				<img src="/images/inc/no-img.jpg" class="no-img" alt="" />
				{/if}		
			</div>
		</li>	
	</ul>

	
		{if $price.price neq '0'}<p class="tovar-price">{$price.price} грн.</p>{/if}
		{$price.note}
		</div>
		<div class="boxing mt">
			<ul class="thumbnails">	
				{foreach item=photo from=$addPhotos}
				<li class="span3" >
					<div class="thumbnail">
						<a href="/{$photo.img_index}" class="fancybox-buttons thumbnail" data-fancybox-group="button" title="{$photo.name}" >				
							<img src="/{$photo.img_index|replace:'.':'_sm.'}" alt="{$photo.name}" />			
						</a>							
					</div>
				</li>	
				{/foreach}
			</ul>
		</div>	
	<div class="boxing"><a class="btn btn-primary fr" href="javascript:history.back()"><i class="icon-white icon-arrow-left"></i> Назад</a></div>
 </div>
