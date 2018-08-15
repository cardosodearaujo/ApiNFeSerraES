﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Routing;

namespace UnclePhill.WebAPI_NFeS.API
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.IgnoreRoute("{*url}", new { url = @".*\.asmx(/.*)?" });
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Login", 
                url: "{controller}/{action}/{Email}/{Password}",
                defaults: new
                {
                    controller = "User",
                    action = "Login",
                    Email = UrlParameter.Optional,
                    Password = UrlParameter.Optional
                });
        }
    }
}
