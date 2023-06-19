<?php include'header.php';?>
				<center><strong><h3>MAKE A RESERVATION</h3></strong></center>
				<?php
					require_once 'admin/connect.php';
					$query = $conn->query("SELECT * FROM `room` ORDER BY `price` ASC") or die(mysql_error());
					while($fetch = $query->fetch_array()){
				?>
				




<div class="container">
					<div class="row">
    <div class="col-sm-8" style="margin: 10px;">
    	<div class="col-sm-6">
      <img src = "photo/<?php echo $fetch['photo']?>" height = "250" width = "350"/></div>
     <div class="col-sm-2"> <h3><?php echo $fetch['room_type']?></h3>
							<h4 style = "color:#00ff00;"><?php echo "Price: ₦".$fetch['price'].".00"?></h4>
      <a style = "" href = "add_reserve.php?room_id=<?php echo $fetch['room_id']?>" class = "btn btn-info"><i class = "glyphicon glyphicon-list"></i> Reserve</a></div>
      
						
    </div>
    
  </div></div>
				<?php
					}
				?>
			</div>
		</div>
	</div>
	<?php include 'footer.php'; ?>