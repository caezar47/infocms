<aside class="boxing reviews-box">
	<div class="boxing">
		{foreach item=gbook from=$tData}
		<article class="boxing reviews-echo mb pb">
			<p class="reviews-text">{$gbook.body}</p>
			<p class="reviews-fio">{$gbook.name}</p>
		</article>
		{/foreach}
	</div>
</aside>