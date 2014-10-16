<?php
	include("config.php");
	$q = "CALL GetMenu();";
	// Run query
	$r = mysql_query($q); 
?>	
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>victoria region</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/media_quary.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" />   
<link href="css/bootstrap-responsive.css"rel="stylesheet" type="text/css" />
<link href="css/style_2.css" rel="stylesheet" type="text/css" />
<link href="css/ticker-style.css" rel="stylesheet" type="text/css" />

<!--Scripts-->
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script> 
<script src="js/jquery.ticker.js" type="text/javascript"></script>
<script src="js/site.js" type="text/javascript"></script>



<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
</head>

<body>
	<div id="container">
    	<div class="main_container">
        	<div id="header">
            	<div class="header_left">
                	<div class="header_logo">
                    	<img src="images/ROW-logo.png" width="100%">
                    </div>
                    <div class="header_logo_text">
                    	<p>victoria<span style="color:#03459E;"> region</span></p>
                    </div>
                </div>
                <div class="header_right">
                	<div class="header_right_img">
                    	<img src="images/bc_forum_map.gif">
                    </div>
                </div>
            </div>
            <div class="row-fluid">
<div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <div class="container-fluid">
		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</a>
		<div class="nav-collapse collapse">
		<ul class="nav">
			<?php 
            while ($obj = mysql_fetch_array($r))
                { 
            ?>
					<li><a href="<?php echo $obj['link']; ?>"><?php echo $obj['name']; ?></a></li>
            <?php }  mysql_close($dbhandle); ?>

			
        </ul>
    </div><!-- /.nav-collapse -->
    </div><!-- /.container -->
  </div><!-- /.navbar-inner -->
</div><!-- /.navbar -->

</div>
            
            
        </div>