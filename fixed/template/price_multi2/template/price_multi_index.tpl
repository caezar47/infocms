<div class="price-page">
	<h1 class="page-header">{$catName.name}</h1>
    {if $catName.note neq ''}
    <div class="mb pp-catNote">{$catName.note}</div>
    {/if}
    <table class="table table-bordered table-striped table-price">
    	<thead>
    		<tr>
    			<th>Адрес</th>
    			<th>Общая площадь дома, кв.м</th>
    			<th>Год ввода в эксплуатацию</th>
    			<th>Начало обслуживания дома</th>
    		</tr>
    	</thead>
    	<tbody>
		{foreach item=price from=$tData}
    		<tr onclick="location='?item_id={$price.id}'">
				<td>{$price.name}</td>
				<td>{if $price.area neq '' && $price.area neq 0}{$price.area}{/if}</td>
				<td>{if $price.year neq '' && $price.year neq 0}{$price.year}{/if}</td>
				<td><time class="data" datetime="{$price.date_service|date_format:"%Y-%m-%e"}">{$price.date_service|date_format:"%e-%m-%Y"}</time></td>    			
    		</tr>	
		{/foreach}
    	</tbody>
    </table>			
</div>