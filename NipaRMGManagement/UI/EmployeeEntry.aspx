<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeEntry.aspx.cs" Inherits="NipaRMGManagement.UI.EmployeeEntry" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/myValidate.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <fieldset>
            <legend>Employee Entry</legend>

            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="employeeId">Employee Id</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="employeeId" name="employeeId" placeholder="Employee Id">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="employeeIdError"></div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="department">Department</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="department" name="department" placeholder="Department">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="departmentError"></div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="designation">Designtaion</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="designation" name="designation" placeholder="Designation">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="designationError"></div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="additionalId">Additional Id</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="additionalId" name="additionalId" placeholder="Additional Id">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="additionalIdError"></div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="firstName">First Name</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="firstName" name="firstName" placeholder="First Name">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="firstNameError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="lastName">Last Name</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="lastName" name="lastName" placeholder="Last Name">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="lastNameError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="firstNameBangla">First Name(Bangla)</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="firstNameBangla" name="firstNameBangla" placeholder="First Name">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="firstNameBanglaError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="lastNameBangla">Last Name(Bangla)</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="lastNameBangla" name="lastNameBangla" placeholder="Last Name">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="lastNameBanglaError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="shortName">Short Name</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="shortName" name="shortName" placeholder="Short Name">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="shortNameError"></div>

            </div>

            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="fathersName">Father's Name</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="fathersName" name="fathersName" placeholder="Father's Name">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="fathersNameError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="mothersName">Mother's Name </label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="mothersName" name="mothersName" placeholder="Mother's Name ">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="mothersNameError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="dateOfBirth">Date OfBirth </label>
                <div class="col-sm-6">
                    <input class="form-control" type="date" id="dateOfBirth" name="dateOfBirth">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="dateOfBirthError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="placeOfBirth">Place Of Birth</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="placeOfBirth" name="placeOfBirth" placeholder="Place Of Birth">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="placeOfBirthError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="gender">Gender</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="gender" name="gender" placeholder="Gender">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="genderError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="bloodGroup">Blood Group</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="bloodGroup" name="bloodGroup" placeholder="Blood Group">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="bloodGroupError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="nationality">Nationality</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="nationality" name="nationality" placeholder="Nationality">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="nationalityError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="nationalIdCardNo">National Id Card No</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="nationalIdCardNo" name="nationalIdCardNo" placeholder="National Id Card No">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="nationalIdCardNoError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="religion">Religion</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="religion" name="religion" placeholder="Religion">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="religionError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="hobbies">Hobbies</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="hobbies" name="hobbies" placeholder="Hobbies">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="hobbiesError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="maritialStatus">Maritial Status</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="maritialStatus" name="maritialStatus" placeholder="Maritial Status">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="maritialStatusError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="marrigeDate">Marrige Date</label>
                <div class="col-sm-6">
                    <input class="form-control" type="date" id="marrigeDate" name="marrigeDate">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="marrigeDateError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="presentAddress">Present Address</label>
                <div class="col-sm-6">
                    <textarea class="form-control" id="presentAddress" name="presentAddress"></textarea>
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="presentAddressError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="parmanentAddress">Parmanent Address</label>
                <div class="col-sm-6">
                    <textarea class="form-control" id="parmanentAddress" name="parmanentAddress"></textarea>
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="parmanentAddressError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="officialPhone">Officeal Phone</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="officialPhone" name="officialPhone" placeholder="Official Phone">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="officialPhoneError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="personalPhone">Personal Phone</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="personalPhone" name="personalPhone" placeholder="Personal Phone">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="personalPhoneError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="officialEmail">Officeal Email</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="officialEmail" name="officialEmail" placeholder="Official Email">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="officialEmailError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="personalEmail">Personal Email</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="personalEmail" name="personalEmail" placeholder="Personal Email">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="personalEmailError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="attendenceCardId">Attendence Card Id</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="attendenceCardId" name="attendenceCardId" placeholder="Attendence Card Id ">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="attendenceCardIdError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="fingerPrintId">Finger Print Id</label>
                <div class="col-sm-6">
                    <input class="form-control" type="text" id="fingerPrintId" name="fingerPrintId" placeholder="Finger Print Id ">
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="fingerPrintIdError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="employeePic">Employee Pic</label>
                <div class="col-sm-6">
                    <asp:FileUpload ID="employeePic" name="employeePic" runat="server" />
                </div>
                <div class="col-sm-6 messageContainer text-danger" id="employeePicError"></div>

            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="digitalSignature">Digital Signature</label>
                <div class="col-sm-6">
                    <asp:FileUpload ID="digitalSignature" name="digitalSignature" runat="server" />

                </div>
                <div class="col-sm-6 messageContainer text-danger" id="digitalSignatureError"></div>
                
            </div>
            <div class="form-group col-sm-6">

                <div class="col-sm-12">
                    <asp:Button type="submit" ID="SaveEmployee" Text="Save" runat="server" OnClientClick="return userValid()" OnClick="SaveEmployee_Click" />

                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>
