<%@ Page Title="Employee Entry" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeEntry.aspx.cs" Inherits="NipaRMGManagement.UI.EmployeeEntry" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
        $("#MainContent_dateOfBirth").datepicker();
    </script>
    <script>
        $(document).ready(function () {
            $("#MainContent_firstNameBangla").avro();
            $("#MainContent_lastNameBangla").avro();

            $('#MainContent_marrigeDate').datepicker({
                format: "dd MM, yyyy",
                autoclose: true,
                todayHighlight: true
            });
        })

    </script>

</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <fieldset>
            <legend>Employee Entry</legend>
            <div class="form-group col-sm-12">
                <div class="col-sm-12 control-label" runat="server" id="successMessage"></div>
            </div>
            <div class="col-sm-12">
                <fieldset>
                    <legend>Personal Information</legend>
                    <div class="form-group col-sm-12">
                        <label class="col-sm-12 control-label" for="employeeId">Employee Id<b class="text-danger">*</b></label>
                        <div class="col-sm-3">
                            <input runat="server" class="form-control" type="text" id="employeeId" name="employeeId" placeholder="Employee Id" />
                            <asp:Button CssClass="btn btn-default" ID="empSearchButton" runat="server" Text="Search" OnClick="empSearchButton_Click" CausesValidation="False" />
                        </div>
                        <asp:RequiredFieldValidator CssClass="col-sm-9 text-danger" ID="employeeIdRequiredFieldValidator" runat="server" ErrorMessage="Can not be empty" ControlToValidate="employeeId"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="firstName">First Name<b class="text-danger">*</b></label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="firstName" name="firstName" placeholder="First Name" />
                        </div>
                        <asp:RequiredFieldValidator CssClass="col-sm-6 text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Can not be empty" ControlToValidate="firstName"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="lastName">Last Name<b class="text-danger">*</b></label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="lastName" name="lastName" placeholder="Last Name" />
                        </div>
                        <asp:RequiredFieldValidator CssClass="col-sm-6 text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Can not be empty" ControlToValidate="lastName"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="firstNameBangla">First Name(বাংলা )</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="firstNameBangla" name="firstNameBangla" placeholder="First Name" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="firstNameBanglaError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="lastNameBangla">Last Name(বাংলা )</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="lastNameBangla" name="lastNameBangla" placeholder="Last Name" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="lastNameBanglaError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="shortName">Short Name</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="shortName" name="shortName" placeholder="Short Name" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="shortNameError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="dateOfBirth">Date OfBirth</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="dateOfBirth" name="dateOfBirth" placeholder="MM/DD/YYYY" />
                        </div>
                        <div runat="server" class="col-sm-6 messageContainer text-danger" name="dateOfBirthError" id="dateOfBirthError"></div>
                        <%--<asp:RequiredFieldValidator CssClass="col-sm-6 text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Can not be empty" ControlToValidate="dateOfBirth"></asp:RequiredFieldValidator>--%>
                    </div>

                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="department">Department</label>
                        <div class="col-sm-6">
                            <asp:DropDownList CssClass="form-control" ID="department" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="departmentError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="designation">Designtaion</label>
                        <div class="col-sm-6">
                            <asp:DropDownList CssClass="form-control" ID="designation" runat="server"></asp:DropDownList>
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="designationError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="gender">Gender<b class="text-danger">*</b></label>
                        <div class="col-sm-6">
                            <asp:DropDownList CssClass="form-control" ID="gender" name="gender" runat="server">
                                <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="genderError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="bloodGroup">Blood Group</label>
                        <div class="col-sm-6">
                            <asp:DropDownList CssClass="form-control" ID="bloodGroup" name="bloodGroup" runat="server">
                                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                                <asp:ListItem Text="A+" Value="A+"></asp:ListItem>
                                <asp:ListItem Text="A-" Value="A-"></asp:ListItem>
                                <asp:ListItem Text="B+" Value="B+"></asp:ListItem>
                                <asp:ListItem Text="B-" Value="B-"></asp:ListItem>
                                <asp:ListItem Text="O+" Value="o+"></asp:ListItem>
                                <asp:ListItem Text="O-" Value="o-"></asp:ListItem>
                                <asp:ListItem Text="AB+" Value="AB+"></asp:ListItem>
                                <asp:ListItem Text="AB-" Value="AB-"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="bloodGroupError"></div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Basic Information</legend>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="additionalId">Additional Id</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="additionalId" name="additionalId" placeholder="Additional Id" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="additionalIdError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="fathersName">Father's Name</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="fathersName" name="fathersName" placeholder="Father's Name" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="fathersNameError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="mothersName">Mother's Name </label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="mothersName" name="mothersName" placeholder="Mother's Name " />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="mothersNameError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="placeOfBirth">Place Of Birth</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="placeOfBirth" name="placeOfBirth" placeholder="Place Of Birth" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="placeOfBirthError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="nationality">Nationality</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="nationality" name="nationality" placeholder="Nationality" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="nationalityError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="nationalIdCardNo">National Id Card No</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="nationalIdCardNo" name="nationalIdCardNo" placeholder="National Id Card No" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="nationalIdCardNoError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="religion">Religion</label>
                        <div class="col-sm-6">
                            <asp:DropDownList CssClass="form-control" ID="religion" name="religion" runat="server">
                                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Islam" Value="Islam"></asp:ListItem>
                                <asp:ListItem Text="Hinduism" Value="Hinduism"></asp:ListItem>
                                <asp:ListItem Text="Christianity" Value="Christianity"></asp:ListItem>
                                <asp:ListItem Text="Buddhism" Value="Buddhism"></asp:ListItem>
                                <asp:ListItem Text="Judaism" Value="Judaism"></asp:ListItem>
                                <asp:ListItem Text="Sikhism" Value="Sikhism"></asp:ListItem>
                                <asp:ListItem Text="Confucianism" Value="Confucianism"></asp:ListItem>
                                <asp:ListItem Text="Shinto" Value="Shinto"></asp:ListItem>
                                <asp:ListItem Text="Taoism" Value="Taoism"></asp:ListItem>
                                <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="religionError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="hobbies">Hobbies</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="hobbies" name="hobbies" placeholder="Hobbies" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="hobbiesError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="maritialStatus">Maritial Status</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="maritialStatus" name="maritialStatus" placeholder="Maritial Status" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="maritialStatusError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="marrigeDate">Marrige Date</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="date" id="marrigeDate" name="marrigeDate" placeholder="MM/DD/YYYY" />
                        </div>
                        <div runat="server" class="col-sm-6 messageContainer text-danger" id="marrigeDateError" name="marrigeDateError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="presentAddress">Present Address</label>
                        <div class="col-sm-6">
                            <textarea runat="server" class="form-control" id="presentAddress" name="presentAddress"></textarea>
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="presentAddressError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="parmanentAddress">Parmanent Address</label>
                        <div class="col-sm-6">
                            <textarea runat="server" class="form-control" id="parmanentAddress" name="parmanentAddress"></textarea>
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="parmanentAddressError"></div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Contact Information</legend>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="officialPhone">Officeal Phone</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="officialPhone" name="officialPhone" placeholder="Official Phone" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="officialPhoneError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label required" for="personalPhone">Personal Phone<b class="text-danger">*</b></label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="personalPhone" name="personalPhone" placeholder="Personal Phone" />
                        </div>
                        <asp:RequiredFieldValidator CssClass="col-sm-6 text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Can not be empty" ControlToValidate="personalPhone"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="officialEmail">Officeal Email</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="officialEmail" name="officialEmail" placeholder="Official Email" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="officialEmailError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="personalEmail">Personal Email</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="personalEmail" name="personalEmail" placeholder="Personal Email" />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="personalEmailError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="attendenceCardId">Attendence Card Id</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="attendenceCardId" name="attendenceCardId" placeholder="Attendence Card Id " />
                        </div>
                        <div class="col-sm-6 messageContainer text-danger" id="attendenceCardIdError"></div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="fingerPrintId">Finger Print Id</label>
                        <div class="col-sm-6">
                            <input runat="server" class="form-control" type="text" id="fingerPrintId" name="fingerPrintId" placeholder="Finger Print Id " />
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
                    <div class="form-group col-sm-12">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-2">
                            <asp:Button CssClass="btn btn-default btn-block" type="submit" ID="SaveEmployee" Text="Save" runat="server" OnClick="SaveEmployee_Click" />
                        </div>
                        <div class="col-sm-7"></div>
                    </div>
                </fieldset>
            </div>
        </fieldset>
    </div>
</asp:Content>
