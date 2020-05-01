<%--/****************************************************************** --%>
<%--Date     Name                 Description--%>
<%--/****************************************************************** --%>
<%--4/27/2020     Lane Chadwick     Inital deployment of Borrowers page --%>
<%--5/1/2020      Lane Chadwick     Added ListView to add, upd & del of Borrowers --%>
<%--/****************************************************************** --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrowers.aspx.cs" Inherits="DiskinvLC.Borrowers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
    <h1>Borrowers</h1>
    <p>&nbsp;</p>
    <p>
        <!-- The start of list view -->
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="borrower_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phone_numLabel" runat="server" Text='<%# Eval("phone_num") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#C0C0C0;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="Edit" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="borrower_idLabel1" runat="server" Text='<%# Eval("borrower_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnameTextBox" Display="Dynamic" ErrorMessage="First Name Is Required" ValidationGroup="Edit"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lnameTextBox" ErrorMessage="Last Name is Required" Display="Dynamic" ValidationGroup="Edit"></asp:RequiredFieldValidator>

                    </td>
                    <td>
                        <asp:TextBox ID="phone_numTextBox" runat="server" Text='<%# Bind("phone_num") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phone_numTextBox" ErrorMessage="Required"  ValidationGroup="Edit"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone_numTextBox" Display="Dynamic" ErrorMessage="Use this format xxx-xxx-xxxx" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="Edit"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnameTextBox" Display="Dynamic" ErrorMessage="First Name Is Required" ValidationGroup="Insert"></asp:RequiredFieldValidator>

                    </td>
                    <td>
                        <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lnameTextBox" ErrorMessage="Last Name is Required" Display="Dynamic" ValidationGroup="Insert"></asp:RequiredFieldValidator>

                    </td>
                    <td>
                        <asp:TextBox ID="phone_numTextBox" runat="server" Text='<%# Bind("phone_num") %>' />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phone_numTextBox" ErrorMessage="Phone Number is Required" InitialValue="999-999-9999" ValidationGroup="Insert"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone_numTextBox" Display="Dynamic" ErrorMessage="Use this format xxx-xxx-xxxx" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ValidationGroup="Insert"></asp:RegularExpressionValidator>

                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phone_numLabel" runat="server" Text='<%# Eval("phone_num") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">borrower_id</th>
                                    <th runat="server">fname</th>
                                    <th runat="server">lname</th>
                                    <th runat="server">phone_num</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="borrower_idLabel" runat="server" Text='<%# Eval("borrower_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lnameLabel" runat="server" Text='<%# Eval("lname") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phone_numLabel" runat="server" Text='<%# Eval("phone_num") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <!-- The end of list view -->
        <!--Stored Procedure-->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:disk_inventoryLCConnectionString %>" 
            DeleteCommand="sp_del_borrower" DeleteCommandType="StoredProcedure" 
            InsertCommand="sp_ins_borrower" InsertCommandType="StoredProcedure" 
            SelectCommand="SELECT [borrower_id]
      ,[fname]
      ,[lname]
      ,[phone_num]
  FROM [dbo].[borrower]
GO
order by lname, fname" UpdateCommand="sp_upd_borrower" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="borrower_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="phone_num" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="borrower_id" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="phone_num" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    

    

</asp:Content>
