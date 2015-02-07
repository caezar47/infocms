{foreach item=price from=$tData}
<div class="col-xs-4 item-echo">
	<div class="img">
		<a href="/produkciya-en.php?cat_id={$price.id}" title="{$price.name_en}">
		{if $price.img_index neq ''}
			<img src="{$price.img_index}" alt="{$price.name_en}" class="img-responsive" />
		{else}
			<img src="/images/inc/no-img.jpg" class="no-img" alt="" />
		{/if}
		</a>
	</div>
	<div class="link"><a href="/produkciya-en.php?cat_id={$price.id}" title="{$price.name_en}">{$price.name_en}</a></div>
</div>	
{/foreach}
