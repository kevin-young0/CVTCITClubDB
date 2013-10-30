<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="center">
        <h3>Please login to use the system</h3><br />

        <asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        

    </div>
    <div id="anchors">
        <p>Select access level</p>
        <a href="registration/Default.aspx">Registration</a><br /><br />
        <a href="medical/Default.aspx">Nurse</a><br /><br />
        <a href="medical/Default.aspx">Doctor</a><br /><br />
    </div>
</asp:Content>

