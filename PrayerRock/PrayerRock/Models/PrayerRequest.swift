// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let prayer = try Prayer(json)

import Foundation

// MARK: - Prayer
struct Prayer: Codable {
    var approvedByPersonAlias: JSONNull?
    var requestedByPersonAliasID: Int?
    //var attributes: Attribute
    var languageValueID: JSONNull?
    var categoryID: Int?
    var expirationDate: String?
    var email: String?
    //var answer: JSONNull?
    var idKey: String?
    var lastName: String?
    var enteredDateTime: String?
    var allowComments: Bool
    var flagCount: JSONNull?
    var isPublic: Bool
    var category: JSONNull?
    var modifiedDateTime: String
    //var attributeValues: Attribute
    //var createdByPersonAliasID: JSONNull?
    var modifiedAuditValuesAlreadyUpdated: Bool
    var foreignGUID: JSONNull?
    var guid: String
    //var approvedByPersonAliasID: JSONNull?
    var createdDateTime: String
    var foreignKey: JSONNull?
    var isApproved: Bool
    var groupID: JSONNull?
    var foreignID: JSONNull?
    var isActive: Bool
    var text: String
    var isUrgent: Bool
    var campusID: Int
    var languageValue: JSONNull?
    var firstName: String
    var modifiedByPersonAliasID: Int?
    var id: Int
    var requestedByPersonAlias: JSONNull?
    var approvedOnDateTime: String
    var prayerCount: Int?

    enum CodingKeys: String, CodingKey {
        case approvedByPersonAlias = "ApprovedByPersonAlias"
        case requestedByPersonAliasID = "RequestedByPersonAliasId"
        //case attributes = "Attributes"
        case languageValueID = "LanguageValueId"
        case categoryID = "CategoryId"
        case expirationDate = "ExpirationDate"
        case email = "Email"
        //case answer = "Answer"
        case idKey = "IdKey"
        case lastName = "LastName"
        case enteredDateTime = "EnteredDateTime"
        case allowComments = "AllowComments"
        case flagCount = "FlagCount"
        case isPublic = "IsPublic"
        case category = "Category"
        case modifiedDateTime = "ModifiedDateTime"
        //case attributeValues = "AttributeValues"
        //case createdByPersonAliasID = "CreatedByPersonAliasId"
        case modifiedAuditValuesAlreadyUpdated = "ModifiedAuditValuesAlreadyUpdated"
        case foreignGUID = "ForeignGuid"
        case guid = "Guid"
        //case approvedByPersonAliasID = "ApprovedByPersonAliasId"
        case createdDateTime = "CreatedDateTime"
        case foreignKey = "ForeignKey"
        case isApproved = "IsApproved"
        case groupID = "GroupId"
        case foreignID = "ForeignId"
        case isActive = "IsActive"
        case text = "Text"
        case isUrgent = "IsUrgent"
        case campusID = "CampusId"
        case languageValue = "LanguageValue"
        case firstName = "FirstName"
        case modifiedByPersonAliasID = "ModifiedByPersonAliasId"
        case id = "Id"
        case requestedByPersonAlias = "RequestedByPersonAlias"
        case approvedOnDateTime = "ApprovedOnDateTime"
        case prayerCount = "PrayerCount"
    }
}

// MARK: Prayer convenience initializers and mutators

