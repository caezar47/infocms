{foreach item=section from=$tData}
<div class="pub-page boxing">
	{if $section.note neq ''}<div class="pub-cat-note boxing mb">{$section.note}</div>{/if}
	<div class="pub-index boxing">
	{foreach item=public from=$section.public}
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