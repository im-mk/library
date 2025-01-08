using Microsoft.AspNetCore.Mvc;
using Dapper;
using Npgsql;
using System.Collections.Generic;
using System.Data;

namespace WebApplication3.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private readonly IDbConnection _dbConnection;
        private readonly ILogger<WeatherForecastController> _logger;

        public WeatherForecastController(
            ILogger<WeatherForecastController> logger,
        IDbConnection dbConnection)
        {
            _logger = logger;
            _dbConnection = dbConnection;
        }

        [HttpGet]
        public IEnumerable<string> GetDb()
        {
            var result = _dbConnection.Query<string>("SELECT name FROM public.orders");
            return result;
        }
    }
}
