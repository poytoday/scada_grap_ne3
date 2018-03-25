
Partial Class peak_date
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = textbox1.Value
        Label2.Text = textbox2.Value
        Label1.Text = Label1.Text & " " & "00:00"
        Label2.Text = Label2.Text & " " & "23:59"
        Me.Chart1.Visible = True
    End Sub
End Class
