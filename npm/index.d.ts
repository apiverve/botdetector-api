declare module '@apiverve/botdetector' {
  export interface botdetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface botdetectorResponse {
    status: string;
    error: string | null;
    data: BotDetectorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BotDetectorData {
      userAgent:   null | string;
      isBot:       boolean | null;
      bot:         Bot;
      isAutomated: boolean | null;
      riskScore:   number | null;
      riskLevel:   null | string;
  }
  
  interface Bot {
      name:        null | string;
      category:    null | string;
      url:         null | string;
      reputation:  null | string;
      shouldBlock: boolean | null;
  }

  export default class botdetectorWrapper {
    constructor(options: botdetectorOptions);

    execute(callback: (error: any, data: botdetectorResponse | null) => void): Promise<botdetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: botdetectorResponse | null) => void): Promise<botdetectorResponse>;
    execute(query?: Record<string, any>): Promise<botdetectorResponse>;
  }
}
