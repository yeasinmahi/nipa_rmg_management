<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DepartmentEntrys.aspx.cs" Inherits="NipaRMGManagement.UI.DepartmentEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
       
        <fieldset>
            <legend>Department Entry</legend>
             <div class="form-group col-lg-12">
            <div class="col-sm-12">
                <asp:Label ID="messageLabel" runat="server"></asp:Label>
            </div>
        </div>
            <div>

                <div class="form-group text-center col-sm-12">
                    <asp:Literal ID="successMessage" runat="server"></asp:Literal>
                </div>
                <div class="form-group col-sm-6">
                    <label class="col-sm-12 control-label" for="departmentCode">Department Code</label>
                    <div class="col-sm-12">
                        <input class="form-control" type="text" id="departmentCode" name="departmentCode" placeholder="Department Code">
                    </div>
                </div>
                <div class="form-group col-sm-6">
                    <label class="col-sm-12 control-label" for="departmentName">Department Name</label>
                    <div class="col-sm-12">
                        <input class="form-control" type="text" id="departmentName" name="departmentName" placeholder="Department Name">
                    </div>
                </div>

                <div class="form-group col-lg-12">
                    <div class="col-sm-12">
                        <asp:Button class="btn btn-default" ID="addButton" runat="server" Text="Save" OnClick="addButton_Click" />
                    </div>
                </div>

            </div>
            <style>
                #MainContent_DepartmentGridView td,#MainContent_DepartmentGridView th{
                    padding: 10px 0;
                }
            </style>
            <div class="">
                
            <asp:GridView ID="DepartmentGridView" runat="server"  CellPadding="10"  ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"  Width="100%"  >
                <Columns>
                    <asp:TemplateField HeaderText="#SL NO">
                        <ItemTemplate>
                            <%#Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Department Code ">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DepartmentCode") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                    <asp:TemplateField HeaderText="Department Name">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("DepartmentName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    

                </Columns>
                <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                
            </asp:GridView>
                </div>

        </fieldset>
    </div>

</asp:Content>
