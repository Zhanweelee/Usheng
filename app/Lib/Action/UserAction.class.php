<?php
// 本类由系统自动生成，仅供测试用途
class UserAction extends Action {
    public function index(){
		$title = "Firechat";
		$this->assign("title", $title);
		$this->display();
    }

    public function login(){
        /*
        $userData = array(
            "email" => strtolower($_POST['email']),
            "password" => md5($_POST['password']));
        */
        // For Test
        $userData = array(
            "email" => strtolower("9812263@Aa.cc"),
            "password" => md5("1234"));

        $tbUser = M("user");
        $check = $tbUser->where($userData)->find();
        var_dump($check);
        if(!$check){
            return json_encode(array("returnCode" => 31302, "returnData" => ""));
        }
        return json_encode(array("returnCode" => 30001, "returnData" => ""));
    }

    public function register(){
        /*
        $userData = array(
            "uname" => "Usheng2013".str(time()%10000),
            "password" => md5($_POST['password']),
            "email" => strtolower($_POST['email']),
            "sex" => $_POST['sex'],
            "ctime" => time());
        */
        // For Test
        $userData = array(
            "uname" => "Usheng2013".time()%10000,
            "password" => md5("1234"),
            "email" => strtolower("9812263@aa.cc"),
            "sex" => 0,
            "ctime" => time());

        $tbUser = M("user");
        $check = $tbUser->where(array("email" => $userData['email']))->find();
        if($check){
            return json_encode(array("returnCode" => 21132, "returnData" => ""));
        }
        $result = $tbUser->data($userData)->add();
        var_dump($result);
        return json_encode(array("returnCode" => 30001, "returnData" => $result));
    }
}

?>