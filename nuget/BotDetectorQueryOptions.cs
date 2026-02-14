using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BotDetector
{
    /// <summary>
    /// Query options for the Bot Detector API
    /// </summary>
    public class BotDetectorQueryOptions
    {
        /// <summary>
        /// The user agent string to analyze (URL encoded)
        /// </summary>
        [JsonProperty("ua")]
        public string Ua { get; set; }
    }
}
