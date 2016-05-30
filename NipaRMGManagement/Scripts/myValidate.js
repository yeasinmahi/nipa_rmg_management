function userValid() {
    var empId = document.getElementById("employeeId").value;
    var dept = document.getElementById("department").value;
    var designation=document.getElementById("designation").value
    var firstName = document.getElementById("firstName").value;
    var lastName = document.getElementById("lastName").value;
    var gender = document.getElementById("gender").value;
    var bloodGroup = document.getElementById("bloodGroup").value;
    var NIDCardId = document.getElementById("nationalIdCardNo").value;
    var nationality = document.getElementById("nationality").value;
    var personalPhone = document.getElementById("personalPhone").value;
    
    var parmanentAddress = document.getElementById("parmanentAddress").value;
    if (empId == "" || dept == "" ||designation =="" || firstName =="" || gender =="" || bloodGroup =="" ||NIDCardId ==""|| personalPhone ==""||nationality ==""||parmanentAddress =="") {

        if (empId == "") {
            document.getElementById("employeeIdError").innerHTML = "Enter Your Name";
        }

        if (dept == "") {
            document.getElementById("departmentError").innerHTML = "Enter Your Department Name";
            
        }
        if (designation == "") {
            document.getElementById("designationError").innerHTML = "Enter Your Designation";

        }
        if (firstName == "") {
            document.getElementById("firstNameError").innerHTML = "Enter Your First Name";

        }
        if (lastName == "") {
            document.getElementById("lastNameError").innerHTML = "Enter Your Last Name";

        }
        if (gender == "") {
            document.getElementById("genderError").innerHTML = "Enter Your Gender";

        }
        if (bloodGroup == "") {
            document.getElementById("bloodGroupError").innerHTML = "Enter Your Blood Group";

        }
        if (NIDCardId == "") {
            document.getElementById("nationalIdCardNoError").innerHTML = "Enter Your Voter Id Number";

        }
        if (personalPhone == "") {
            document.getElementById("personalPhoneError").innerHTML = "Enter Your Phone Number";

        }
        if (nationality == "") {
            document.getElementById("nationalityError").innerHTML = "Enter Your Nationality";

        }
        if (parmanentAddress == "") {
            document.getElementById("parmanentAddressError").innerHTML = "Enter Your Parmanent Address";

        }
        return false;
    }

    return true;

}

