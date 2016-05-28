<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DesignationControl.aspx.cs" Inherits="NipaRMGManagement.UI.DesignationControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <fieldset>
            <legend>Designation Control</legend>
            <div>
                <form class="cmxform" id="commentForm" method="get" action="">

                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="designationName">Designation Name</label>
                        <div class="col-sm-12">
                            <input class="form-control" type="text" id="designationName" name="designationName" placeholder="Designation Name">
                        </div>
                    </div>
                    <div class="form-group col-sm-6">
                        <label class="col-sm-12 control-label" for="grossSalary">Gross Salary</label>
                        <div class="col-sm-12">
                            <input class="form-control" type="text" id="grossSalary" name="grossSalary" placeholder="Gross Salary">
                        </div>
                    </div>
                </form>
                <div class="form-group col-sm-7">
                    <div class="col-sm-12">
                        <asp:Button class="btn btn-default" ID="addButton" runat="server" Text="Add" OnClick="addButton_Click" />
                    </div>
                </div>
            </div>


            <div class="text-center">
                <asp:GridView ID="designationGridView" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="SL#">
                            <ItemTemplate>
                                <%#Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Designation Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("DesignationName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gross Salary">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("GrossSalary") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Basic Salary">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("BasicSalary") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="House Rent">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("HouseRentSupport") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Medical">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MedicalSupport") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Convance">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ConvanceSupport") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Food">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FoodSupport") %>'></asp:Label>
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
