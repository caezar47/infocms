{foreach name=cycle item=faq from=$tData}
<article class="faq-echo boxing mb pb">
	<div class="question boxing mb">
		<p class="q-title">Вопрос:</p>
		<p class="q-text">{$faq.vopros}</p>
		<p class="q-people">{$faq.data}, {$faq.fio}</p>
	</div>
	<div class="answer boxing">
		<p class="a-title">Ответ:</p>		
		{$faq.otvet}
	</div>
</article>
{/foreach}
