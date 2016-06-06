function userValid() {
    var empId = document.getElementById("MainContent_employeeId").value;
    var dept = document.getElementById("MainContent_department").value;
    var designation=document.getElementById("MainContent_designation").value
    var firstName = document.getElementById("MainContent_firstName").value;
    var lastName = document.getElementById("MainContent_lastName").value;
    var gender = document.getElementById("MainContent_gender").value;
    var bloodGroup = document.getElementById("MainContent_bloodGroup").value;
    var NIDCardId = document.getElementById("MainContent_nationalIdCardNo").value;
    var nationality = document.getElementById("MainContent_nationality").value;
    var personalPhone = document.getElementById("MainContent_personalPhone").value;
    
    var parmanentAddress = document.getElementById("MainContent_parmanentAddress").value;
    if (empId == "" || dept == "" ||designation =="" || firstName =="" || gender =="" || bloodGroup =="" ||NIDCardId ==""|| personalPhone ==""||nationality ==""||parmanentAddress =="") {

        if (empId == "") {
            document.getElementById("MainContent_employeeIdError").innerHTML = "Enter Your Name";
        }

        if (dept == "") {
            document.getElementById("MainContent_departmentError").innerHTML = "Enter Your DepartmentCode Name";
            
        }
        if (designation == "") {
            document.getElementById("MainContent_designationError").innerHTML = "Enter Your Designation";

        }
        if (firstName == "") {
            document.getElementById("MainContent_firstNameError").innerHTML = "Enter Your First Name";

        }
        if (lastName == "") {
            document.getElementById("MainContent_lastNameError").innerHTML = "Enter Your Last Name";

        }
        if (gender == "") {
            document.getElementById("MainContent_genderError").innerHTML = "Enter Your Gender";

        }
        if (bloodGroup == "") {
            document.getElementById("MainContent_bloodGroupError").innerHTML = "Enter Your Blood Group";

        }
        if (NIDCardId == "") {
            document.getElementById("MainContent_nationalIdCardNoError").innerHTML = "Enter Your Voter Id Number";

        }
        if (personalPhone == "") {
            document.getElementById("MainContent_personalPhoneError").innerHTML = "Enter Your Phone Number";

        }
        if (nationality == "") {
            document.getElementById("MainContent_nationalityError").innerHTML = "Enter Your Nationality";

        }
        if (parmanentAddress == "") {
            document.getElementById("MainContent_parmanentAddressError").innerHTML = "Enter Your Parmanent Address";

        }
        return false;
    }

    return true;

}
