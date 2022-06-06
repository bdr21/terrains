const form = document.querySelector(".msg-form");
form.addEventListener("submit", function (event) {
    // stop form submission
    event.preventDefault();
    const formData = new FormData(form);

    for (var pair of formData.entries()) {
        console.log(pair[0] + ': ' + pair[1]);
    }
    // async method call
    postData('new-message-traitement', formData , "myModal");
});

// Example POST method implementation:
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

const modalOK = document.getElementById("modalOK");
modalOK.addEventListener("click", ev => {
    let modal = document.getElementById("myModal");
    modal.classList.toggle("in");
    modal.classList.toggle("show");
    modal.style.display = "none";
});


const addToFavorites = document.getElementById("addToFavorites");
addToFavorites.addEventListener("click", ev => {
    const formData = new FormData();
    formData.append("id_client", addToFavorites.dataset.client);
    formData.append("annonce", addToFavorites.dataset.annonce);

    for (var pair of formData.entries()) {
        console.log(pair[0] + ': ' + pair[1]);
    }
    // async method call
    postData('listing-details-traitement', formData , "myModalFav");
})

const modalOKFav = document.getElementById("modalOKFav");
modalOKFav.addEventListener("click", ev => {
    let modal = document.getElementById("myModalFav");
    modal.classList.toggle("in");
    modal.classList.toggle("show");
    modal.style.display = "none";
});









// const form = document.querySelector(".msg-form");
// form.addEventListener("submit", async function (event) {
//     // stop form submission
//     event.preventDefault();
//     const formData = new FormData(form);
//
//     for (var pair of formData.entries()) {
//         console.log(pair[0] + ': ' + pair[1]);
//     }
//     // async method call
//     postData('new-message-traitement', formData)
//         .then(data => {
//             console.log(data); // JSON data parsed by `data.json()` call
//         });
// });
//
// // Example POST method implementation:
// async function postData(url = '', data = {}) {
//     // Default options are marked with *
//     const response = await fetch(url+"?"+data.get("annonceId")+"&"+data.get("posterId")+"&"+
//         data.get("text"));
//     return response.text();
// }