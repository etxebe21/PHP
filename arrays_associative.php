<?php

$mago['name'] = "Pako";
$mago['health'] = 93;
$mago['life']   = 45;
$mago['age']   = 114;

$mago2['name'] = "Manolo";
$mago2['health'] = 12;
$mago2['life']   = 76;
$mago2['age']   = 45;

$magos[0] = $mago;
$magos[1] = $mago2;


// foreach($mago as $value)
// {
//     echo $value;
//     echo "<br>";
// }

//Pintamos magos

$i = 1;

foreach($magos as $mago)
{
    echo "Mago $i<hr>";
    $i++;

    foreach($mago as $attr)
    {
        echo $attr;
        echo "<br>";
    }

    echo "<br>";

    foreach($mago as $key => $attr)
    {
        echo  $key . " : " . $attr;
        echo "<br>";
    }



}