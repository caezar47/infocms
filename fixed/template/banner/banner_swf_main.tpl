{block name=template_top}{/block} 
<script LANGUAGE=JavaScript>
if(plugin){
 document.write('<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="{$banner.width}" height="{$banner.height}"><param name="movie" value="{$banner.file}"> <PARAM NAME=salign VALUE=LT><PARAM name=wmode value=opaque><param name=scale value=noborder><param name="quality" value="high">');
 document.write('<embed src="{$banner.file}" width="{$banner.width}" height="{$banner.height}" quality="high"  scale=noborder salign=LT wmode=opaque type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed></object>');
 }
else {
 document.write('<a href="{$banner.link}" target="{$banner.target}"><img src="{$banner.file2}" border="0" width="{$banner.width}" height="{$banner.height}" alt="{$banner.alt}"></a>');
}
</script>
{block name="template_bottom"}{/block}