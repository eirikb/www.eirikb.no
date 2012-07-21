using System.Runtime.InteropServices;
using Microsoft.SharePoint;

namespace Genius.SharePoint.Bootstrap.Features.GeniusBootstrap
{
    [Guid("cd9b0999-d6fa-400e-a006-4b2951e55eb4")]
    public class GeniusBootstrapEventReceiver : SPFeatureReceiver
    {
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
        }
    }
}