<div class="docs-page">
	<div class="docs-section">	
	{foreach item=docs from=$tData}
		<div class="docs-echo">
			<a href="?doc_id={$docs.id}">{$docs.name}</a>
		</div>		
	{/foreach}
	</div> 
</div>                                