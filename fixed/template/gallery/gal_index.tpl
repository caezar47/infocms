<h1 class="page-header">{$category.name}</h1>
<ul class="breadcrumb">
	<li><a href="/">Главная</a></li>
	<li><a href="/fotogalereja.php">Фотогалерея</a></li>	
	<li class="active">{$category.name}</li>
</ul>
<div class="gal-index row">
{foreach item=photo name=photoIn from=$tData}	
	<div class="gal-echo col-xs-3">
		<div class="preview">
			<a href="/{$photo.foto}" class="fancybox-buttons" data-fancybox-group="button" title="{$photo.name}" data-toggle="tooltip" data-placement="bottom">
				<img src="/{$photo.foto|replace:'.':'_sm.'}" alt="{$photo.name}" class="img-responsive" >
			</a>
		</div>
	</div>
{/foreach}
</div>
{$pagination}