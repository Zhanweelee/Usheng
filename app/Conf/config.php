<?php
return array(
	// 添加数据库配置信息
	'DB_TYPE'   => 'mysql', // 数据库类型
	'DB_HOST'   => 'localhost', // 服务器地址
	'DB_NAME'   => 'usheng', // 数据库名
	'DB_USER'   => 'usheng', // 用户名
	'DB_PWD'    => '1234', // 密码
	'DB_PORT'   => 3306, // 端口
	'DB_PREFIX' => 'us_', // 数据库表前缀

	'APP_VERSION' => 20131204,

	'URL_CASE_INSENSITIVE' => true,			//true则模块名首字母支持小写

	'RETURN_CODE' => array(
			// 异常码
			"20002" => "用户不存在",
			"21132" => "注册邮箱已被占用",
			"21302" => "密码不正确",
			"21301" => "APP认证失败",
			"20101" => "该条记录不存在",
			"21504" => "参数URL是空值",
			"30000" => "查看加密内容,提示密码认证",
			// 成功码
			"30001" => "提示登陆",
			"30002" => "提示可上传",
			"30003" => "认证通过,可以查看加密内容",
		),

	'APP_MOBILE_KEY' => array(md5("VERSION1.0.2013.12.04"))
);
?>