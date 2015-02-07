{foreach item=docs from=$tData}
	<a href="?doc_id={$docs.id}" style="font-size:16px; line-height:30px; font-weight:bold;">{$docs.name}</a><br/>
{/foreach}                                 