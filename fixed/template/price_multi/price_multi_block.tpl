{foreach item=price from=$tData}
<div class="col-xs-4 item-echo">
	<div class="img">
		<a href="/produkciya.php?cat_id={$price.id}" title="{$price.name}">
		{if $price.img_index neq ''}
			<img src="{$price.img_index}" alt="{$price.name}" class="img-responsive" />
		{else}
			<img src="/images/inc/no-img.jpg" class="no-img" alt="" />
		{/if}
		</a>
	</div>
	<div class="link"><a href="/produkciya.php?cat_id={$price.id}" title="{$price.name}">{$price.name}</a></div>
</div>	
{/foreach}
