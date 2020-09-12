<?php
include_once('koneksi.php');


$query = "SELECT * FROM listKata";


$get = mysqli_query($connect, $query);

$data = array();

if(mysqli_num_rows($get) > 0){

    while($row = mysqli_fetch_assoc($get)){
        $data[] = $row;

    }

    set_response(true,"Data ditemukan", $data);


}else{
    set_response(false,"Data tidak ditemukan", $data);

}

function set_response($isSucces, $message, $data){
    $result = array(
        'isSuccess' => $isSucces,
        'message' => $message,
        'data' => $data
    );
    echo json_encode($result);
}

?>