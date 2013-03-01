$sql=Packets::model()->findByPk($model->idpackets);
print $sql['iduser'];
____

$ords = Orders::model()->findAll('iduser=:uid', array (':uid' => $uid)); 

____


$model=Uorders::model()->find("idorders = :id AND iduser= :uid", array(":id" => $id, ":uid" => Yii::app()->user->id));

____

$sql=Yii::app()->db->createCommand(
  			  "UPDATE `inbox2pp`
					SET `idemails`='".(int)$lastid."', `idemails_ar`='".$idemails_ar."'
					WHERE `tid`= '".$tid."' "
					)->execute();


______


$balans=Yii::app()->db->createCommand(
  			
				  "SELECT `balans` FROM `user`
					WHERE `iduser`= '".Yii::app()->user->id."' "
					
				)->queryRow();
				(isset($balans['balans']))?$balans=$balans['balans']+$summa:$balans=$summa;

_____
				
