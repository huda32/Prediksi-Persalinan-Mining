<?php
    session_start();
    unset($_SESSION['prediksilahir_c45_id']);
    unset($_SESSION['prediksilahir_c45_username']);
    unset($_SESSION['prediksilahir_c45_level']);
    unset($_SESSION['prediksilahir_c45_key']);
    unset($_SESSION['prediksilahir_c45_last_login']);
    session_destroy();
    header("location:login.php");
