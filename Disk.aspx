<%--/****************************************************************** --%>
<%--Date     Name                 Description--%>
<%--/****************************************************************** --%>
<%--4/27/2020     Lane Chadwick     Inital deployment of Disk page --%>
<%--5/1/2020      Lane Chadwick     Added ListView to add, upd & del disks --%>
<%--/****************************************************************** --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Disk.aspx.cs" Inherits="DiskinvLC.Disk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <p>
    <br />
</p>
    <h1>Disk</h1>
        <p>
            <!-- The start of list view -->
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="disk_id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFFFFF; color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_nameLabel" runat="server" Text='<%# Eval("disk_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="release_dateLabel" runat="server" Text='<%# Eval("release_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="genre_idLabel" runat="server" Text='<%# Eval("genre_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_type_idLabel" runat="server" Text='<%# Eval("disk_type_id") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#C0C0C0; ">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="disk_idLabel1" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="disk_nameTextBox" runat="server" Text='<%# Bind("disk_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="release_dateTextBox" runat="server" Text='<%# Bind("release_date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="genre_idTextBox" runat="server" Text='<%# Bind("genre_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="status_idTextBox" runat="server" Text='<%# Bind("status_id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="disk_type_idTextBox" runat="server" Text='<%# Bind("disk_type_id") %>' />
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
                            <asp:TextBox ID="disk_nameTextBox" runat="server" Text='<%# Bind("disk_name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="release_dateTextBox" runat="server" Text='<%# Bind("release_date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="genre_idTextBox" runat="server" Text='<%# Bind("genre_id") %>' />

                        </td>
                        <td>
                            <asp:TextBox ID="status_idTextBox" runat="server" Text='<%# Bind("status_id") %>' />

                        </td>
                        <td>
                            <asp:TextBox ID="disk_type_idTextBox" runat="server" Text='<%# Bind("disk_type_id") %>' />

                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#E0FFFF; color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_nameLabel" runat="server" Text='<%# Eval("disk_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="release_dateLabel" runat="server" Text='<%# Eval("release_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="genre_idLabel" runat="server" Text='<%# Eval("genre_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_type_idLabel" runat="server" Text='<%# Eval("disk_type_id") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#E0FFFF; color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">disk_id</th>
                                        <th runat="server">disk_name</th>
                                        <th runat="server">release_date</th>
                                        <th runat="server">genre_id</th>
                                        <th runat="server">status_id</th>
                                        <th runat="server">disk_type_id</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
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
                    <tr style="background-color:#E2DED6; font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="disk_idLabel" runat="server" Text='<%# Eval("disk_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_nameLabel" runat="server" Text='<%# Eval("disk_name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="release_dateLabel" runat="server" Text='<%# Eval("release_date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="genre_idLabel" runat="server" Text='<%# Eval("genre_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="status_idLabel" runat="server" Text='<%# Eval("status_id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="disk_type_idLabel" runat="server" Text='<%# Eval("disk_type_id") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <!-- The End of list view -->

            <!-- Stored Procedures -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:disk_inventoryLCConnectionString %>" DeleteCommand="sp_del_disk" InsertCommand="sp_ins_disk" SelectCommand="SELECT [disk_id], [disk_name], [release_date], [genre_id], [status_id], [disk_type_id] FROM [disk] ORDER BY [disk_name]" UpdateCommand="sp_upd_disk" DeleteCommandType="StoredProcedure" InsertCommandType="StoredProcedure" UpdateCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="disk_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="disk_name" Type="String" />
                    <asp:Parameter DbType="Date" Name="release_date" />
                    <asp:Parameter Name="genre_id" Type="Int32" />
                    <asp:Parameter Name="status_id" Type="Int32" />
                    <asp:Parameter Name="disk_type_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="disk_id" Type="Int32" />
                    <asp:Parameter Name="disk_name" Type="String" />
                    <asp:Parameter DbType="Date" Name="release_date" />
                    <asp:Parameter Name="genre_id" Type="Int32" />
                    <asp:Parameter Name="status_id" Type="Int32" />
                    <asp:Parameter Name="disk_type_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </asp:Content>
