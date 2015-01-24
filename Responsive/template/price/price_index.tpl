<h1 class="title-page">{$catName.name}</h1>			
<ul class="breadcrumb">
	<li>
		<a href="/">Главная</a> <span class="divider">/</span>
	</li>
	<li>
		<a href="/katalog.php">Каталог</a> <span class="divider">/</span>
	</li>

	{foreach item=bread from=$breads name=breadFOR} 
		<!--<li><a href="?cat_id={$bread.id}">{$bread.name}</a> <span class="divider">/</span></li>-->
		{if $smarty.foreach.breadFOR.total eq 1}
			<li class="active">{$bread.name}</li>
		{else}
			{if $smarty.foreach.breadFOR.last}
				<li class="active">{$bread.name}</li>
				{else}
				<li><a href="?cat_id={$bread.id}">{$bread.name}</a> <span class="divider">/</span></li>
			{/if}
		{/if}
	{/foreach}
</ul>
	
	
<div class="category-index" >
<ul class="thumbnails">
	{foreach item=price from=$tData}
		<li class="span3" >
			<div class="thumbnail">
				<a href="?item_id={$price.id}" title="{$price.name}" class="thumbnail">
				{if $price.img_index neq ''}
					<img src="{$price.img_index}" alt="{$price.name}" />
				{else}
					<img src="/images/inc/no-img.jpg" class="no-img" alt="" />
				{/if}
				</a>
				<h5><a href="?item_id={$price.id}" title="{$price.name}">{$price.name}</a></h5>				
			</div>
		</li>	
	{/foreach}
	</ul>
 </div>
