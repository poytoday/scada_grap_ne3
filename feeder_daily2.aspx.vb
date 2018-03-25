
Partial Class feeder_daily2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        databind1()
        
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.GridView1.Visible = True
    End Sub

    Protected Sub DropDownList2_TextChanged(sender As Object, e As EventArgs) Handles DropDownList2.TextChanged
        'Me.SqlDataSource11.DataBind()
        'databind1()
    End Sub
    Protected Sub databind1()
        Label1.Text = CStr(textbox1.Value) + " 00:00:00"
        Label2.Text = CStr(textbox2.Value) + " 23:59:00"
        Label3.Text = DropDownList1.Text
        Label4.Text = DropDownList2.Text
        Me.Chart11.Visible = True
        ' Me.Chart22.Visible = True
        'Me.Chart3.Visible = True
        ' Me.Chart4.Visible = True
        ' Me.Chart5.Visible = True
        ' Me.Panel1.Visible = True
        Me.ImageButton1.Visible = True
        Me.GridView1.Visible = False
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        ExportToExcel("Report_daily_5graph_" & Date.Now.ToShortDateString & ".xls", GridView1)
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

    Protected Sub Chart11_Load(sender As Object, e As EventArgs) Handles Chart11.Load

    End Sub
End Class
