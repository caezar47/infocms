<ul class="breadcrumb">
	<li>
		<a href="/">Главная</a> <span class="divider">/</span>
	</li>
	<li class="active">Продукция</li>
</ul>
	
<div class="boxing category-section" >
	<ul class="thumbnails">
	{foreach item=price from=$tData}
		<li class="span3" >
			<div class="thumbnail">
				<a href="?cat_id={$price.id}" title="{$price.name}" class="thumbnail">
				{if $price.img_index neq ''}
					<img src="{$price.img_index}" alt="{$price.name}" />
				{else}
					<img src="/images/inc/no-img.jpg" class="no-img" alt="" />
				{/if}
				</a>
				<h5><a href="?cat_id={$price.id}" title="{$price.name}">{$price.name}</a></h5>				
			</div>
		</li>	
	{/foreach}
	</ul>
 </div>