extension Prayer {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Prayer.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        approvedByPersonAlias: JSONNull?? = nil,
        requestedByPersonAliasID: Int? = nil,
        //attributes: Attribute? = nil,
        languageValueID: JSONNull?? = nil,
        categoryID: Int? = nil,
        expirationDate: String? = nil,
        email: String? = nil,
        //answer: JSONNull?? = nil,
        idKey: String? = nil,
        lastName: String? = nil,
        enteredDateTime: String? = nil,
        allowComments: Bool? = nil,
        flagCount: JSONNull?? = nil,
        isPublic: Bool? = nil,
        category: JSONNull?? = nil,
        modifiedDateTime: String? = nil,
        //attributeValues: Attribute? = nil,
        //createdByPersonAliasID: JSONNull?? = nil,
        modifiedAuditValuesAlreadyUpdated: Bool? = nil,
        foreignGUID: JSONNull?? = nil,
        guid: String? = nil,
        //approvedByPersonAliasID: JSONNull?? = nil,
        createdDateTime: String? = nil,
        foreignKey: JSONNull?? = nil,
        isApproved: Bool? = nil,
        groupID: JSONNull?? = nil,
        foreignID: JSONNull?? = nil,
        isActive: Bool? = nil,
        text: String? = nil,
        isUrgent: Bool? = nil,
        campusID: Int? = nil,
        languageValue: JSONNull?? = nil,
        firstName: String? = nil,
        modifiedByPersonAliasID: Int? = nil,
        id: Int? = nil,
        requestedByPersonAlias: JSONNull?? = nil,
        approvedOnDateTime: String? = nil,
        prayerCount: Int? = nil
    ) -> Prayer {
        return Prayer(
            approvedByPersonAlias: approvedByPersonAlias ?? self.approvedByPersonAlias,
            requestedByPersonAliasID: requestedByPersonAliasID ?? self.requestedByPersonAliasID,
            //attributes: attributes ?? self.attributes,
            languageValueID: languageValueID ?? self.languageValueID,
            categoryID: categoryID ?? self.categoryID,
            expirationDate: expirationDate ?? self.expirationDate,
            email: email ?? self.email,
            //answer: answer ?? self.answer,
            idKey: idKey ?? self.idKey,
            lastName: lastName ?? self.lastName,
            enteredDateTime: enteredDateTime ?? self.enteredDateTime,
            allowComments: allowComments ?? self.allowComments,
            flagCount: flagCount ?? self.flagCount,
            isPublic: isPublic ?? self.isPublic,
            category: category ?? self.category,
            modifiedDateTime: modifiedDateTime ?? self.modifiedDateTime,
            //attributeValues: attributeValues ?? self.attributeValues,
            //createdByPersonAliasID: createdByPersonAliasID ?? self.createdByPersonAliasID,
            modifiedAuditValuesAlreadyUpdated: modifiedAuditValuesAlreadyUpdated ?? self.modifiedAuditValuesAlreadyUpdated,
            foreignGUID: foreignGUID ?? self.foreignGUID,
            guid: guid ?? self.guid,
            //approvedByPersonAliasID: approvedByPersonAliasID ?? self.approvedByPersonAliasID,
            createdDateTime: createdDateTime ?? self.createdDateTime,
            foreignKey: foreignKey ?? self.foreignKey,
            isApproved: isApproved ?? self.isApproved,
            groupID: groupID ?? self.groupID,
            foreignID: foreignID ?? self.foreignID,
            isActive: isActive ?? self.isActive,
            text: text ?? self.text,
            isUrgent: isUrgent ?? self.isUrgent,
            campusID: campusID ?? self.campusID,
            languageValue: languageValue ?? self.languageValue,
            firstName: firstName ?? self.firstName,
            modifiedByPersonAliasID: modifiedByPersonAliasID ?? self.modifiedByPersonAliasID,
            id: id ?? self.id,
            requestedByPersonAlias: requestedByPersonAlias ?? self.requestedByPersonAlias,
            approvedOnDateTime: approvedOnDateTime ?? self.approvedOnDateTime,
            prayerCount: prayerCount ?? self.prayerCount
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Attribute
struct Attribute: Codable {
}

// MARK: Attribute convenience initializers and mutators

extension Attribute {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Attribute.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
    ) -> Attribute {
        return Attribute(
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

extension Prayer {
    static var preview: Prayer {
        Prayer(allowComments: true, isPublic: true, modifiedDateTime: "12345", modifiedAuditValuesAlreadyUpdated: true, guid: "45678", createdDateTime: "4-5-21", isApproved: true, isActive: true, text: "String fo random text", isUrgent: false, campusID: 4, firstName: "First", id: 45, approvedOnDateTime: "5-7-22")
    }
}
