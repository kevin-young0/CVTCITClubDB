'Author: Kevin Young
'Purpose: Search the DB for the patient
'Date: 05/06/2013

Option Strict On
Option Explicit On

Imports System.Data.SqlClient

Partial Class registration_Default
    Inherits System.Web.UI.Page

    Dim mstrCN As String =
        "Data Source=.\SQLEXPRESS;AttachDBFilename=|DataDirectory|\Database.mdf;" +
        "Integrated Security=True;User Instance=True;"

    Protected Sub btnSearch_Click(sender As Object, e As System.EventArgs) Handles btnSearch.Click

        sdsSearch.SelectParameters("lName").DefaultValue = txtLName.Text


        'Open DB
        ' Dim objCon As New SqlConnection(mstrCN)
        '  objCon.Open()

        'Define Command
        ' Dim objCmd As SqlCommand = New SqlCommand("uspSelectPatient", objCon)
        ' With objCmd
        '.CommandType = Data.CommandType.StoredProcedure

        'define parameters
        ' .Parameters.Add("@lName", Data.SqlDbType.VarChar)
        ' .Parameters("@lName").Value = txtLName.Text

        'End With

        'Define Data Adapter
        ' Dim objDataAdapter As New SqlDataAdapter(objCmd)

        'Define Dataset
        'Dim objDataSet As New Data.DataSet

        'Fill DataSet
        'objDataAdapter.Fill(objDataSet, "Patients")


        'Close Objects
        ' objCmd.Dispose()
        ' objDataAdapter.Dispose()
        'objCon.Close()
        'objCon.Dispose()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        lblPatient.Text = GridView1.SelectedRow.Cells(3).Text
    End Sub
End Class
