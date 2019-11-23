console.log('test assets');


window.onload= function (){
console.log(document.getElementById('order_delivery'));
	const trigger = document.getElementById('order_delivery')	  
	const choice = document.querySelectorAll('.hide');
 	trigger.addEventListener('change', () => { 
	  if (trigger.value == "0") {
	  choice.forEach((event) => {
	  	event.classList.remove('d-none');
	  })
	  }
	  else if (trigger.value == "1") { 
	  choice.forEach((event) => {
	  	event.classList.add('d-none');
	  	document.querySelectorAll('.require-activation').forEach((event) => {
	  		event.required = false
	  	});
	  })
	  }
	})
}

