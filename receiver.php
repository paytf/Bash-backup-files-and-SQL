<?php
	$target_path = "UPLOAD_FOLDER/"; // REMEMBER TO CHMOD THIS FOLDER 777
	$target_path = $target_path . basename( $_FILES['uploadedfile']['name']);
	if ($_SERVER['REMOTE_ADDR'] == 'XXX.YYY.ZZZ.AAA'){ // REPLACE "XXX.YYY.ZZZ.AAA" WITH YOUR SERVER IP SO ONLY YOUR SERVER WILL BE ABLE TO UPLOAD TO BACKUP SERVER
		if(move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
			echo "success";
		} else {
			echo "failed";
		}
	} else {
		echo "unallowed";
	}
?>
