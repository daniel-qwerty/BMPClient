//
// ProfileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire



open class ProfileAPI: APIBase {
    /**
     Get profile info for authenticated user
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserProfile(completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        getUserProfileWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get profile info for authenticated user
     - GET /profile
     - API Key:
       - type: apiKey Authorization 
       - name: AuthToken
     - examples: [{contentType=application/json, example={
  "free_post_count" : "",
  "avatar_file_url" : "https://s3-aws-region.amazonaws.com/avatar/12/sample.png",
  "gender" : 1,
  "city" : "Washington",
  "vote_limit" : "",
  "last_name" : "Darth",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "free_post_limit_per_month" : "",
  "zip_code" : "11622",
  "is_admin" : false,
  "id" : 5,
  "state" : "MS",
  "first_name" : "Vader",
  "vote_count" : "",
  "email" : "darth.vader@galaxy-imperia.gov"
}}]

     - returns: RequestBuilder<User> 
     */
    open class func getUserProfileWithRequestBuilder() -> RequestBuilder<User> {
        let path = "/profile"
        let URLString = BPMClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        //let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = BPMClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     Update user password
     
     - parameter updateUserPasswordBody: (body) Passwords data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserPassword(updateUserPasswordBody: UpdateUserPasswordBody, completion: @escaping ((_ data: SuccessConfirmation?,_ error: Error?) -> Void)) {
        updateUserPasswordWithRequestBuilder(updateUserPasswordBody: updateUserPasswordBody).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update user password
     - PUT /profile/password
     - API Key:
       - type: apiKey Authorization 
       - name: AuthToken
     - examples: [{contentType=application/json, example={
  "message" : "aeiou"
}}]
     
     - parameter updateUserPasswordBody: (body) Passwords data 

     - returns: RequestBuilder<SuccessConfirmation> 
     */
    open class func updateUserPasswordWithRequestBuilder(updateUserPasswordBody: UpdateUserPasswordBody) -> RequestBuilder<SuccessConfirmation> {
        let path = "/profile/password"
        let URLString = BPMClientAPI.basePath + path
        let parameters = updateUserPasswordBody.encodeToJSON() as? [String:AnyObject]
 
        //let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<SuccessConfirmation>.Type = BPMClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     Update User Profile
     
     - parameter updateUserProfileData: (body) User Data (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserProfile(updateUserProfileData: UpdateUserProfileData? = nil, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        updateUserProfileWithRequestBuilder(updateUserProfileData: updateUserProfileData).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update User Profile
     - PUT /profile
     - API Key:
       - type: apiKey Authorization 
       - name: AuthToken
     - examples: [{contentType=application/json, example={
  "free_post_count" : "",
  "avatar_file_url" : "https://s3-aws-region.amazonaws.com/avatar/12/sample.png",
  "gender" : 1,
  "city" : "Washington",
  "vote_limit" : "",
  "last_name" : "Darth",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "free_post_limit_per_month" : "",
  "zip_code" : "11622",
  "is_admin" : false,
  "id" : 5,
  "state" : "MS",
  "first_name" : "Vader",
  "vote_count" : "",
  "email" : "darth.vader@galaxy-imperia.gov"
}}]
     
     - parameter updateUserProfileData: (body) User Data (optional)

     - returns: RequestBuilder<User> 
     */
    open class func updateUserProfileWithRequestBuilder(updateUserProfileData: UpdateUserProfileData? = nil) -> RequestBuilder<User> {
        let path = "/profile"
        let URLString = BPMClientAPI.basePath + path
        let parameters = updateUserProfileData?.encodeToJSON() as? [String:AnyObject]
 
        //let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = BPMClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
    }

    /**
     Upload profile avatar
     
     - parameter avatar: (form) The uploaded file data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadProfileAvatar(avatar: URL, completion: @escaping ((_ data: User?,_ error: Error?) -> Void)) {
        uploadProfileAvatarWithRequestBuilder(avatar: avatar).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Upload profile avatar
     - POST /profile/avatar
     - API Key:
       - type: apiKey Authorization 
       - name: AuthToken
     - examples: [{contentType=application/json, example={
  "free_post_count" : "",
  "avatar_file_url" : "https://s3-aws-region.amazonaws.com/avatar/12/sample.png",
  "gender" : 1,
  "city" : "Washington",
  "vote_limit" : "",
  "last_name" : "Darth",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "free_post_limit_per_month" : "",
  "zip_code" : "11622",
  "is_admin" : false,
  "id" : 5,
  "state" : "MS",
  "first_name" : "Vader",
  "vote_count" : "",
  "email" : "darth.vader@galaxy-imperia.gov"
}}]
     
     - parameter avatar: (form) The uploaded file data 

     - returns: RequestBuilder<User> 
     */
    open class func uploadProfileAvatarWithRequestBuilder(avatar: URL) -> RequestBuilder<User> {
        let path = "/profile/avatar"
        let URLString = BPMClientAPI.basePath + path

        let nillableParameters: [String:Any?] = [
            "avatar": avatar
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        //let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = BPMClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
    }

}
