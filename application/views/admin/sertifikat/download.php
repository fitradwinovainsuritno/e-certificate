<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="<?= base_url('assets/images/logo2.png') ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Certificate</title>
</head><body>
<hr style="width: 100%; ">
    <h1 style="text-align: center; font-family: 'Arial', sans-serif; margin-bottom: 5px; font-size: 45px;">SERTIFIKAT PENGHARGAAN</h1>
    <h2 style="text-align: center; font-family: 'Arial', sans-serif; margin-top: 10px; margin-bottom: 40px; font-size: 40px; "><?= $event->event_name ?></h2>
    <h3 style="text-align: center; font-family: 'Arial', sans-serif;">Diberikan kepada :</h3>
    <br>
    <h1 style="text-align: center; font-family: 'Arial', sans-serif; font-size: 50px;"><?= $sertifikat->participant_name ?></h1>
    <br>
    <hr style="width: 75%; ">
    <h2 style="text-align: center; font-family: 'Arial', sans-serif; margin-bottom: 40px; font-size: 20px;"><?= $sertifikat->certificate_text ?></h2>
    <h3 style="text-align: center; font-family: 'Arial', sans-serif;">yang di selenggarakan oleh :</h3>
    <h1 style="text-align: center; font-family: 'Arial', sans-serif;"><?= $event->organizer ?></h1>
    <hr style="width: 85%; ">
    <h3 style="text-align: center; font-family: 'Arial', sans-serif;">Lokasi :</h3>
    <h2 style="text-align: center; font-family: 'Arial', sans-serif;"><?= $event->location ?></h2>
    <p style="text-align: center; font-family: 'Arial', sans-serif;">Pada tanggal: <?= $event->event_date ?></p>
    <hr style="width: 100%; ">

</body></html>