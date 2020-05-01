<%--/****************************************************************** --%>
<%--Date     Name                 Description--%>
<%--/****************************************************************** --%>
<%--4/27/2020     Lane Chadwick     Inital deployment of Artist page --%>
<%--5/1/2020      Lane Chadwick     Added ListView to add, upd & del of artist --%>
<%--/****************************************************************** --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Artists.aspx.cs" Inherits="DiskinvLC.Artists" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
   <!-- The start of list view -->
    <h1>Artists<asp:ListView ID="ListView1" runat="server" DataKeyNames="artist_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                </td>
                <td>
                    <asp:Label ID="artist_fnameLabel" runat="server" Text='<%# Eval("artist_fname") %>' />
                </td>
                <td>
                    <asp:Label ID="artist_lnameLabel" runat="server" Text='<%# Eval("artist_lname") %>' />
                </td>
                <td>
                    <asp:Label ID="artist_type_idLabel" runat="server" Text='<%# Eval("artist_type_id") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="artist_idLabel1" runat="server" Text='<%# Eval("artist_id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="artist_fnameTextBox" runat="server" Text='<%# Bind("artist_fname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="artist_lnameTextBox" runat="server" Text='<%# Bind("artist_lname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="artist_type_idTextBox" runat="server" Text='<%# Bind("artist_type_id") %>' />
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
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="artist_fnameTextBox" runat="server" Text='<%# Bind("artist_fname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="artist_lnameTextBox" runat="server" Text='<%# Bind("artist_lname") %>' />
                </td>
                <td>
                    <asp:TextBox ID="artist_type_idTextBox" runat="server" Text='<%# Bind("artist_type_id") %>' />
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
                    <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                </td>
                <td>
                    <asp:Label ID="artist_fnameLabel" runat="server" Text='<%# Eval("artist_fname") %>' />
                </td>
                <td>
                    <asp:Label ID="artist_lnameLabel" runat="server" Text='<%# Eval("artist_lname") %>' />
                </td>
                <td>
                    <asp:Label ID="artist_type_idLabel" runat="server" Text='<%# Eval("artist_type_id") %>' />
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
                                <th runat="server">artist_id</th>
                                <th runat="server">artist_fname</th>
                                <th runat="server">artist_lname</th>
                                <th runat="server">artist_type_id</th>
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
                    <asp:Label ID="artist_idLabel" runat="server" Text='<%# Eval("artist_id") %>' />
                </td>
                <td>
                    <asp:Label ID="artist_fnameLabel" runat="server" Text='<%# Eval("artist_fname") %>' />
                </td>
                <td>
                    <asp:Label ID="artist_lnameLabel" runat="server" Text='<%# Eval("artist_lname") %>' />
                </td>
                <td>
                    <asp:Label ID="artist_type_idLabel" runat="server" Text='<%# Eval("artist_type_id") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
        </asp:ListView>
        <!-- The end of list view -->
        <!-- stored procedures -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:disk_inventoryLCConnectionString %>"
            DeleteCommand="sp_del_artist" DeleteCommandType="StoredProcedure" 
            InsertCommand="sp_ins_artist" InsertCommandType="StoredProcedure"
            SelectCommand="SELECT [artist_id]
      ,[artist_fname]
      ,[artist_lname]
      ,[artist_type_id]
  FROM [dbo].[artist]
GO
order by artist_lname, artist_fname" UpdateCommand="sp_upd_artist" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="artist_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="artist_fname" Type="String" />
                <asp:Parameter Name="artist_lname" Type="String" />
                <asp:Parameter Name="artist_type_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="artist_id" Type="Int32" />
                <asp:Parameter Name="artist_fname" Type="String" />
                <asp:Parameter Name="artist_lname" Type="String" />
                <asp:Parameter Name="artist_type_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
</asp:Content>
