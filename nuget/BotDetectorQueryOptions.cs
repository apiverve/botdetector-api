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

        /// <summary>
        /// Optional IP the request came from. When the user agent claims to be a Google, Bing, OpenAI or Apple crawler, it is checked against that operator's published IP ranges
        /// </summary>
        [JsonProperty("ip")]
        public string Ip { get; set; }
    }
}
