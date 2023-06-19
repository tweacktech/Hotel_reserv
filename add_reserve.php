<?php  include'header.php'; ?>

				<strong style="margin-left:30px;"><h3>MAKE A RESERVATION</h3></strong>
				<br />
				<?php 
					require_once 'admin/connect.php';
					$query = $conn->query("SELECT * FROM `room` WHERE `room_id` = '$_REQUEST[room_id]'") or die(mysql_error());
					$fetch = $query->fetch_array();
				?>
				<div style = "height:; width:auto;">
					<div  style = "">
						<img src = "photo/<?php echo $fetch['photo']?>" height = "300px" width = "450px">
					</div>

					<div style = "">
						<h3><?php echo $fetch['room_type']?></h3>
						<h3 style = "color:#00ff00;">Per night we charge<br><?php echo "₦".$fetch['price'].".00";?></h3>
					</div>
				</div>
<br>

0
<?php require_once'add_query_reserve.php' ;?>

				<br style = "clear:both;" />
				<div class = "well col-md-4">
					<form method = "POST" enctype = "multipart/form-data">

						<div class = "form-group">
							
							<input type = "hidden" class = "form-control" value="<?php  echo$fetch['price'];  ?>"  name = "amount" required = "required" />
						</div>
						<div class = "form-group">
							<label>FUll Name</label>
							<input type = "text" placeholder="eg. Meyor Daniel" class = "form-control" name = "fullname" required = "required" />
						</div>


						<div class = "form-group">
							<label>Email Address</label>
							<input type = "email" class = "form-control" placeholder="eg.tweacktech@gmail.com" name = "email" required = "required" />
						</div>
						
						<div class = "form-group">
							<label>Contact No</label>
							<input id="k" type = "number" min="0" placeholder="eg.09074694221" class = "form-control" name = "contactno" required = "required" />
						</div>
						<div class = "form-group">
							<label>Check in</label>
							<input type = "date" class = "form-control" name = "date" required = "required" />
						</div>
							<div class = "form-group">
							<label id="l">Duration and Price</label>
							<select id="m" name="Duration" class="form-control">
								<option>select....</option>
								<option value="1">one day</option>
								<option value="3">three days</option>
								<option value="5">Five day</option>
								<option value="7">week</option>
								<option value="30">Month</option>
							</select>
<!-- 
							<input id="m" type="number" name="Duration" class="form-control"> -->
						</div>
						<br />
						<div class = "form-group">
							<button class = "btn btn-info form-control" name = "add_guest"><i class = "glyphicon glyphicon-save"></i> Submit</button>
						</div>
					</form>
				</div>

				<div class = "col-md-4">
				
				</div>	
	 		</div>
		</div>
	</div>
		<?php include 'footer.php'; ?>


		<script >
			$(document).ready(function(){
				// $("#l").hide();
				$("#m").change(function () {
					// body...
			var me =$(this).val();
			// alert(me);
			var l="price ₦";				
					$("#l").text(l+<?php echo$fetch['price']; ?> *me);
					// $('#l').show();
				})

				});
		</script>