﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NipaRMGManagement.UI.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
  .modal-header, h4, .close {
      background-color: #778899;
      color:white !important;
      text-align: center;
      font-size: 20px;
  }
  .modal-footer {
      background-color: #778899;
  }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

<div class="container">
  <h2>Employee Entry Form</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-default btn-lg" id="myBtn">Employee Entry</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
      
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
                <input type="text" class="form-control" id="usrname" placeholder="Enter email"/>
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
                <input type="text" class="form-control" id="psw" placeholder="Enter password"/>
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
    
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      
    </div>
  </div> 
</div>
 
<script>
    $(document).ready(function () {
        $("#myBtn").click(function () {
            $("#myModal").modal();
        });
    });
</script>



</asp:Content>
