
Partial Class feeder_daily
    Inherits System.Web.UI.Page

    Protected Sub Label1_Load(sender As Object, e As EventArgs)

    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

            Label1.Text = CStr(textbox1.Value) + " 00:00:00"
            Label2.Text = CStr(textbox2.Value) + " 23:59:00"
        Me.Chart1.Visible = True
        Me.GridView1.Visible = True
        Me.ImageButton1.Visible = True
    End Sub




    Protected Sub Chart1_Load(sender As Object, e As EventArgs) Handles Chart1.Load

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        ExportToExcel("Report_daily_" & Date.Now.ToShortDateString & ".xls", GridView1)
    End Sub
    Private Sub ExportToExcel(ByVal strFileName As String, ByVal dg As GridView)
        Response.Clear()
        Response.Buffer = True
        Response.ContentType = "application/vnd.ms-excel"
        Response.AddHeader("content-disposition", "attachment;filename=" & strFileName)
        Response.Charset = "Utf-8"
        Me.EnableViewState = False
        Dim oStringWriter As New System.IO.StringWriter
        Dim oHtmlTextWriter As New System.Web.UI.HtmlTextWriter(oStringWriter)

        dg.RenderControl(oHtmlTextWriter)

        Response.Write(oStringWriter.ToString())
        Response.[End]()

    End Sub
    Public Overloads Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)

    End Sub

  

End Class
