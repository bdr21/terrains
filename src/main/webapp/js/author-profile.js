const rating_form = document.getElementById("rating_form");
rating_form.addEventListener("submit", ev => {
    ev.preventDefault();
    const formData = new FormData(rating_form);

    for (var pair of formData.entries()) {
        console.log(pair[0] + ': ' + pair[1]);
    }


    postData('rating', formData , "myModalRating");
})

const myModalOKRating = document.getElementById("myModalOKRating");
myModalOKRating.addEventListener("click", ev => {
    let modal = document.getElementById("myModalRating");
    modal.classList.toggle("in");
    modal.classList.toggle("show");
    modal.style.display = "none";
});

function postData(url = '', data = {} , modalStr = '') {
    let xmlhttp = new XMLHttpRequest();

    let donneesJson = data;
    xmlhttp.onreadystatechange = function() {
        if (this.readyState==4){
            if (this.status == 200) {
                let modal = document.getElementById(modalStr);
                modal.classList.toggle("in");
                modal.classList.toggle("show");
                modal.style.display = "block";
                modal.style.paddingRight = "17px";
            }
        }
    }
    xmlhttp.open("POST", url,true);
    // xmlhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xmlhttp.send(donneesJson);
}