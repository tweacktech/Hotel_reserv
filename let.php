<?php   
// error_reporting(0);
// if(ISSET($_POST['add_guest'])){ 
// $fullname=$_POST['fullname'];
// $email=$_POST['email'];
// $contactno=$_POST['contactno'];
// $checkin = $_POST['date'];
// $Duration=$_POST['Duration'];
// $amount=$_POST['amount'];

// $amounts=$Duration*$amount;





// // $sql = "INSERT INTO `guest`(`fullname`, `email`, `contactno`, `checkIn`, `Duration`, `amounts`) VALUES ('$fullname','$email','$contactno','$checkin','$Duration',$amounts)";

// // if ($conn->query($sql) === TRUE) {
// //     echo "New record created successfully";
// // } else {
// //     echo "Error: " . $sql . "<br>" . $conn->error;
// // }

//     //* Prepare our rave request
    $request = [
        'tx_ref' => time(),
        'amount' => $amounts,
        'currency' => 'NGN',
        'payment_options' => 'card',
        'redirect_url' => 'http://reserv.epizy.com/process.php',
        'customer' => [
            'email' => $email,
            'name' => 'Zubdev'
        ],
        'meta' => [
            'price' => $amounts
        ],
        'customizations' => [
            'title' => 'Paying for a sample product',
            'description' => 'sample'
        ]
    ];

    //* Ca;; f;iterwave emdpoint
    $curl = curl_init();

    curl_setopt_array($curl, array(
    CURLOPT_URL => 'https://api.flutterwave.com/v3/payments',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => json_encode($request),
    CURLOPT_HTTPHEADER => array(
        'Authorization: Bearer FLWSECK_TEST-e1782c9a878185e8478458f2686f28f3-X',
        'Content-Type: application/json'
    ),
    ));

    $response = curl_exec($curl);

    curl_close($curl);

    $res = json_decode($response);
    if($res->status == 'success')
    {
        $link = $res->data->link;


        $sql = $conn->query("INSERT INTO `guest`(`fullname`, `email`, `contactno`, `checkIn`, `Duration`, `amounts`) VALUES ('$fullname','$email','$contactno','$checkin','$Duration',$amounts)") or die();

        header('Location: '.$link);


    }
    else
    {
//           echo"<script type='text/javascript'>alert('We can not process your payment')

// window.location.href='reservation.php';

// </script>";

        echo"cold not".$conn->error;
      
    }
// }

?>