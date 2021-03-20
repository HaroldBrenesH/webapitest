using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Net;
using System.Net.Sockets;
namespace webapiTest.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class CpuInfoController : ControllerBase
    {
         private readonly ILogger<CpuInfoController> _logger;

        public CpuInfoController(ILogger<CpuInfoController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public CpuInfo Get()
        {
            var cpuInfo = new CpuInfo();
            var hostName = Dns.GetHostName();
            var ips= from ip 
                    in Dns.GetHostAddresses(hostName) 
                    where ip.AddressFamily== AddressFamily.InterNetwork 
                    select ip.ToString();

            var ipAddresses= string.Join("; ",ips);
            cpuInfo.ipAddresses=ipAddresses;
            cpuInfo.Date= DateTime.Now;
            cpuInfo.ComputerName=hostName;

        return cpuInfo;
        }
    }
}
