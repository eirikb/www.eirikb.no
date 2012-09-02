using System.Runtime.InteropServices;
using Microsoft.SharePoint;

namespace Eirikb.SharePoint.Bootstrap.Features.Bootstrap
{
    [Guid("cd9b0999-d6fa-400e-a006-4b2951e55eb4")]
    public class GeniusBootstrapEventReceiver : SPFeatureReceiver
    {
        private static void SetMasterOnWeb(SPFeatureReceiverProperties properties, string masterUrl)
        {
            var site = (SPSite) properties.Feature.Parent;
            var web = site.RootWeb;
            web.MasterUrl = masterUrl;
            web.CustomMasterUrl = masterUrl;
            web.Update();
        }

        private static void SetDefaultPage(SPFeatureReceiverProperties properties, string fileName)
        {
            var site = (SPSite) properties.Feature.Parent;
            var rootFolder = site.RootWeb.RootFolder;
            rootFolder.WelcomePage = fileName;
            rootFolder.Update();
        }

        public override void FeatureActivated(SPFeatureReceiverProperties properties)
        {
            SetDefaultPage(properties, "Home.aspx");
        }

        public override void FeatureDeactivating(SPFeatureReceiverProperties properties)
        {
            SetDefaultPage(properties, "Pages/default.aspx");
            var site = (SPSite) properties.Feature.Parent;
            var web = site.RootWeb;
            web.GetFile("Home.aspx").Delete();
            web.Update();
        }
    }
}