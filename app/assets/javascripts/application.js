window.onload= function (){


	if (document.getElementById('order_delivery'))
	 {
		let cartValue = 0
		const trigger = document.getElementById('order_delivery');	  
		const choice = document.querySelectorAll('.hide');
		const cartBorder = document.querySelector('.cart.border');
		const jourRecuperation = document.querySelectorAll('.jour-recuperation');
		const lieuLivraison = document.querySelectorAll('.lieu-livraison');
		let choice3 = document.querySelectorAll('.hide3');
		const prixLivraison = document.querySelector('.price');
		
const btnValueUncomplete = document.querySelectorAll('.workshopUncomplete');
const btnValueComplete = document.querySelectorAll('.workshopComplete');
const trigger1 = (document.querySelector(".number").innerHTML



		let quantities = 0
		const orderQuantities =document.getElementById('order_quantities')

		orderQuantities.addEventListener('change', () => {
			let quantitiesValue = parseInt(document.querySelector(".order_quantities input").value)
			document.querySelector(".quantities").innerHTML = quantitiesValue.toString()

			let cartValue = parseInt(document.querySelector(".order_quantities input").value) * 13 
					document.querySelector(".price").innerHTML = cartValue.toString()
			if (orderQuantities.value !== null) {
				cartBorder.classList.remove('d-none');
				cartBorder.classList.add('d-block');
			}
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

		 	trigger.addEventListener('change', () => { 
				if (trigger.value === "0") {
			  		choice.forEach((event) => {
			  			event.classList.add('d-none');
			  		})
			  		lieuLivraison.forEach((event) => {
			  			event.classList.add('d-none');
			  		})
			  		choice3.forEach((event) => {
			  			event.classList.add('d-none');
			  		})		  			

				  		document.querySelectorAll('.require-activation').forEach((event) => {
				  			event.required = false;
			  			})

			  		cartValue = parseInt(document.querySelector('.price').innerText) - 3
			  		document.querySelector(".price").innerHTML = cartValue.toString()	

				} 
				else if (trigger.value === "1") { 
			  		choice.forEach((event) => {
			  			event.classList.remove('d-none');
			  		})
			  		lieuLivraison.forEach((event) => {
			  			event.classList.remove('d-none');
			  		})
			  		choice3.forEach((event) => {
			  			event.classList.remove('d-none');
			  		})

			  			document.querySelectorAll('.require-activation').forEach((event) => {
			  				event.required = true;
			  			})
					
					cartValue = parseInt(document.querySelector('.price').innerText) + 3
			  		document.querySelector(".price").innerHTML = cartValue.toString()
					
				}
				if (trigger1.value === "0 places") { 
	  	btnValueComplete.forEach((event) => {
	  		event.classList.remove('d-none');
	  	})	
	  	btnValueUncomplete.forEach((event) => {
			event.classList.add('d-none');
		})
	} 
	else if (trigger1.value != "0 places") { 

	}
}
			})



		 
	} else(document.querySelector('booking_seat'))
	{
		let seat = 0
		const trigger2 = document.getElementById('booking_seat');
		const choice4 = document.querySelectorAll('.hide4');
	  
		trigger2.addEventListener('change', () => {
		  		choice4.forEach((event) => {
		  			event.classList.remove('d-none');
		  		})
			let seat = parseInt(document.querySelector(".booking_seat input").value)
			document.querySelector(".seat").innerHTML = seat.toString()

			let price = parseInt(document.querySelector(".booking_seat input").value)
			* document.querySelector(".workshopprice").innerText
			document.querySelector(".price").innerHTML = price.toString()
		})
	 }
}

	