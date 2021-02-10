<?php  require_once("includes/config.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WatchTube</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>

    <div class="signInContainer">

        <div class="column">
        
            <div class="header">
                <img src="assets/images/icons/WatchTubeLogo.png" alt="logo" title="logo">
                <h3>Sign Up</h3>
                <span>to continue to WatchTube</span>

            </div>

            <div class="loginForm">

                <form action="signUp.php" method="POST" autocomplete="off">

                    <input type="text" name="firstName" placeholder="First name" autocomplete="off" required>
                    <input type="text" name="lastName" placeholder="Last name" autocomplete="off" required>
                    <input type="text" name="username" placeholder="Username" autocomplete="off" required>
                   
                    <input type="email" name="email" placeholder="Email" autocomplete="off" required>
                    <input type="email" name="email2" placeholder="Confirm email" autocomplete="off" required>
                    
                    <input type="password" name="password" placeholder="Password" autocomplete="new-password" required>
                    <input type="password" name="password2" placeholder="Confirm password" autocomplete="new-password" required>
                    
                    <input type="submit" name="submitButton" value="SUBMIT">
                </form>
            
            </div>
        
            <a class="signInMessage" href="signIn.php">Already have an account? Sign in here!</a>
        </div>

    </div>

</body>
</html>
 