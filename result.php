<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
#container{
    background-color: darkgray;
}
</style>
<body>
<div id="container">
    <?php 
    
        $score = 0;    
        $counter = 0;


        $polaczenie = mysqli_connect('localhost', 'root', '', 'quizdb');
        $insertsql = "INSERT INTO `score` (`ID`, `personName`, `score`) VALUES (NULL, '".$_POST['imie']."', '$score')";
        if ($polaczenie->query($insertsql)){
            echo "Zapisano";
        } else {
            echo "Nie zapisano";
        }
        $result = mysqli_query($polaczenie, $insertsql);
        
                   if($result){
                       echo " wszystkie dane prawidłowo :)";
                   } else {
                       echo "Błąd dodawania rekordu";
                   }

        if(!empty($_POST['submit1']))
        {



            $connection = mysqli_connect("localhost","root","","quizdb");
    
            if(mysqli_connect_errno()){
                echo "Failed connection" . mysqli_connect_error();
                exit;
            }
    
            
                $selsql = "SELECT * FROM quiz";
    
                $selresult = mysqli_query($connection, $selsql);

                if($selresult){
                    echo "<ul>";
                    
                    while ($row = mysqli_fetch_array($selresult)){
                        echo "<li>Pytanie numer ".$counter." : ". $row['question'] . " ";
                        if(!empty($_POST['odp_' . $row['quizID']]) && $_POST['odp_' . $row['quizID']] === $row['answer']){
                            $score++;
                            
                            if(!empty($_POST['odp_' . $row['quizID']])){
                                echo "    |    Twoja odp:". $_POST['odp_' . $row['quizID']];
                            } else {
                                echo "Nie podałeś żadnej odpowiedzi";
                            }
                        }
                        echo "    |    Odp. prawidłowa: " .$row['answer'];
                        echo "</li>";
                        $counter++;
                    }
                    echo "</ul>";
                } else {
                    echo "no results";
                }
            

        }
        
                
    ?>
    <h1>  Twój wynik: <?= $score?>/<?= $counter?></h1>
</div>
<?php

?>  
</body>
</html>