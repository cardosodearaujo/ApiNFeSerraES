﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using UnclePhill.WebAPI_NFeS.API.Models;

namespace UnclePhill.WebAPI_NFeS.API.Controllers
{
    public class MasterController : Controller
    {
        protected ConnectionManager Conn = new ConnectionManager();
        protected StringBuilder SQL = new StringBuilder();

        // GET: API
        public ActionResult Index()
        {
            return View();
        }
    }
}