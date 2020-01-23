Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("http://www.kennesaw.edu")
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles txtName.TextChanged

    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtEmail.Text = ""
        txtName.Text = ""
        txtPhone.Text = ""
        txtQuantity.Text = ""
        txtZip.Text = ""
        lblMessage.Text = ""

        txtName.Focus()

    End Sub
End Class