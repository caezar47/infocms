<div class="docs-page">
	<div class="boxing mb">{$catName.note}</div>
	<div class="boxing docs-index">
		<div class="row">
			{foreach item=doc from=$tData}
			<div class="col-xs-12 docs-echo">
				<a href="/{$doc.file}" target="_blank"><span>{$doc.name}</span></a>
			</div>
			{/foreach}
		</div>
	</div>
</div>
{$pagination}