using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProtechCRM
{
    public partial class CRMpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void Clear()
        {
            txtPhone.Text = txtCaseId.Text = txtaltNumberDri.Text = txtAltNumberOwn.Text = txtComment.Text = "";
            ddlCaseType.SelectedIndex = ddlCallerType.SelectedIndex = ddlContact.SelectedIndex
          = ddlConnect.SelectedIndex = ddlIssue.SelectedIndex = ddlCaseStatus.SelectedIndex
          = ddlDealer.SelectedIndex = ddlConCall.SelectedIndex = ddlAmbulanceSupport.SelectedIndex
          = ddlAmbulanceBooking.SelectedIndex = ddlSelectDispose.SelectedIndex = ddlSubDisposition.SelectedIndex = -1;

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtPhone.Text == "")
                {
                    Response.Write("Please Fill Mandatory");
                }
                else
                {
                    string constr = WebConfigurationManager.ConnectionStrings["SQLCONN"].ToString();
                    SqlConnection conn = new SqlConnection(constr);
                    string query = "INSERT INTO[dbo].[ProtechCRM]([Phone], [Case_Id], [Case_Type]," +
                        "[Alt_Number_Driver], [Alt_Number_Owner], [Caller_Type], [Contact_Source], " +
                        "[Connectivity], [Issue_Verified], [Call_Status], [Dealer_Sup_Req], [Con_Call]," +
                        " [Ambulance_Sup_Req], [Ambulance_Book_Req], [Disposition],[Sub_Disposition],[Comments] , [InsertDt]) " +
                        "VALUES('" + txtPhone.Text + "','" + txtCaseId.Text + "','" + ddlCaseType.SelectedValue + "','" + txtaltNumberDri.Text + "'," +
                        "'" + txtAltNumberOwn.Text + "','" + ddlCallerType.SelectedValue + "','" + ddlContact.SelectedValue + "','" + ddlConnect.SelectedValue + "','" + ddlIssue.SelectedValue + "'" +
                        ",'" + ddlCaseStatus.SelectedValue + "','" + ddlDealer.SelectedValue + "','" + ddlConCall.SelectedValue + "','" + ddlAmbulanceBooking.SelectedValue + "'," +
                        "'" + ddlAmbulanceSupport.SelectedValue + "','" + ddlSelectDispose.SelectedValue + "','" + ddlSubDisposition.SelectedValue + "', '" + txtComment.Text + "', GETDATE())";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Clear();

                }

            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }
    }
}