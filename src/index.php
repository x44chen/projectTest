<?php
	include("header.php");
?>	
        <div id="body_2">
                    
				<?php
                    include("ticker.php");
                ?>	
                
                <?php
                    include("left-sidebar.php");
                ?>	
                                
                <div class="body_middle">
                                    <?php
										include("slider.php");
									?>	
										<div class="banner_text">
                                        <?php
											include("config.php");
											$q = "CALL GetPageContant(1);";
											// Run query
											$r = mysql_query($q); 
										?>	
                                        <?php
											include("contant.php");
										?>	
                                                   
                                    </div>
                                    <div class="box_bg">
                                    
                                        <div class="news_box">
                                            <div class="news_pic">
                                                <a href="#"><img src="images/MilesquareRegional01.JPG" width="100%"></a>
                                            </div>
                                            <div class="news_date">Mon, 18/08/2014 - 14:59</div>
                                            <div class="news_headline"><a href="#">Aan add any installed gadget</a></div>
                                            <div class="news_p">
                                            Aan add any installed gadget to Sidebar. If you want, you can add multiple instances of a gadget. For example.
                                            </div>
                                            <div class="news_link"><a href="#"><img src="images/link.png"></a></div>
                                        </div>
                                        
                                        <div class="news_box">
                                            <div class="news_pic"> 
                                                <a href="#"><img src="images/bbs9562.jpg" width="100%"></a>
                                            </div>
                                            <div class="news_date">Mon, 18/08/2014 - 14:59</div>
                                            <div class="news_headline"><a href="#">Aan add any installed gadget</a></div>
                                            <div class="news_p">
                                            Aan add any installed gadget to Sidebar. If you want, you can add multiple instances of a gadget. For example.
                                            </div>
                                            <div class="news_link"><a href="#"><img src="images/link.png"></a></div>
                                        </div>
                                        
                                        
                                        
                                    </div>
                                </div>
                <?php
                    include("right-sidebar.php");
                ?>	
                       
                        
        </div>
<?php
	include("footer.php");
?>	


