Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If Not IsPostBack Then
            Me.edtStart.Date = New Date(2008, 8, 22, 8, 0, 0)
            Me.edtEnd.Date = New Date(2008, 8, 22, 9, 0, 0)
        End If
        DataHelper.SetupMappings(ASPxScheduler1)
        DataHelper.ProvideRowInsertion(ASPxScheduler1, DataSource1.AppointmentDataSource)
        DataSource1.AttachTo(ASPxScheduler1)

    End Sub
End Class
