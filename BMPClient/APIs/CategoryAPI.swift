//
// CategoryAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class CategoryAPI: APIBase {
    /**
     Get all categories
     
     - parameter hasPost: (query) Only show categories having posts (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAllCategories(hasPost: Int32? = nil, completion: @escaping ((_ data: CategoryList?,_ error: Error?) -> Void)) {
        getAllCategoriesWithRequestBuilder(hasPost: hasPost).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get all categories
     - GET /categories
     - API Key:
       - type: apiKey Authorization 
       - name: AuthToken
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "parent_id" : "",
    "id" : 5,
    "post_count" : "",
    "category" : "Vader"
  } ],
  "meta" : {
    "pagination" : {
      "per_page" : "",
      "total" : "",
      "count" : "",
      "total_pages" : "",
      "current_page" : ""
    }
  }
}}]
     
     - parameter hasPost: (query) Only show categories having posts (optional)

     - returns: RequestBuilder<CategoryList> 
     */
    open class func getAllCategoriesWithRequestBuilder(hasPost: Int32? = nil) -> RequestBuilder<CategoryList> {
        let path = "/categories"
        let URLString = BPMClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "has_post": hasPost?.encodeToJSON()
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        //let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<CategoryList>.Type = BPMClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
    }

}
