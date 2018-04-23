<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.2" Namespace="DevExpress.Web"
    TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v15.2" Namespace="DevExpress.Web.ASPxScheduler"
    TagPrefix="dxwschs" %>
<%@ Register Assembly="DevExpress.XtraScheduler.v15.2.Core" Namespace="DevExpress.XtraScheduler"
    TagPrefix="dxschsc" %>
<%@ Register Src="~/DefaultObjectDataSources.ascx" TagPrefix="dds" TagName="DefaultObjectDataSource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dds:DefaultObjectDataSource runat="server" ID="DataSource1" />
        <br />
        <table>
            <tr>
                <td>Start Time:</td>
                <td>
                    <dxe:ASPxDateEdit ID="edtStart" runat="server" EditFormat="DateTime">
                    </dxe:ASPxDateEdit>
                </td>
            </tr>
            <tr>
                <td>End Time:</td>
                <td>
                    <dxe:ASPxDateEdit ID="edtEnd" runat="server" EditFormat="DateTime">
                    </dxe:ASPxDateEdit>
                </td>        
            </tr>
            <tr>
                <td colspan="2"> 
                    <dxe:ASPxButton ID="btnCreate" runat="server" AutoPostBack="False" Text="Show inplace editor">
                        <ClientSideEvents Click="function(s, e) {
                            scheduler.ShowInplaceEditor(edtStart.GetDate(), edtEnd.GetDate());
                         }" />
                    </dxe:ASPxButton>
                </td>
            </tr>
        </table>
        <br />
        <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" ClientInstanceName="scheduler">
            <Views>
                <DayView>
                    <TimeRulers>
                        <dxschsc:TimeRuler>
                        </dxschsc:TimeRuler>
                    </TimeRulers>
                </DayView>
                <WorkWeekView>
                    <TimeRulers>
                        <dxschsc:TimeRuler>
                        </dxschsc:TimeRuler>
                    </TimeRulers>
                </WorkWeekView>
            </Views>
        </dxwschs:ASPxScheduler>
    </div>
    </form>
</body>
</html>
