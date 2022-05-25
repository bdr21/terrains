// async function sendToServlet(formData) {
//     await fetch('../add-listing-traitement',{
//         method:"POST",
//         body: formData
//     });
//     alert('The file upload with Ajax and Java was a success!');
// }

const form = document.querySelector("#main-form");
form.addEventListener("submit", async function (event) {
    // stop form submission
    event.preventDefault();
    const formData = new FormData(form);
    // formData.append("file",ajaxfile.files[0]);
    for (var pair of formData.entries()) {
        console.log(pair[0] + ': ' + pair[1]);
    }
    await fetch('../add-listing-traitement',{
        method:"POST",
        body: formData
    });
});