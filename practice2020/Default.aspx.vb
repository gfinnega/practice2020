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

    Protected Sub btnCalculate_Click(sender As Object, e As EventArgs) Handles btnCalculate.Click
        lblMessage.Text = ""
        'this is a comment 
        ' shipping fee
        Dim shippingfee As Double = 5
        Dim quanity As Double = Double.Parse(txtQuantity.Text)
        Dim subtotal As Double = ddlItem.SelectedValue * quanity
        Dim total As Double = subtotal * 1.07
        Dim finaltotal As Double = total + shippingfee

        lstSummary.Items.Add("Order Summary")
        lstSummary.Items.Add("**************")
        lstSummary.Items.Add("Name: " & txtName.Text)
        lstSummary.Items.Add("Phone: " & txtPhone.Text)
        lstSummary.Items.Add("Email: " & txtEmail.Text)
        lstSummary.Items.Add("**************")
        lstSummary.Items.Add("Product Summary: " + ddlItem.SelectedItem.Text)
        lstSummary.Items.Add("Quanity: " & quanity)
        lstSummary.Items.Add("Product Price: $" & subtotal.ToString("n2"))
    End Sub
End Class