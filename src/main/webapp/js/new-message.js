const form = document.querySelector(".msg-form");
form.addEventListener("submit", function (event) {
    // stop form submission
    event.preventDefault();
    const formData = new FormData(form);
    // formData.append("annonceId", document.getElementById("annonceId").value);
    // formData.append("receiverId", document.getElementById("receiverId").value);
    // formData.append("text", document.getElementById("atbdp-contact-message").value);

    for (var pair of formData.entries()) {
        console.log(pair[0] + ': ' + pair[1]);
    }
    // async method call
    postData('new-message-traitement', formData);
});

// Example POST method implementation:
function postData(url = '', data = {}) {
    let xmlhttp = new XMLHttpRequest();

    let donneesJson = data;
    xmlhttp.onreadystatechange = function() {
        if (this.readyState==4){
            console.log(this);
        }
    }
    xmlhttp.open("POST", url,true);
    // xmlhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xmlhttp.send(donneesJson);
}













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