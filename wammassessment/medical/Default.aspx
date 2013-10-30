<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="medical_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="info">
        <h2>Phase 2 will display registered patient information</h2>
        <p id="left">The information will display the patientId and their medical info.<br />
            No personal information will be displayed for privacy.</p>
    </div>
    <asp:GridView ID="gvTreatment" runat="server">
    </asp:GridView>

</asp:Content>

