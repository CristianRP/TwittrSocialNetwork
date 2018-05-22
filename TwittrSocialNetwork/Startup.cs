using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TwittrSocialNetwork.Startup))]
namespace TwittrSocialNetwork
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
