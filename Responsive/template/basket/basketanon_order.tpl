<div class="boxing category-section">
	<h1 class="title-page">Оформление заказа</h1>
</div>

<div class="category-section">
	<p>Заказ оформлен и отправлен на e-mail, указанный в форме ввода.</p>
	<p>По всем возникающим вопросам наши менеджеры свяжутся с Вами.</p>
</div>

<div class="category-section">
	<div class="thumbnails" id="container">
	{foreach item=tovar from=$tovar1basket}
		<div class="boxing" >
			
			<h4>{$tovar.name}</h4>
			<p>Количество: {$tovar.amount} шт.</p>
			<p>Цена: {$tovar.cost} грн.</p>
			<p>На сумму: {$tovar.sum} грн.</p>
			
		</div>	 
	{/foreach}
	</div>
</div>