<?php 
while ($obj = mysql_fetch_array($r))
{ 
?>
        <div class="banner_heading"><?php echo $obj['title']; ?></div>
        <div class="banner_p">
        <p><?php echo $obj['contant']; ?></p>
        </div>   
<?php } mysql_close($dbhandle); ?>          