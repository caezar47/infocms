<div class="pub-page boxing">
	<div class="pub-cat-note boxing mb">{$catName.note}</div>
	<div class="pub-index boxing">
	{foreach item=public from=$tData}
		<article class="pub-echo boxing">
			<div class="row">
				{if $public.img_index neq ''}
				<div class="preview col-lg-3 col-md-3 col-sm-3 col-xs-12">
					{if $public.content neq ''}
					<a href="/{$catName.url}/{$public.url}">
						<img src="/{$news.img_index}" alt="{$news.news_header}" title="{$public.header}" />
					</a>
					{else}
					<div>
						<img src="/{$public.img_index}" alt="{$public.header}" title="{$public.header}" />
					</div>
					{/if}
				</div>		
				<div class="note col-lg-9 col-md-9 col-sm-9 col-xs-12">
				{else}				
				<div class="note col-lg-12 col-md-12 col-sm-12 col-xs-12">
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

