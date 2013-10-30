<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newPatient.aspx.vb" Inherits="registration_newPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="center">
        <asp:Label ID="lblFName" runat="server" Text="First Name: ">
        </asp:Label><asp:TextBox ID="txtFName" runat="server"></asp:TextBox> 

        &nbsp; 

        <asp:Label ID="lblLName" runat="server" Text="Last Name: ">
        </asp:Label><asp:TextBox ID="txtLName" runat="server"></asp:TextBox>

        <br /><br />

        <asp:Label ID="lblMName" runat="server" Text="Middle Name: ">
        </asp:Label><asp:TextBox ID="txtMName" runat="server"></asp:TextBox>

        &nbsp;

        <asp:Label ID="lblBirthDay" runat="server" Text="Birthday: ">
        </asp:Label><asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>

        <br /><br />

        <asp:Label ID="lblSex" runat="server" Text="Sex: ">
        </asp:Label><asp:DropDownList ID="ddlSex" runat="server" 
            AppendDataBoundItems="True">
            <asp:ListItem>M</asp:ListItem>
            <asp:ListItem>F</asp:ListItem>
        </asp:DropDownList>

        &nbsp;

        <asp:Label ID="lblWeight" runat="server" Text="Weight: ">
        </asp:Label><asp:TextBox ID="txtWeight" runat="server" Width="66px"></asp:TextBox>

        &nbsp;

        <asp:Label ID="lblPhone" runat="server" Text="Phone: ">
        </asp:Label><asp:TextBox ID="txtPhone" runat="server" value=></asp:TextBox>

        <br /><br />

        <asp:Label ID="lblStreet" runat="server" Text="Street: ">
        </asp:Label><asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>

        &nbsp;

        <asp:Label ID="lblCity" runat="server" Text="City: ">
        </asp:Label><asp:TextBox ID="txtCity" runat="server"></asp:TextBox>

        <br /><br />

        <asp:Label ID="lblRegion" runat="server" Text="Region: ">
        </asp:Label><asp:TextBox ID="txtRegion" runat="server"></asp:TextBox>

        &nbsp;

        <asp:Label ID="lblNACCode" runat="server" Text="NAC Code: ">
        </asp:Label><asp:TextBox ID="txtNACCode" runat="server"></asp:TextBox>

        <br /><br />

        <asp:Label ID="lblOccupation" runat="server" Text="Occupation: ">
        </asp:Label><asp:TextBox ID="txtOccupation" runat="server"></asp:TextBox>

        &nbsp;

        <asp:Label ID="lblMaritalStatus" runat="server" Text="Marital Status: ">
        </asp:Label><asp:TextBox ID="txtMaritalStatus" runat="server"></asp:TextBox>

        <br /><br />

        <asp:Label ID="lblChildren" runat="server" Text="Children: ">
        </asp:Label><asp:TextBox ID="txtChildren" runat="server"></asp:TextBox>

        &nbsp;

        <asp:Label ID="lblNextOfKen" runat="server" Text="Next Of Ken: ">
        </asp:Label><asp:TextBox ID="txtNextOfKen" runat="server"></asp:TextBox>
    </div>

    <asp:Button ID="Submit" runat="server" Text="Insert New Patient" />
</asp:Content>

