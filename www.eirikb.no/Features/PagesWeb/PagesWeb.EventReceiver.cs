using System.IO;
using System.Runtime.InteropServices;
using Microsoft.SharePoint;

namespace Eirikb.SharePoint.Pages.Features.PagesWeb
{
    [Guid("01ea412d-cc31-43ca-98b7-308342c7d463")]
    public class PagesWebEventReceiver : SPFeatureReceiver
    {
        public override void FeatureDeactivating(SPFeatureReceiverProperties properties)
        {
            var web = (SPWeb) properties.Feature.Parent;
            web.GetFile("Home.aspx").Delete();
            web.GetFolder("Dump").Delete();
        }

        public override void FeatureActivated(SPFeatureReceiverProperties properties)
        {
            base.FeatureActivated(properties);
            var web = (SPWeb) properties.Feature.Parent;
            var rootFolder = web.RootFolder;
            rootFolder.WelcomePage = "Home.aspx";
            rootFolder.Update();
        }
    }
}
