{foreach item=catName from=$tData}
<div class="pub-page boxing">
	<div class="pub-cat-note boxing mb">{$catName.note}</div>
	<div class="pub-index boxing">
	{foreach item=public from=$public.public}
		<article class="pub-echo boxing">					
			<div class="note">	
				<h4 class="header">
					<a href="/articles/{$public.url}">{$public.header}</a>
				</h4>
				{if $public.short neq ''}
				<div class="short">{$public.short}</div>
				{/if}
			</div>
		</article>
	{/foreach}
	</div>
</div>
{/foreach}