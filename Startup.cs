using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DiskinvLC.Startup))]
namespace DiskinvLC
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
