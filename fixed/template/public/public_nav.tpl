<div class="pub-nav">
	<ul>
	{foreach item=public from=$tData}
		<li><a href="/public/{$public.url}">{$public.name}</a></li>
	{/foreach}	
	</ul>
</div>