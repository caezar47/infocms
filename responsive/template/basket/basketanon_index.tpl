<div class="boxing category-section">
	<h1 class="title-page">Корзина</h1>
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

<div class="category-section">
	<p><a href="?action=clear" >Очистить корзину</a></p>
</div>

<div class="category-section">
{literal}
<script language="JavaScript">

function makemyday(r) {
	var r1=82+r;
	r1=r1+101900;
	r1=r1+(19*1000000);
	//alert(r1);
	$('input#znanie_control_87943784').attr({'value':r1});
	}
$(document).ready(function(){
	makemyday(3);
	});

</script>
{/literal}
	
	<hr />
	<h1 >Оформление заказа</h1>
	
	<p>&nbsp;</p>
	
	<form action="?action=order" method="POST" >
		
		<input type="hidden" id="znanie_control_87943784" name="znanie_control" value="87943784" />
		
		<p>
			<label>Введите свое имя</label>
			<input type="text" name="name" />
		</p>
		
		<p>
			<label>Телефон</label>
			<input type="text" name="phone" />
		</p>
		
		<p>
			<label>E-Mail</label>
			<input type="text" name="email" />
		</p>
		
		<p>
			<label>Адрес</label>
			<input type="text" name="adr" />
		</p>
		
		<p>
			<input type="submit" value="Оформить заказ" />
		</p>
		
	</form>
</div>