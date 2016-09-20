/**
 * 文件：登录页面脚本
 * 作者：无名小强
 * 版本：v0.1
 * 版权：民盛集团
 * 日期：2016-09-19
**/
$(function(){
	
    var user = '';
    var password = '';


    //点击登录
    $('#login_btn').click(function(){
    
        //检查数据格式，如果通过则发起登录请求
        if (checkData()) {
            $('#login_tip').removeClass('text-danger').addClass('text-success').text("正在登陆中");
            $(this).attr("disabled", true).find('i').attr('class', 'icon-spinner icon-spin');
            $(this).find('span').text('稍等...');
            login();
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

        if (user === '') {
            $('#login_tip').text("民盛用户名不得为空");
            return false;
        }

        if (password === '') {
            $('#login_tip').text("密码不得为空");
            return false;
        }

        if (!checkEachFormat(user, '民盛用户名')) {
            $('#login_tip').text("民盛用户名格式不正确");
            return false;
        }

        if (!checkEachFormat(password, '密码')) {
            $('#login_tip').text("密码格式不正确，6-20位数字或字母");
            return false;
        }

        return true;
    }

    /**
     * 函数：检查每一种数据的格式
     * 输入：
     * 输出：
    **/
    function checkEachFormat(value, type) {
        var reg;
        switch (type){
            case "民盛用户名":
                reg = /^ms\d{4}$/;
                break;
            case "密码":
                reg = /^(\w){6,20}$/;
                break;
            case "姓名":
                reg = /^[\u4e00-\u9fa5]{2,10}$/;
                break;
            case "身份证号码":
                reg = /(^[1-9]\d{5}[1-2]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}(\d|X|x)$)|(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)/;
                break;
            case "手机号码":
                reg = /^(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/;
                break;
            case "电子邮箱":
                reg = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
                break;
            case "邮编":
                reg = /^\d{6}$/;
                break;
            case "地址":
                reg = /^(?=.*?[\u4E00-\u9FA5])[\dA-Za-z\u4E00-\u9FA5]+/;
                break;
            case "关系":
                reg = /^[\u4E00-\u9FA5]+$/;
                break;
            case "百分比":
                reg = /^(\d{1,2}(\.\d{1,3})?|100)$/;
                break;
            case "顺序":
                reg = /^[1-9]([0-9]+)?$/;
                break;
            case "名称":
                reg = /^[\u4e00-\u9fa5]{2,15}$/;
                break;
            case "金额":
                reg = /^([1-9][\d]{0,7}|0)(\.[\d]{1,2})?$/;
                break;

            default:
                reg = /^\w+$/;
        }
        return reg.test(value);
    }

    /**
     * 函数：登陆操作
     * 输入：
     * 输出：
    **/
    function login() {
        $.ajax({
            type: "post",
            url: "api_login.jsp",
            data : {user: user, password: password},
            dataType: "json",
            success: function(msg) {
                console.log(msg);
                // if (msg.result.toString() === "1") {
                //      location.href =  ctx +"/document/send/list";
                // }else{
                //      alert(msg.message);
                //  }
              
            }
        });
    }


});