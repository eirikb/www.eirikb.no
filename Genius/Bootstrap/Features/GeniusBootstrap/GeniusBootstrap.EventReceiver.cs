using System;
using System.Runtime.InteropServices;
using Microsoft.SharePoint;

namespace Genius.SharePoint.Bootstrap.Features.GeniusBootstrap
{
    [Guid("cd9b0999-d6fa-400e-a006-4b2951e55eb4")]
    public class GeniusBootstrapEventReceiver : SPFeatureReceiver
    {
        private static void SetMasterOnWeb(SPSite site, SPWeb web, string master)
        {
            var masterUri = new Uri(String.Format("{0}/_catalogs/masterpage/{1}.master", site.Url, master));
            // Sites that are NOT publishing sites/pages
            web.MasterUrl = masterUri.AbsolutePath;
            // Sites taht ARE publishing sites/pages
            web.CustomMasterUrl = masterUri.AbsolutePath;
            web.Update();
        }

        public override void FeatureActivated(SPFeatureReceiverProperties properties)
        {
            var site = (SPSite) properties.Feature.Parent;
            foreach (SPWeb web in site.AllWebs)
            {
                SetMasterOnWeb(site, web, "root");
            }
        }


        public override void FeatureDeactivating(SPFeatureReceiverProperties properties)
        {
            var site = (SPSite) properties.Feature.Parent;
            foreach (SPWeb web in site.AllWebs)
            {
                SetMasterOnWeb(site, web, "v4");
            }
        }
    }
}