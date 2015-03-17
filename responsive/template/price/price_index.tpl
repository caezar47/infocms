<div class="price-page">
	<h1 class="page-header">{$category.name}</h1>			
	<ul class="breadcrumb">
		<li>
			<a href="/">Главная</a> 
		</li>
		<li>
			<a href="/katalog.php">Каталог</a>
		</li>
		{foreach item=bread from=$breads name=breadFOR} 
			{if $smarty.foreach.breadFOR.total eq 1}
				<li class="active">{$bread.name}</li>
			{else}
				{if $smarty.foreach.breadFOR.last}
					<li class="active">{$bread.name}</li>
					{else}
					<li><a href="?cat_id={$bread.id}">{$bread.name}</a></li>
				{/if}
			{/if}
		{/foreach}
	</ul>
	{if $category.note neq ''}
	<div class="price-cat-note">{$category.note}</div>
	{/if}
	<div class="price-index row" >
	{foreach item=price from=$tData}
		<div class="price-echo col-xs-3">
			<a href="?item_id={$price.id}" title="{$price.name}">
				<span class="preview">					
					{if $price.img_index neq ''}
						<img src="{$price.img_index|replace:'.':'_sm.'}" alt="{$price.name}" class="ing-responsive" />
					{else}
						<img src="/images/inc/panel-no-img.jpg" class="ing-responsive" alt="" />
					{/if}
					</a>
				</span>				
				<h5 class="header">{$price.name}</h5>
			</a>				
		</div>	
	{/foreach}
	</div>
</div>