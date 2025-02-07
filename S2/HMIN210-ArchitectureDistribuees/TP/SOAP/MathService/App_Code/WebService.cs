﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int Add(int a, int b)
    {
        return (a + b);
    }

    [WebMethod]
    public System.Single Subtract(System.Single A, System.Single B)
    {
        return (A - B);
    }

    [WebMethod]
    public System.Single Multiply(System.Single A, System.Single B)
    {
        return A * B;
    }

    [WebMethod]
    public System.Single Divide(System.Single A, System.Single B)
    {
        if (B == 0)
            return -1;
        return Convert.ToSingle(A / B);
    }

}
