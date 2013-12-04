<?php
class FormModel extends Model {
    // 定义自动验证
    protected $_validate    =   array(
        array('uname','require','uname need!'),
        array('password','require','password need!'),
        );
    // 定义自动完成
    protected $_auto    =   array(
        array('ctime','time',1,'function'),
        );
}
?>