<div class="boxing mb">{$catName.note}</div>
<div class="boxing news-page">
{foreach item=public from=$tData}
	<article class="news-echo pb mb boxing">
		{if $public.img_index neq ''}<div class="fl news-pict"><a href="/{$catName.url}/{$public.url}"><img src="/{$public.img_index|replace:'.':'_sm.'}" alt="{$public.header}" title="" /></a></div>{/if}	
		<p class="news-link"><a href="/{$catName.url}/{$public.url}">{$public.header}</a></p>
		<p class="news-short">{$public.short}</p>
	</article>
{/foreach}
</div>