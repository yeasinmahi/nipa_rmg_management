function userValid() {
    var Name= document.getElementById("employeeId").value;
    if (Name == '') {
        document.getElementById("employeeIdError").innerHTML = 'Enter Name';
        return false;
    }

    return true;

}