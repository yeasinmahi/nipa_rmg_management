<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeEntry.aspx.cs" Inherits="NipaRMGManagement.UI.EmployeeEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <fieldset>
            <legend>Employee Entry</legend>

            <div class="form-group col-sm-6" >
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
            <div class="form-group col-sm-6" >
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
                <div class="form-group col-sm-6" >
                <label class="col-sm-12 control-label" for="shortName">Sort Name</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="shortName" name="shortName" placeholder="Short Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="lastNameBangla">Last Name(Bangla)</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="lastNameBangla" name="lastNameBangla" placeholder="Last Name">
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>
