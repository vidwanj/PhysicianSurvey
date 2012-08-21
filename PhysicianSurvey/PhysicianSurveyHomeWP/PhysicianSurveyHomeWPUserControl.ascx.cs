using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using System.Data;

namespace PhysicianSurvey.PhysicianSurveyHomeWP
{
    public partial class PhysicianSurveyHomeWPUserControl : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    // string strUser = SPContext.Current.Web.CurrentUser.LoginName;    // login name for current user
                    ProcessPage();
                }
            }
            catch (Exception ex)
            {
                lblError.Visible = true;
                lblError.Text = ex.Message;
            }
        }

        private void ProcessPage()
        {
            try
            {
                SPWeb web = SPContext.Current.Web;
                SPUser SpUser = SPContext.Current.Web.CurrentUser;
                string strUserLoginName = SPContext.Current.Web.CurrentUser.Name;
                SPList lstEnterpriseSurvey = web.Lists["EnterpriseSurvey_Submit Form List"];
                SPView view = lstEnterpriseSurvey.Views["EnterpriseSurveyView"];
                SPQuery query = new SPQuery(view);
                query.Query = @"<Where><Eq><FieldRef Name='Author' /><Value Type='User'>" + strUserLoginName + "</Value></Eq></Where>";
                SPListItemCollection listItems = lstEnterpriseSurvey.GetItems(query);
                if (listItems != null && listItems.GetDataTable() != null)
                {
                    DataTable dtUserRcord = listItems.GetDataTable();
                    if (dtUserRcord.Rows.Count == 1)
                    {
                        if (dtUserRcord.Rows[0]["Status"].ToString() == "Draft")
                        {
                            imgBtnContinue.Visible = true;
                            imgBtnContinue.PostBackUrl = SPContext.Current.Web.Url + "/Lists/EnterpriseSurvey_Submit%20Form%20List/Item/editifs.aspx?List=" + lstEnterpriseSurvey.ID + "&ID=" + dtUserRcord.Rows[0]["ID"].ToString() + "&ContentTypeId=" + web.Lists["EnterpriseSurvey_Submit Form List"].ContentTypes["Item"].Id + "&source=" + SPContext.Current.Web.Url;
                        }
                        else if (dtUserRcord.Rows[0]["Status"].ToString() == "Submitted")
                        {
                            imgBtnView.Visible = true;
                            imgBtnView.PostBackUrl = SPContext.Current.Web.Url + "/Lists/EnterpriseSurvey_Submit%20Form%20List/Item/editifs.aspx?List=" + lstEnterpriseSurvey.ID + "&ID=" + dtUserRcord.Rows[0]["ID"].ToString() + "&ContentTypeId=" + web.Lists["EnterpriseSurvey_Submit Form List"].ContentTypes["Item"].Id;
                        }
                    }
                    else if (dtUserRcord.Rows.Count > 1)
                    {
                        throw new Exception("Too many records !!!");
                    }
                    else
                    {
                        imgBtnStartNow.Visible = true;
                        imgBtnStartNow.PostBackUrl = SPContext.Current.Web.Url + "/Lists/EnterpriseSurvey_Submit%20Form%20List/Item/newifs.aspx?List=" + lstEnterpriseSurvey.ID + "&source=" + SPContext.Current.Web.Url;
                    }
                }
                else
                {
                    imgBtnStartNow.Visible = true;
                    imgBtnStartNow.PostBackUrl = SPContext.Current.Web.Url + "/Lists/EnterpriseSurvey_Submit%20Form%20List/Item/newifs.aspx?List=" + lstEnterpriseSurvey.ID + "&source=" + SPContext.Current.Web.Url;
                }
            }
            catch (Exception ex)
            {
                lblError.Visible = true;
                lblError.Text = ex.Message;
            }
        }
    }
}