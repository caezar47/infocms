<div class="boxing">{$catName.note}</div>
<div class="boxing docs-box">
	<div class="row">
		{foreach item=doc from=$tData}
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 docs-echo">
			<a href="/{$doc.file}" class="docs-icon" target="_blank">скачать</a>
			<a href="/{$doc.file}" class="docs-link" target="_blank">{$doc.name}</a>
		</div>
		{/foreach}
	</div>
</div>