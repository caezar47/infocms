<div class="pub-page boxing">
	<h1 class="page-header">{$catName.name}</h1>
	{if $catName.note neq ''}<div class="pub-cat-note boxing mb">{$catName.note}</div>{/if}
	<div class="pub-index boxing">
	{foreach item=public from=$tData}
		<article class="pub-echo boxing">
			<div class="row">
				{if $public.img_index neq ''}
				<div class="preview col-xs-3">
					{if $public.content neq ''}
					<a href="/{$catName.url}/{$public.url}">
						<img src="/{$public.img_index}" alt="{$public.header}" title="{$public.header}" />
					</a>
					{else}
					<div>
						<img src="/{$public.img_index}" alt="{$public.header}" title="{$public.header}" />
					</div>
					{/if}
				</div>		
				<div class="note col-xs-9">
				{else}				
				<div class="note col-sm-12 col-xs-12">
				{/if}	
					<h4 class="header">
						{if $public.content}
						<a href="/{$catName.url}/{$public.url}">{$public.header}</a>
						{else}
						{$public.header}
						{/if}
					</h4>
					{if $public.short neq ''}
					<div class="short">{$public.short}</div>
					{/if}
				</div>
			</div>
		</article>
	{/foreach}
	</div>
</div>

