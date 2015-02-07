<?php$base_url="";require_once("func.php");$l=db_connect();$id_page=777;echo_body($id_page);require($base_url."inc/top1.inc.php");//==?><p>
<?php
	if (preg_match('/^[a-zA-Z0-9_-]{1,}$/', $_GET['id_public'])){		$PublicseoModule->block(array ('parent' => 3));
		$PublicseoModule->view(array ('url' => $_GET['id_public']));
	} 	//echo $_GET['id_public'];
?></p><?php//==require($base_url."inc/bottom1.inc.php");?>