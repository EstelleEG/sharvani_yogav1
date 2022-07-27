/*console.log('mats')

// I catch all Divs/btns 
// divs are direct kids of btn-container
let theMats  = document.querySelectorAll('#matcontainer>.mat')
console.log(theMats) //show all color btns


for (let i = 0; i < theMats.length; i++) {   
//loop starts at 0 / i increments at each loop // i takes +1 at each loop
	let oneMat= theMats[i] // one html element
	console.log(oneMat) //show each color btn

	oneMat.addEventListener('click',function(){
		console.log(oneMat.style.backgroundColor)
		//first, i take out the class 'selectedDiv'
		// to all divs
		cleanDiv()

		//secondly
		// we only add the class 'selectedDiv'
		// on the clicked div
		oneMat.classList.add('selectedDiv')
		superChangeColor(oneMat.style.backgroundColor)
	})
}

// remove class 'selectedDiv' to all divs 
// catch all divs and remove class 'selectedDiv'
function cleanDiv(){
	for (let i = 0; i < theMats.length; i++) {
			theMats[i].classList.remove('selectedDiv') 
            //I flush all  divs
	}
}

function superChangeColor(bgColor){
	//console.log('superChangeColor')
	mat.style.backgroundColor = bgColor
}*/
