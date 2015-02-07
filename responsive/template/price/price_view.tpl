<div class="price-page">
	<h1 class="page-header">{$price.name}</h1>				
	<ul class="breadcrumb">
		<li>
			<a href="/">Главная</a> 
		</li>
		<li>
			<a href="/katalog.php">Каталог</a>
		</li>
		{foreach item=bread from=$breads} 
		<li><a href="?cat_id={$bread.id}">{$bread.name}</a></li>
		{/foreach}	
		<li class="active">{$price.name}</li>
	</ul>
	<div class="price-view" >
		<div class="row">
			<div class="col-xs-4">				
				{if $price.img_index neq ''}
				<div class="preview">
					<a href="/{$price.img_index}" class="fancybox-buttons" data-fancybox-group="button" title="{$price.name}" >				
						<img src="{$price.img_index|replace:'.':'_sm.'}" alt="{$price.name}" class="img-responsive" />			
					</a>
				</div>
				{/if}
				<div class="price-gal">
					{foreach item=photo from=$addPhotos}
					<div class="gal-echo col-xs-2">
						<a href="/{$photo.img_index}" class="fancybox-buttons" data-fancybox-group="button" title="{$photo.name}">
							<img src="/{$photo.img_index|replace:'.':'_sm.'}" alt="{$photo.name}">
						</a>
					</div>	
					{/foreach}
				</div>
			</div>
			<div class="col-xs-8">
				{if $price.price neq '0'}
				<div class="cost">{$price.price} <span class="ruble">p</span></div>
				{/if}
				{if $price.code neq ''}
				<div class="code">Артикул: {$price.code}</div>
				{/if}
				{$price.note}
			</div>
		</div>		
		<div class="boxing btn-more"><a href="javascript:history.back()">Назад</a></div>
	</div>
</div>