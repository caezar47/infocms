<ul class="nav">	
	{foreach item=item from=$menu_tree.structure[0]}
		{if count($menu_tree.structure[$item.id]) }			
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">{$item.name}</a>
				<ul class="dropdown-menu">
					
					{foreach item=sitem from=$menu_tree.structure[$item.id]}
					<li class="{if $sitem.id eq $menu_tree.active}active{/if} " ><a href="/{$sitem.file_name}">{$sitem.name}</a>
					{/foreach}
					
				</ul>						
		{else}			
			<li class="{if $item.id eq $menu_tree.active}active{/if} " ><a href="/{$item.file_name}">{$item.name}</a>			
		{/if}
	{/foreach}	
</ul>