
Partial Class schoolDetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delSchool As String = e.Values("schoolName").ToString()

        Response.Write("The record ")
        Response.Write("<span class=deletedschoolshighlight>")
        Response.Write(delSchool)
        Response.Write("</span> has been deleted from the database.")

        Response.AddHeader("REFRESH", "3;URL=./schools.aspx")

    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./schools.aspx")
    End Sub

End Class
