<!-- Indicators -->
<ol class="carousel-indicators">
	{foreach item=slide key=iid from=$tData}
	<li data-target="#carousel-example-generic" data-slide-to="{$iid}" {if $iid eq '0'}class="active" {/if}></li>
	{/foreach}
</ol>

<div class="carousel-inner">	
	{foreach item=slide from=$tData}
	<div class="item">			
		<img src="/{$slide.foto}" alt="{$slide.name}">
	</div>
	{/foreach}
</div>

<!-- Controls -->
<!--
<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
	<span class="glyphicon glyphicon-chevron-left"></span>
</a>
<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
	<span class="glyphicon glyphicon-chevron-right"></span>
</a>
-->