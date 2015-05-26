<div class="gal-page boxing">
	<h1 class="page-header">{$category.name}</h1>
	<ul class="breadcrumb">
		<li><a href="/">Главная</a></li>
		<li><a href="/fotogalereja.php">Фотогалерея</a></li>
		{foreach item=bread from=$breadcrumb name=breadFOR} 
			{if $smarty.foreach.breadFOR.total eq 1}
				<li class="active">{$bread.name}</li>
			{else}
				{if $smarty.foreach.breadFOR.last}
					<li class="active">{$bread.name}</li>
					{else}
					{if $bread.id eq '1'}
					{else}
					<li><a href="/fotogalereja.php?gal_id={$bread.id}">{$bread.name}</a></li>
					{/if}
				{/if}
			{/if}
		{/foreach}
	</ul>
	<div class="gal-index boxing">
		<div class="row">
		{foreach item=photo name=photoIn from=$tData}	
			<div class="gal-echo col-lg-3 col-md-3 col-sm-3 col-xs-12">
				<div class="preview">
					<a href="/{$photo.foto}" class="thumbnail fancybox-buttons" data-fancybox-group="button" data-title="{$photo.name}" title="{$photo.name}" data-toggle="tooltip" data-placement="bottom">
						<img src="/{$photo.foto|replace:'.':'_sm.'}" alt="{$photo.name}" class="img-responsive" >
					</a>
				</div>
			</div>
		{/foreach}
		</div>
	</div>
</div>