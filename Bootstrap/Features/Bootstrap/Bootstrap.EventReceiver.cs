using System.Runtime.InteropServices;
using Microsoft.SharePoint;

namespace Eirikb.SharePoint.Bootstrap.Features.Bootstrap
{
    [Guid("0ac2f916-03fa-4224-a2d3-7728d74fb625")]
    public class BootstrapEventReceiver : SPFeatureReceiver
    {
        public override void FeatureActivated(SPFeatureReceiverProperties properties)
        {
            var site = (SPSite) properties.Feature.Parent;
            var web = site.RootWeb;

            var masterUrl = web.ServerRelativeUrl + "/_catalogs/masterpage/bootstrap.master";
            web.MasterUrl = masterUrl;
            web.CustomMasterUrl = masterUrl;
            web.Update();
        }
    }
}