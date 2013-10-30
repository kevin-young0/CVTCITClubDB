'Author: Kevin Young
'Purpose: Add new patient to the DB
'Date: 05/08/2013

Option Strict On
Option Explicit On

Imports System.Data.SqlClient

Partial Class registration_newPatient
    Inherits System.Web.UI.Page

    Dim mstrCN As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True;"


    Protected Sub Submit_Click(sender As Object, e As System.EventArgs) Handles Submit.Click


        'Create the @paitentId value
        Dim fnChar As String = txtFName.Text.Substring(0, 1)
        Dim lnChar As String = txtLName.Text.Substring(0, 1)
        Dim year As String = Date.Today.Year.ToString
        Dim num As Int32 = CInt(Math.Ceiling(Rnd() * 99))
        Dim patient As String = lnChar & fnChar & year & num.ToString("D2")

        'Connect to DB
        Dim objCon As New SqlConnection(mstrCN)
        objCon.Open()

        'Define commnd
        Dim objCmd As SqlCommand = New SqlCommand("uspNewPatient", objCon)

        With objCmd
            .CommandType = Data.CommandType.StoredProcedure
            .Parameters.Add("@fName", Data.SqlDbType.VarChar).Value = txtFName.Text.Trim
            .Parameters.Add("@lName", Data.SqlDbType.VarChar).Value = txtLName.Text.Trim
            .Parameters.Add("@patientId", Data.SqlDbType.VarChar).Value = patient
            .Parameters.Add("@birthday", Data.SqlDbType.Date).Value = txtBirthday.Text.Trim
            .Parameters.Add("@sex", Data.SqlDbType.VarChar).Value = ddlSex.Text.Trim
            .Parameters.Add("@mName", Data.SqlDbType.VarChar).Value = txtMName.Text.Trim
            .Parameters.Add("@weight", Data.SqlDbType.Decimal).Value = txtWeight.Text.Trim
            .Parameters.Add("@street", Data.SqlDbType.VarChar).Value = txtStreet.Text.Trim
            .Parameters.Add("@city", Data.SqlDbType.VarChar).Value = txtCity.Text.Trim
            .Parameters.Add("@region", Data.SqlDbType.VarChar).Value = txtRegion.Text.Trim
            .Parameters.Add("@NACCode", Data.SqlDbType.NChar).Value = txtNACCode.Text.Trim
            .Parameters.Add("@phoneNumber", Data.SqlDbType.NChar).Value = txtPhone.Text.Trim
            .Parameters.Add("@occupation", Data.SqlDbType.VarChar).Value = txtOccupation.Text.Trim
            .Parameters.Add("@maritalStatus", Data.SqlDbType.VarChar).Value = txtMaritalStatus.Text.Trim
            .Parameters.Add("@children", Data.SqlDbType.VarChar).Value = txtChildren.Text.Trim
            .Parameters.Add("@nextOfKen", Data.SqlDbType.VarChar).Value = txtNextOfKen.Text.Trim

            .ExecuteNonQuery()

        End With

        objCmd.Dispose()
        objCon.Close()
        objCon.Dispose()


    End Sub

End Class
