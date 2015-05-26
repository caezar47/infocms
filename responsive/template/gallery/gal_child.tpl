<div class="gal-page">
	<h1 class="page-header">{$category.name}</h1>
	<ul class="breadcrumb">
		<li><a href="/">Главная</a></li>
		<li><a href="/fotogalereja.php">Фотогалерея</a></li>
		<li class="active">{$category.name}</li>
	</ul>
	<div class="row gal-child">
		{foreach item=photo from=$tData}
		<div class="gal-echo col-lg-4 col-md-4 col-sm-4 col-xs-12 ">		
			<a href="?gal_id={$photo.id}" class="thumbnail" title="{$photo.name}"  data-toggle="tooltip" data-placement="bottom">			
				<span class="preview">
				{if $photo.img_index neq ''} 			
					<img src="/{$photo.img_index}" alt="{$photo.name}" class="img-responsive" />			
				{else}
					<img src="/images/inc/no-img.jpg" alt="" title="" class="img-responsive" />
				{/if}
				</span>
				<h4 class="header">{$photo.name}</h4>
			</a>
		</div>	
		{/foreach} 
	</div>
</div> 