<div class="price-page">	
	<ul class="breadcrumb">
		<li>
			<a href="/">Главная</a>
		</li>
		<li class="active">Каталог</li>
	</ul>		
	<div class="row price-section" >
		{foreach item=price from=$tData}
		<div class="price-echo col-xs-3">
			<a href="?cat_id={$price.id}" title="{$price.name}">
				<span>
					{if $price.img_index neq ''}
						<img src="{$price.img_index}" alt="{$price.name}" />
					{else}
						<img src="/images/inc/panel-no-img.jpg" class="img-responsive" alt="" />
					{/if}
					</a>
					<h5 class="header">{$price.name}</h5>
				</span>
			</a>							
		</div>
		{/foreach}
	</div>
</div>