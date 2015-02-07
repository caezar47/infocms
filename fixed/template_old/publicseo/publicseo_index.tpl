{foreach name=cycle item=public from=$tData}
<div class="boxing">
	{foreach item=price from=$public.public}
		<div class="public-echo boxing">
			<p class="public-link"><a href="/articles/{$price.url}">{$price.header}</a></p>
			{if $price.short neq ''}<p class="public-short">{$price.short}</p>{/if}
		</div>
	{/foreach}
</div>
{/foreach}

