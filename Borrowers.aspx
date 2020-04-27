<%--/****************************************************************** --%>
<%--Date     Name                 Description--%>
<%--/****************************************************************** --%>
<%--4/27/2020     Lane Chadwick     Inital deployment of Borrowers page --%>
<%--/****************************************************************** --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrowers.aspx.cs" Inherits="DiskinvLC.Borrowers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
</p>
    <h1>Borrowers</h1>
    <p>
       Please Enter Borrower Information and Click Submit.
    </p>
<p>
       &nbsp;</p>
<asp:TextBox ID="txtFirst" runat="server">First Name</asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirst" Display="Dynamic" ErrorMessage="First Name Is Required" InitialValue="First Name"></asp:RequiredFieldValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirst" Display="Dynamic" ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
<br />
<asp:TextBox ID="txtLast" runat="server">Last Name</asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLast" ErrorMessage="Last Name is Required" Display="Dynamic" InitialValue="Last Name"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLast" Display="Dynamic" ErrorMessage="Please Enter Last Name"></asp:RequiredFieldValidator>
<br />
<asp:TextBox ID="txtPhone" runat="server">999-999-9999</asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Use this format xxx-xxx-xxxx" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone Number is Required" InitialValue="999-999-9999"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Please Enter a Valid Phone Number"></asp:RequiredFieldValidator>
<br />
<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

    <br />
    <asp:Label ID="lblmessage" runat="server"></asp:Label>

</asp:Content>
