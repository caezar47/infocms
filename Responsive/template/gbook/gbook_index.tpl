<div class="gb-page boxing">
	<div class="gb-index boxing">
		{foreach item=gbook from=$tData}
		<div class="gb-echo boxing">
			<p class="note">{$gbook.body}</p>
			<p class="header">{$gbook.name}</p>
		</div>
		{/foreach}
	</div>
</div>