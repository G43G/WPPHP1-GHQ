var slideIndex = 0;

function showSlides()
{
    var i;
    var slides = document.getElementsByClassName("slide");

    if(slides.length) {
         for (i = 0; i < slides.length; i++)
	 {
             slides[i].style.display = "none";
         }
	    
         slideIndex++;
	    
         if(slideIndex > slides.length)
	 {
	     slideIndex = 1
	 }
	    
         slides[slideIndex-1].style.display = "block";
         setTimeout(showSlides, 3000);
    }
}

function reveal()
{
	document.getElementById("registration").style.marginLeft = "150px";
	
	var div = document.getElementById("form_right");	
	div.style.opacity = "1";
	div.style.visibility = "visible";
}
