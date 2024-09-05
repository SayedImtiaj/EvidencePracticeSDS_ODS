using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EvidencePracticeSDS_ODS.Startup))]
namespace EvidencePracticeSDS_ODS
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
