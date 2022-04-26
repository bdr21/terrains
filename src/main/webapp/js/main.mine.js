function fillEditForm(editBtn) {
    let tr = editBtn.parentElement.parentElement;
    document.getElementById("ef-uid").value = tr.cells[1].innerHTML;
    document.getElementById("ef-fname").value = tr.cells[2].innerHTML;
    document.getElementById("ef-lname").value = tr.cells[3].innerHTML;
    document.getElementById("ef-uaddress").value = tr.cells[4].innerHTML;
    document.getElementById("ef-uemail").value = tr.cells[5].innerHTML;
}

function sendIdToDeleteForm(delBtn) {
    let tr = delBtn.parentElement.parentElement;
    console.log(tr.cells[1].innerHTML);
    document.getElementById("df-uid").value = tr.cells[1].innerHTML;
}

function deleteBatchOfUsers() {
    let checkboxes = document.querySelectorAll('table tbody input[type="checkbox"]');
    let uids = "";
    for (let i = 0; i < checkboxes.length; i++) {
        if (!checkboxes[i].checked) {continue;}
        let id = checkboxes[i].parentElement.parentElement.nextElementSibling.innerHTML;
        uids = uids.concat(",",id);
    }
    uids = uids.substring(1);
    console.log(uids);
    document.getElementById("df-uids").value = uids;
    console.log(document.getElementById(("df-uids").value));
}
