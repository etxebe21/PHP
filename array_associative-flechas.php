<?php


$mago = array('name' => "Pako",
            'health' => 93,
            'life'   => 45,
            'age'    => 114);

$mago2 = array('name'    => "Manolo",
                'health' => 12,
                'life'   => 76,
                'age'    => 45);


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

    foreach($mago as $key => $attr)
    {
        echo "$key : $attr";
        echo "<br>";
    }

    echo "<br>";


}



?>