$.ajax({
	url:'http://localhost:9292/todos/',
	type: 'GET',
	dataType: 'json',
	success:(res)=>{
		console.log(res, 'this is res')
		
		})
	},
	error:(err)=>{
		console.log(res, 'error')
	}

})