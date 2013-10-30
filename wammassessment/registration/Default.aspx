<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="registration_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div id="center">
        <asp:Label ID="lblLName" runat="server" Text="Last Name: "></asp:Label>

        <asp:TextBox ID="txtLName" runat="server" MaxLength="25"></asp:TextBox>

        <br /><br />

        <asp:Label ID="lblFName" runat="server" Text="First Name: "></asp:Label>

        <asp:TextBox ID="txtFName" runat="server" MaxLength="25"></asp:TextBox>
    </div>
    <br /><br />

    <asp:Button ID="btnSearch" runat="server" Text="Search" /> <br /><br />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="patientId" DataSourceID="sdsSearch" CssClass="mGrid" 
        AlternatingRowStyle-CssClass="alt" RowStyle-CssClass="pgr">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="lName" HeaderText="Last Name" SortExpression="lName" />
            <asp:BoundField DataField="fName" HeaderText="First Name" SortExpression="fName" />
            <asp:BoundField DataField="patientId" HeaderText="Patient ID" ReadOnly="True" 
                SortExpression="patientId" />
            <asp:BoundField DataField="birthday" HeaderText="Birthday" 
                SortExpression="birthday" />
        </Columns>
    </asp:GridView>

    <asp:Label ID="lblPatient" runat="server" Text="Label"></asp:Label>

    <br /><br />
    <a href="newPatient.aspx">Add New Patient</a>

    <asp:SqlDataSource ID="sdsSearch" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="uspSelectPatient" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:FormParameter DefaultValue="&quot;&quot;" FormField="txtLName" 
                Name="lName" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>

</asp:Content>

