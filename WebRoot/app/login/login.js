function loginClick(event) {
  var params = {
    account: $('#account').val(),
    password: $('#password').val(),
  };
  $.ajax({
    url:'/hncm/user/user_Login.action',
    data: params,
    type:"post",
		dateType:"text",
    success: function(data) {
    	console.log(data);
    	if("0000"==data){
    		window.location.href = '/hncm/app/tableList/table.jsp'
    	}else{
    		alert("用户名或密码错误");
    	}

    },
    error:function(error){
      alert(error);
    }
  });
}
