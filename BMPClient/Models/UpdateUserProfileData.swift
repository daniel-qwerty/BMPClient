//
// UpdateUserProfileData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class UpdateUserProfileData: JSONEncodable {
    /** User email */
    public var email: String?
    /** User first name */
    public var firstName: String?
    /** User last name */
    public var lastName: String?
    /** 0 or 1 */
    public var gender: Int32?
    /** User city */
    public var city: String?
    /** User state */
    public var state: String?
    /** User zip code */
    public var zipCode: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["email"] = self.email
        nillableDictionary["first_name"] = self.firstName
        nillableDictionary["last_name"] = self.lastName
        nillableDictionary["gender"] = self.gender?.encodeToJSON()
        nillableDictionary["city"] = self.city
        nillableDictionary["state"] = self.state
        nillableDictionary["zip_code"] = self.zipCode
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
