<?php
	if(ISSET($_POST['add_guest'])){


$fullname=$_POST['fullname'];
$email=$_POST['email'];
$contactno=$_POST['contactno'];
$checkin = $_POST['date'];
$Duration=$_POST['Duration'];
$amount=$_POST['amount'];

$amounts=$Duration*$amount;


$sl=$conn->query("SELECT * FROM `guest` WHERE`email` = '$email' and 'amounts'=''")or die(mysqli_error());
$fetchs = $sl->fetch_array();
$re=$sl->num_rows;

if ($re > 0) {
echo "User with same email has Reserved a room ".$conn->error;
include 'let.php';

}else{

$sql = $conn->query("INSERT INTO `guest`(`fullname`, `email`, `contactno`, `checkIn`, `Duration`, `amounts`) VALUES ('$fullname','$email','$contactno','$checkin','$Duration',$amounts)")or die(mysqli_error()) ;


		$query = $conn->query("SELECT * FROM `guest` WHERE `fullname` = '$fullname' && `email` = '$email' && `contactno` = '$contactno'") or die(mysqli_error());
		$fetch = $query->fetch_array();

		$query2 = $conn->query("SELECT * FROM `transaction` WHERE `checkin` = '$checkin' && `room_id` = '$_REQUEST[room_id]' && `status` = 'Pending'") or die(mysqli_error());
		$row = $query2->num_rows;
		if($checkin < date("Y-m-d", strtotime('+8 HOURS'))){	
				echo "<script>alert('Must be present date')</script>";
			}else{
				if($row > 0){
					echo "<div class = 'col-md-4'>
								<label style = 'color:#ff0000;'>Not Available Date</label><br />";
							$q_date = $conn->query("SELECT * FROM `transaction` WHERE `status` = 'Pending'") or die(mysqli_error());
				while($f_date = $q_date->fetch_array()){
								echo "<ul>
										<li>	
											<label class = 'alert-danger'>".date("M d, Y", strtotime($f_date['checkin']."+8HOURS"))."</label>	
										</li>
									</ul>".$conn->error;
							}
						"</div>";
				}else{	

						if($guest_id = $fetch['guest_id']){
					// echo $guest_id = $fetch['guest_id'];
						$room_id = $_REQUEST['room_id'];
						$room_no=1;
						$extra_bed=2;



							$conn->query("INSERT INTO `transaction`(guest_id, room_id, room_no,status, days,checkin) VALUES('$guest_id', '$room_id','$room_no', 'Pending','$Duration', '$checkin')") or die("could not ".$conn->error);
							// header("location:reply_reserve.php");
							$amounts=$Duration*$amount;
							$email=$_POST['email'];

							include 'let.php';
						}else{
							echo "<script>alert('Error Javascript Exception!')</script>".$conn->error;
						}
				}	
			}	}
	}	
?>