{if count($addPhotos) > 0}
<div class="row">
	<div class="col-xs-12">	
		<div id="carousel-example-generic" class="carousel slide en" data-ride="carousel">
			<div class="carousel-inner">	
				{foreach item=photo from=$addPhotos}
				<div class="item">
					<img src="{$photo.img_index}" alt="">
				</div>
				{/foreach}
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>

	</div>						
	<div class="clearfix"></div>
</div>
{/if}
<div class="category-box {if count($addPhotos) eq 0}mt{/if}">
	<div class="row">
		<div class="col-xs-12">	
			<ul class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li><a href="/produkciya.php">Catalog</a></li>
				{foreach item=bread from=$breads name=breadFOR} 
				<li><a href="?cat_id={$bread.id}">{$bread.name_en}</a></li>		
				{/foreach}				
				<li class="active">{$price.name_en}</li>
			</ul>
		</div>

		<div class="boxing category-item">
			<div class="col-xs-4 navigation">
				<div class="panel-header-4 sim12"><span>Catalog</span></div>
				<ul>
					{foreach item=i name=left_menu from=$left_menu}
					<li class="{$i.class}" ><a href="{$i.url}">{$i.name}</a></li>
					{/foreach}
				</ul>
			</div>
			<div class="col-xs-8 cat-echo-inner">				
				<div class="panel-header-12 sim12"><span>{$price.name}</span></div>
				<div class="note">
					<ul class="nav nav-tabs">
						{foreach item=opt name=menuFE from=$price.options}
						{if $opt.en neq '' || $opt.opt_id eq '1' || $opt.opt_id eq '2' }
							<li {if $smarty.foreach.menuFE.index==0}class="active"{/if}><a href="#charact{$opt.id}" data-toggle="tab">{$opt.opt_en}</a></li>
						{/if}
						{/foreach}
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
						{foreach item=opt name=optionFE from=$price.options}
						<div class="tab-pane {if $smarty.foreach.optionFE.index==0}active{/if}" id="charact{$opt.id}">
							{if $opt.opt_id eq '2'}
								<div class="row">
								{foreach item=photo name=gallery from=$galPhotos}
								<div class="col-xs-3 photo-echo">
									<a href="/{$photo.img_index}" class="fancybox-buttons" data-fancybox-group="button-gal" data-title="{$photo.name}">
										<img src="/{$photo.img_index|replace:'.':'_sm.'}" class="img-responsive" alt="{$photo.name}">
									</a>
								</div>
								{/foreach}
								</div>
							{elseif $opt.opt_id eq '1'}
								<div class="row">
								{foreach item=photo name=exter from=$exPhotos}
								<div class="col-xs-3 photo-echo">
									<a href="/{$photo.img_index}" class="fancybox-buttons" data-fancybox-group="button-ex" data-title="{$photo.name}">
										<img src="/{$photo.img_index|replace:'.':'_sm.'}" class="img-responsive" alt="{$photo.name}">
									</a>
								</div>
								{/foreach}
								</div>
							{else}
								{if $opt.file_en neq '' && $opt.opt_id eq '4'}
									<p><a href="/{$opt.file_en}" >Скачать приложение</a></p>
								{/if}
								{if $opt.en neq '' }
									{$opt.en}
								{/if}
							{/if}
						</div>
						{/foreach}
					</div>
				</div>
			</div>	
		</div>
	</div>
</div>