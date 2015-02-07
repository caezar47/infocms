<div class="category-box">
	<div class="row">
		<div class="col-xs-12">	
			<ul class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li><a href="/produkciya-en.php">Catalog</a></li> 
				{foreach item=bread from=$breads name=breadFOR} 
					{if $smarty.foreach.breadFOR.total eq 1}
						<li class="active">{$bread.name_en}</li>
					{else}
						{if $smarty.foreach.breadFOR.last}
							<li class="active">{$bread.name_en}</li>
							{else}
							<li><a href="?cat_id={$bread.id}">{$bread.name_en}</a></li>
						{/if}
					{/if}
				{/foreach}
			</ul>
			<div class="panel-header-12 sim12"><span>{$catName.name_en}</span></div>
		</div>

		<div class="boxing category-section">
        
        {if $catName.note_en neq ''}<div class="mb col-xs-12">{$catName.note_en}</div>{/if}
		{foreach item=price from=$tData}
		{if $price.name_en neq ''}	
			<div class="col-xs-6 cat-echo">
				<div class="img">
					<a href="?item_id={$price.id}" title="{$price.name_en}">
					{if $price.img_index neq ''}
						<img src="{$price.img_index|replace:'.':'_sm.'}" alt="{$price.name_en}" class="img-responsive" />
					{else}
						<img src="/images/inc/no-img.jpg" class="no-img" alt="" />
					{/if}
					</a>
				</div>
				<div class="header"><a href="?item_id={$price.id}" title="{$price.name_en}">{$price.name_en}</a></div>
			</div>
		{/if}	
		{/foreach}
		</div>
	</div>
</div>