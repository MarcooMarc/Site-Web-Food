window.onload= function (){
	if (document.getElementById('order_delivery'))
	 {
		let cartValue = 0
		const trigger = document.getElementById('order_delivery');	  
		const choice = document.querySelectorAll('.hide');
	 	trigger.addEventListener('change', () => { 
			if (trigger.value == "0") {
		  		choice.forEach((event) => {
		  			event.classList.remove('d-none');
		  		})
		  		let cartValue = parseInt(document.querySelector(".order_quantities input").value) * 13 
				document.querySelector(".price").innerHTML = cartValue.toString()
			} else if (trigger.value == "1") { 
		  		choice.forEach((event) => {
		  			event.classList.remove('d-none');
		  			document.querySelectorAll('.require-activation').forEach((event) => {
		  				event.required = false
		  			})
		  		})
				let cartValue = parseInt(document.querySelector(".order_quantities input").value) * 13  + 3
				document.querySelector(".price").innerHTML = cartValue.toString()
			}
		})

		let quantities = 0
		const trigger2 =document.getElementById('order_quantities')
		trigger2.addEventListener('change', () => {
			let quantitiesValue = parseInt(document.querySelector(".order_quantities input").value)
			document.querySelector(".quantities").innerHTML = quantitiesValue.toString()
			})

		let day = "0"
		const trigger3 =document.getElementById('order_day')
		trigger3.addEventListener('change', () => {
			let day = document.getElementById('order_day').value
			document.querySelector(".day").innerHTML = day
			})

		let deliveryPlace = "0"
		const trigger4 =document.getElementById('order_delivery_place')
		trigger4.addEventListener('change', () => {
			let deliveryPlace = document.getElementById('order_delivery_place').value
			document.querySelector(".delivery_place").innerHTML = deliveryPlace
			})
	 
	} else(document.querySelector('booking_seat'))
	{
		let seat = 0
		const trigger = document.getElementById('booking_seat');	  
		trigger.addEventListener('change', () => {
			let seat = parseInt(document.querySelector(".booking_seat input").value)
			document.querySelector(".seat").innerHTML = seat.toString()

		})
	 }
}