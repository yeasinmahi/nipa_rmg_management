function userValid() {
    var empId = document.getElementById("employeeId").value;
    var dept = document.getElementById("department").value;
    var firstName = document.getElementById("firstName").value;
    var lastName = document.getElementById("lastName").value;
    var gender = document.getElementById("gender").value;
    var nationality = document.getElementById("nationality").value;
    var parmanentAddress = document.getElementById("parmanentAddress").value;
    if (empId == "" || dept == "" || firstName=="" || gender==""||nationality==""||parmanentAddress=="") {

        if (empId == '') {
            document.getElementById("employeeIdError").innerHTML = "Enter Your Name";
        }

        if (dept == '') {
            document.getElementById("departmentError").innerHTML = "Enter Your Department Name";
            
        }
        if (firstName == '') {
            document.getElementById("firstNameError").innerHTML = "Enter Your First Name";

        }
        if (lastName == '') {
            document.getElementById("lastNameError").innerHTML = "Enter Your Last Name";

        }
        if (gender == '') {
            document.getElementById("gender").innerHTML = "Enter Your Gender";

        }
        if (nationality == '') {
            document.getElementById("nationality").innerHTML = "Enter Your Nationality";

        }
        if (parmanentAddress == '') {
            document.getElementById("parmanentAddress").innerHTML = "Enter Your Parmanent Address";

        }
        return false;
    }

    return true;

}

