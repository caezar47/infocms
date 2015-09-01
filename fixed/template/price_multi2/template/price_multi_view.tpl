<div class="price-page">
	<ul class="breadcrumb">
		<li><a href="/">Главная</a></li>
		<li><a href="/doma.php">Дома</a></li>			
		<li class="active">{$price.name}</li>
	</ul>
	<h1 class="page-header">{$price.name}</h1>
	<div class="pp-item-echo">		
		<div class="row mb">
			<div class="col-xs-5 ">
				{literal}
				<script>
					ymaps.ready(init);
					function init () {
					    var 
					        myMap = new ymaps.Map("map", {
					            center: [{/literal}{$price.latitude}{literal}, {/literal}{$price.longitude}{literal}],
					            zoom: 16
					        }),

					        myGeoObject = new ymaps.GeoObject();

					    myMap.geoObjects
					        .add(myGeoObject)
					        .add(new ymaps.Placemark([{/literal}{$price.latitude}{literal}, {/literal}{$price.longitude}{literal}], {
					            balloonContent: '{/literal}{$price.name}{literal}'
					        }, {
					            preset: 'islands#icon',
					            iconColor: '#0095b6'
					        }));
					}
				</script>			
				{/literal}	
				<div id="map"></div>
			</div>
			<div class="col-xs-7 ">
				<table class="table table-bordered table-striped table-note">
					<tbody>
						{if $price.year neq '' && $price.year neq 0}
						<tr>
							<th>Год ввода в эксплуатацию</th>
							<td>{$price.year}</td>
						</tr>
						{/if}
						{if $price.area neq '' && $price.area neq 0}
						<tr>
							<th>Общая площадь дома, кв.м</th>
							<td>{$price.area}</td>
						</tr>
						{/if}
						{if $price.floors neq '' && $price.floors neq 0}
						<tr>
							<th>Наибольшее количество этажей</th>
							<td>{$price.floors}</td>
						</tr>
						{/if}
						{if $price.date_service neq '' && $price.date_service neq 0}
						<tr>
							<th>Начало обслуживания дома</th>
							<td><time class="data" datetime="{$price.date_service|date_format:"%Y-%m-%e"}">{$price.date_service|date_format:"%e-%m-%Y"}</time></td>
						</tr>
						{/if}
					</tbody>
				</table>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="row">
			<div class="col-xs-3 ">
				<div class="navbar-price">
					<ul>
						{foreach item=cat name=categories from=$price_items.categories}
							<li id="cat_{$cat.category_id}"><a href="javascript:void(0)" onclick="GetOptions({$price_items.price_id},{$cat.category_id}, this)">{$cat.category_name}</a></li>
						{/foreach}
					</ul>					    
				</div>
			</div>
			<div class="col-xs-9 ">	
				<div class="pp-item-note">
					<ul class="nav nav-tabs" id="price-options"></ul>
					<div class="tab-content" id="po-desc"></div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>

