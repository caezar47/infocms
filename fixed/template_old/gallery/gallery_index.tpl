<div class="boxing"><h1 class="page-header">{$category.name}</h1></div>
<ul class="breadcrumb">
	<li>
		<a href="/">Главная</a> <span class="divider">/</span>
	</li>
	<li>
		<a href="/fotogalereja.php">Фотогалерея</a> <span class="divider">/</span>
	</li>
	
	<li class="active">{$category.name}</li>
</ul>
<div class="boxing fotogal-box">
	<div class="row">
	{foreach item=photo name=photoIn from=$tData}	
		<div class="span3 mb">
			<div class="photo-box br5">
				<a href="/{$photo.foto}" class="fancybox-buttons" data-fancybox-group="button" title="{$photo.name}">
					<img src="/{$photo.foto|replace:'.':'_sm.'}" alt="{$photo.name}">
				</a>
			</div>
			{if $photo.name neq ''}<p class="photo-name">{$photo.name}</p>{/if}
		</div>
	{/foreach}
	</div>
</div>
