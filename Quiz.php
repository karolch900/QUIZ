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
h1{
    background-color: gray;
}
#wstep{
    background-color: white;
}
</style>

<body>

<div id="container">
    <div id="wstep">
    <div><h1>Witaj w Quizie dotyczącym Filmowania</h1></div>
    <form method="post">
    <legend>Podaj swoje Imię</legend>
    <input type="text" name="imie" value="">
    <input type="submit" name="submit" value="wyślij">
    </form>
    

    <?php
        $polaczenie = mysqli_connect('localhost', 'root', '', 'quizdb');
        if(isset($_POST['submit'])){
        $insertsql = "INSERT INTO `person` (`PersonID`, `man`) VALUES (NULL, '".$_POST['imie']."')";
        if ($polaczenie->query($insertsql)){
            echo "Zapisano";
        } else {
            echo "Nie zapisano";
        }
        $result = mysqli_query($polaczenie, $insertsql);

                if($result){
                    echo " dane prawidłowo";
                } else {
                    echo "Błąd dodawania rekordu";
                }
                }
    ?>
   
    <?php 
    
    $connection = mysqli_connect("localhost","root","","quizdb");
    if(mysqli_connect_errno()){
        echo "Failed connection" . mysqli_connect_error();
        exit;
    }
    $result = mysqli_query($connection,"SELECT * FROM quiz");
    if (isset($_POST['submit'])) {
       
    if ($result) {
        echo '<form action="result.php" method="post">'; 
        echo '<br>'
    ?>
    </div>
    <?php
        while ($row = mysqli_fetch_array($result)) {
        
        echo "<hr>";
        echo $row["quizID"] . " " . $row["question"];
        echo "<br>";
        echo '<label><input type="radio" name="odp_' . $row['quizID'].'" value="'. $row["choice1"].'"/>' . $row["choice1"]; 
        echo '<label><input type="radio" name="odp_' . $row['quizID'].'" value="'. $row["choice2"].'"/>' . $row["choice2"];
        echo '<label><input type="radio" name="odp_' . $row['quizID'].'" value="'. $row["choice3"].'"/>' . $row["choice3"];
        echo "<br>";
        
    }

    echo "<br><br>";
    echo '<input type="text" name="imie" placeholder="Podaj swój pseudonim" required />';
    echo "<input type='submit' name='submit1' value='Wyślij i sprawdź swoje odpowiedzi'>";
    echo "</form>";

    $result -> free_result();
    }
    }

    mysqli_close($connection);





    ?>
</div>
</body>
</html>