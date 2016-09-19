/**
 * 文件：登录页面脚本
 * 作者：无名小强
 * 版本：v0.1
 * 版权：民盛集团
 * 日期：2016-09-19
**/
$(function(){
	
    //点击登录
    $('#login_btn').click(function(){
    	
        var user = '';
        var password = '';

        //检查数据格式，如果通过则发起登录请求
        if (checkData()) {
            $('#login_tip').text("发送请求！");
        } else {
            $('#login_tip').text("密码格式不正确")
        }
        
    });

    /**
     * 函数: 检查用户名和密码输入是否满足格式条件
     * 输入: 
     * 输出: 
    **/
    function checkData() {
        user = $.trim($('#login_user').val());
        password = $.trim($('#login_password').val());

        if (user.length === 6) {
            return true;
        } else {
            return false;
        }
    }


});