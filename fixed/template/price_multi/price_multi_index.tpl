<div class="category-box">
	<div class="row">
		<div class="col-xs-12">	
			<ul class="breadcrumb"> 
				<li><a href="/">Главная</a></li>
				<li><a href="/produkciya.php">Каталог</a></li>
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
			<div class="panel-header-12 sim12"><span>{$catName.name}</span></div>
		</div>

		<div class="boxing category-section">
        {if $catName.note neq ''}<div class="mb col-xs-12">{$catName.note}</div>{/if}
		{foreach item=price from=$tData}
			<div class="col-xs-6 cat-echo">
				<div class="img">
					<a href="?item_id={$price.id}" title="{$price.name}">
					{if $price.img_index neq ''}
						<img src="{$price.img_index|replace:'.':'_sm.'}" alt="{$price.name}" class="img-responsive" />
					{else}
						<img src="/images/inc/no-img.jpg" class="no-img" alt="" />
					{/if}
					</a>
				</div>
				<div class="header"><a href="?item_id={$price.id}" title="{$price.name}">{$price.name}</a></div>
			</div>	
		{/foreach}
		</div>
	</div>
</div>