<?php
// 本类由系统自动生成，仅供测试用途
class PubAction extends Action {
	public function index(){
		/*
		if(!isset($_POST['APP_MOBILE_KEY'])){
        	return json_encode(array("returnCode" => 21302));
		}
		
		if(!isset($_POST['DWZ'])){
        	return json_encode(array("returnCode" => 21504));
		}

		$receiveData = array(
			'APP_MOBILE_KEY' => $_POST['APP_MOBILE_KEY'],
			'DWZ' => $_GET('r'),
			'uid' => isset($_POST['uid']) ? $_POST['uid'] : "");
		*/
		// FOR TEST
		$receiveData = array(
			'APP_MOBILE_KEY' => md5("VERSION1.0.2013.12.04"),
			'link' => "CBA",
			'uid' => 1);

		if(!in_array($receiveData['APP_MOBILE_KEY'], C('APP_MOBILE_KEY'))){
			return json_encode(array("returnCode" => 21302));
		}

		$tbPub = M('pub');
		//二维码是否存在
		$pubData = $tbPub->where(array("link" => $receiveData['link']))->find();
		if(!$pubData){
			return json_encode(array("returnCode" => 21102));
		}

		//二维码是否有内容
		if($pubData['type']){
			if($receiveData['uid'] == $pubData['uid'] || $pubData['encrypt'] == 0){
				return json_encode(array("returnCode" => 30003, "returnData" => $pubData['data']));
			} else {
				// 提示输入密码,查看加密内容
				return json_encode(array("returnCode" => 30000));
			}
		} else {
			//如果二维码没有内容
			if($receiveData['uid']==""){
				// 提示登陆上传内容
				return json_encode(array("returnCode" => 30001, "returnData" => $receiveData['link']));
			} else {
				// 提示可以上传
				return json_encode(array("returnCode" => 30002, "returnData" => $receiveData['link']));
			}
		}

	}
}