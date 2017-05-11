function loginClick(event) {
  var params = {
    account: $('#account').val(),
    password: $('#password').val(),
  };
  console.log(params);
  $.ajax({
    url:'/hncm/user/user_Login.action',
    data: params,
    type:"post",
		dateType:"json",
    success: function(data) {
    	console.log(data);
    	if("0000"==data){
    		window.location.href = '/hncm/app/tableList/table.jsp'
    	}else{
    		alert("用户名或密码错误");
    	}

    },
    error:function(error){
     console.log(error);
    }
  });
}
