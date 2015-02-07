<div class="category-box">
	<div class="row">

		<div class="col-xs-12">		
			<ul class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li class="active">Catalog</li>
			</ul>
			<div class="panel-header-12 sim12"><span>Catalog</span></div>
		</div>

		<div class="boxing category-section">
		{foreach item=price from=$tData}
			<div class="col-xs-6 cat-echo">
				<div class="img">
					<a href="?cat_id={$price.id}" title="{$price.name_en}">
					{if $price.img_index neq ''}
						<img src="{$price.img_index}" alt="{$price.name_en}" class="img-responsive" />
					{else}
						<img src="/images/inc/no-img.jpg" class="no-img" alt="" />
					{/if}
					</a>
				</div>
				<div class="header"><a href="?cat_id={$price.id}">{$price.name_en}</a></div>

			</div>	
		{/foreach}
		</div>

	</div>
</div>