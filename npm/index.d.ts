declare module '@apiverve/bucketlist' {
  export interface bucketlistOptions {
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

  export interface bucketlistResponse {
    status: string;
    error: string | null;
    data: BucketListData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BucketListData {
      bucketListItem: null | string;
  }

  export default class bucketlistWrapper {
    constructor(options: bucketlistOptions);

    execute(callback: (error: any, data: bucketlistResponse | null) => void): Promise<bucketlistResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: bucketlistResponse | null) => void): Promise<bucketlistResponse>;
    execute(query?: Record<string, any>): Promise<bucketlistResponse>;
  }
}
