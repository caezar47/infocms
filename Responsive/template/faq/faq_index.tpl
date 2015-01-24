<div class="faq-page boxing">
	<div class="faq-index boxing">
		{foreach item=faq from=$tData}
		<div class="faq-echo boxing">
			<div class="question">
				<p class="link">Вопрос:</p>
				<p class="note">{$faq.vopros}</p>
				<div class="header"><time class="data" datetime="{$news.data|date_format:"%Y-%m-%e"}">{$faq.data|date_format:"%e %m %Y"}</time>, {$faq.fio}</div>
			</div>
			<div class="answer">
				<p class="link">Ответ:</p>
				<div class="note">{$faq.otvet}</div>
			</div>
		</div>
		{/foreach}
	</div>
</div>