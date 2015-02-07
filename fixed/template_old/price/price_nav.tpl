{foreach item=price from=$tData}
	<div class="boxing nav-box-inner">
		<div class="title">{$price.name}</div>
		<div class="list">
			<ul>
				{foreach item=price_inner from=$price.price}
				<li><a {if $smarty.request.cat_id eq $price_inner.id}class="active" {/if} href="/produkcii.php?cat_id={$price_inner.id}">{$price_inner.name}</a></li>
				{/foreach}
			</ul>
		</div>
	</div>
{/foreach}

