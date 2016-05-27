<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeEntry.aspx.cs" Inherits="NipaRMGManagement.UI.EmployeeEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <fieldset>
            <legend>Employee Entry</legend>

            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="firstName">First Name</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="firstName" name="firstName" placeholder="First Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="lastName">Last Name</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="lastName" name="lastName" placeholder="Last Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="firstNameBangla">First Name(Bangla)</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="firstNameBangla" name="firstNameBangla" placeholder="First Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="lastNameBangla">Last Name(Bangla)</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="lastNameBangla" name="lastNameBangla" placeholder="Last Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="shortName">Sort Name</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="shortName" name="shortName" placeholder="Short Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="additionalId">Additional Id</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="additionalId" name="additionalId" placeholder="Additional Id">
                </div>
            </div>
             <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="fathersName">Father's Name</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="fathersName" name="fathersName" placeholder="Father's Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="mothersName">Mother's Name </label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="mothersName" name="mothersName" placeholder="Mother's Name ">
                </div>
            </div>
            
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="dateOfBirth">Date OfBirth </label>
                <div class="col-sm-12">
                    <input class="form-control" type="date" id="dateOfBirth" name="dateOfBirth" >
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="placeOfBirth">Place Of Birth</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="placeOfBirth" name="placeOfBirth" placeholder="Place Of Birth">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="gender">Gender</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="gender" name="gender" placeholder="Gender">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="bloodGroup">Blood Group</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="bloodGroup" name="bloodGroup" placeholder="Blood Group">
                </div>
            </div>
             <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="nationality">Nationality</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="nationality" name="nationality" placeholder="Nationality">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="nationalIdCardNo">National Id Card No</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="nationalIdCardNo" name="nationalIdCardNo" placeholder="National Id Card No">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="religion">Religion</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="religion" name="religion" placeholder="Religion">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="hobbies">Hobbies</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="hobbies" name="hobbies" placeholder="Hobbies">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="maritialStatus">Maritial Status</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="maritialStatus" name="maritialStatus" placeholder="Maritial Status">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="marrigeDate">Marrige Date</label>
                <div class="col-sm-12">
                   <input class="form-control" type="date" id="marrigeDate" name="marrigeDate" >
                </div>
            </div>
             <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="presentAddress">Present Address</label>
                <div class="col-sm-12">
                    <textarea class="form-control"  id="presentAddress" name="presentAddress"></textarea>
                </div>
            </div>
             <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="parmanentAddress">Parmanent Address</label>
                <div class="col-sm-12">
                    <textarea class="form-control"  id="parmanentAddress" name="parmanentAddress"></textarea>
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="officialPhone">Officeal Phone</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="officialPhone" name="officialPhone" placeholder="Official Phone">
                </div>
            </div>
             <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="personalPhone">Personal Phone</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="personalPhone" name="personalPhone" placeholder="Personal Phone">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="officialEmail">Officeal Email</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="officialEmail" name="officialEmail" placeholder="Official Email">
                </div>
            </div>
             <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="personalEmail">Personal Email</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="personalEmail" name="personalPhone" placeholder="Personal Email">
                </div>
            </div>
             <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="attendenceCardId">Attendence Card Id</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="attendenceCardId" name="attendenceCardId" placeholder="Attendence Card Id ">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="fingerPrintId">Finger Print Id</label>
                <div class="col-sm-12">
                   <input class="form-control" type="text" id="fingerPrintId" name="fingerPrintId" placeholder="Finger Print Id ">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="employeePic">Employee Pic</label>
                <div class="col-sm-12">
                    <asp:FileUpload ID="employeePic" name="employeePic"  runat="server" />
                  
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="digitalSignature">Digital Signature</label>
                <div class="col-sm-12">
                    <asp:FileUpload ID="digitalSignature" name="digitalSignature"  runat="server" />
                  
                </div>
            </div>

        </fieldset>
    </div>
</asp:Content>
