using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            this.edtStart.Date = new DateTime(2008, 8, 22, 8, 0, 0);
            this.edtEnd.Date = new DateTime(2008, 8, 22, 9, 0, 0);
        }
		DataHelper.SetupMappings(ASPxScheduler1);
		DataHelper.ProvideRowInsertion(ASPxScheduler1, DataSource1.AppointmentDataSource);
		DataSource1.AttachTo(ASPxScheduler1);

    }
}
