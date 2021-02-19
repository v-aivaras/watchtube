<?php
require_once("includes/header.php");
require_once("includes/classes/Account.php");
require_once("includes/classes/FormSanitizer.php");
require_once("includes/classes/Constants.php");
require_once("includes/classes/SettingsFormProvider.php");

if(!User::isLoggedIn()) {
    header("Location: signIn.php");
}

$formProvider = new SettingsFormFormProvider();
?>

<div class="settingContainer column">

    <div class="formSection">

        <?php
            echo $formProvider->createUserDetailsForm();

        ?>

    </div>

    <div class="formSection">

        <?php
            echo $formProvider->createPasswordForm();

        ?>

        </div>
</div>