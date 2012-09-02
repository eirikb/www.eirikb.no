using System.Runtime.InteropServices;
using Microsoft.SharePoint;

namespace Genius.SharePoint.Bootstrap.Features.GeniusBootstrap
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

        private static void ClearFolder(SPWeb web, string folderName)
        {
            try
            {
                var folder = web.GetFolder(folderName);
                foreach (SPFile file in folder.Files)
                {
                    file.Delete();
                }
            }
            catch
            {
            }
        }

        public override void FeatureDeactivating(SPFeatureReceiverProperties properties)
        {
            SetDefaultPage(properties, "Pages/default.aspx");
            var site = (SPSite) properties.Feature.Parent;
            var web = site.RootWeb;
            web.GetFile("Home.aspx").Delete();
            ClearFolder(web, "css");
            ClearFolder(web, "img");
            ClearFolder(web, "js");
            ClearFolder(web, "wsp");
            web.Update();
        }
    }
}