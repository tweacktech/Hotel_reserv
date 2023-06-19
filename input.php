<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Rave payment Gateway</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="">
        <style type="text/css">
        	#card{
    font-size: 50px
}
        </style>
    </head>
    <body>
    	<div id="card" class="fa fa-credit-card"></div>
        <form action="pay.php" method="POST">
        	<div class="form-group">
        <label>Email</label>
        <input type="email" required="" name="email" class="form-control">
        </div>
        <br>
        <div class="form-group">
        <label>Amount</label>
        <input type="number" required="" name="amount" class="form-control">
        </div>
        <br>
        <input type="submit" name="pay" vlaue="Send Payment">

        </form>
    </body>
</html>