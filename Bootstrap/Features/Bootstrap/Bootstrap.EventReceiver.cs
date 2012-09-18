using System.Runtime.InteropServices;
using Microsoft.SharePoint;

namespace Eirikb.SharePoint.Bootstrap.Features.Bootstrap
{
    [Guid("0ac2f916-03fa-4224-a2d3-7728d74fb625")]
    public class BootstrapEventReceiver : SPFeatureReceiver
    {
        private static void SetMasterpageOnWeb(SPFeatureReceiverProperties properties, string masterUrl)
        {
            var web = (SPWeb)properties.Feature.Parent;
            masterUrl = "/_catalogs/masterpage/" + masterUrl;
            web.MasterUrl = masterUrl;
            web.CustomMasterUrl = masterUrl;
            web.Update();
        }

        public override void FeatureActivated(SPFeatureReceiverProperties properties)
        {
            SetMasterpageOnWeb(properties, "bootstrap.master");
        }

        public override void FeatureDeactivating(SPFeatureReceiverProperties properties)
        {
            SetMasterpageOnWeb(properties, "root.master");
        }
    }
}