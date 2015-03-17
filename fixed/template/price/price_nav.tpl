<div class="price-nav">
	<ul>
	{foreach item=price from=$tData}
		{if count($price.price) > 0}
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">{$price.name}</a>
			<ul class="dropdown-menu">			
				{foreach item=price_inner from=$price.price}
				<li {if $smarty.request.cat_id eq $price_inner.id}class="active" {/if}><a href="/katalog.php?cat_id={$price_inner.id}">{$price_inner.name}</a></li>
				{/foreach}
			</ul>
		</li>
		{else}
		<li {if $smarty.request.cat_id eq $price_inner.id}class="active" {/if} >
			<a href="/katalog.php?cat_id={$price.id}" >{$price.name}</a>
		</li>
		{/if}		
	{/foreach}	
	</ul>
</div> 