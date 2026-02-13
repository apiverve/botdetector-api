declare module '@apiverve/botdetector' {
  export interface botdetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface botdetectorResponse {
    status: string;
    error: string | null;
    data: BotDetectorData;
    code?: number;
  }


  interface BotDetectorData {
      userAgent: string;
      isBot:     boolean;
      bot:       Bot;
  }
  
  interface Bot {
      name:     string;
      category: string;
      url:      string;
  }

  export default class botdetectorWrapper {
    constructor(options: botdetectorOptions);

    execute(callback: (error: any, data: botdetectorResponse | null) => void): Promise<botdetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: botdetectorResponse | null) => void): Promise<botdetectorResponse>;
    execute(query?: Record<string, any>): Promise<botdetectorResponse>;
  }
}
