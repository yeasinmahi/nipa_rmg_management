<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeEntry.aspx.cs" Inherits="NipaRMGManagement.UI.EmployeeEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <fieldset>
            <legend>Employee Entry</legend>

            <div class="form-group col-sm-6" >
                <label class="col-sm-12 control-label" for="lg">First Name</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="firstName" placeholder="First Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="lg">Last Name</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="lastName" placeholder="Last Name">
                </div>
            </div>
            <div class="form-group col-sm-6" >
                <label class="col-sm-12 control-label" for="lg">First Name</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="firstName" placeholder="First Name">
                </div>
            </div>
            <div class="form-group col-sm-6">
                <label class="col-sm-12 control-label" for="lg">Last Name</label>
                <div class="col-sm-12">
                    <input class="form-control" type="text" id="lastName" placeholder="Last Name">
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>
