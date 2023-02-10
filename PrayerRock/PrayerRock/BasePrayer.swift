//
//  BaseClass.swift
//
//  Created by Matt Ross on 2/6/23
//  Copyright (c) . All rights reserved.
//

import Foundation

struct BasePrayer: Codable {

  enum CodingKeys: String, CodingKey {
    case idKey = "IdKey"
    case enteredDateTime = "EnteredDateTime"
    case lastName = "LastName"
    case allowComments = "AllowComments"
    case categoryId = "CategoryId"
    case isActive = "IsActive"
    case createdDateTime = "CreatedDateTime"
    case isUrgent = "IsUrgent"
    case modifiedAuditValuesAlreadyUpdated = "ModifiedAuditValuesAlreadyUpdated"
    case approvedByPersonAliasId = "ApprovedByPersonAliasId"
    case createdByPersonAliasId = "CreatedByPersonAliasId"
    case expirationDate = "ExpirationDate"
    case modifiedByPersonAliasId = "ModifiedByPersonAliasId"
    case id = "Id"
    case email = "Email"
    case campusId = "CampusId"
    case isApproved = "IsApproved"
    case attributeValues = "AttributeValues"
    case text = "Text"
    case guid = "Guid"
    case answer = "Answer"
    case approvedOnDateTime = "ApprovedOnDateTime"
    case isPublic = "IsPublic"
    case requestedByPersonAliasId = "RequestedByPersonAliasId"
    case attributes = "Attributes"
    case prayerCount = "PrayerCount"
    case modifiedDateTime = "ModifiedDateTime"
    case firstName = "FirstName"
  }

  var idKey: String?
  var enteredDateTime: String?
  var lastName: String?
  var allowComments: Bool?
  var categoryId: Int?
  var isActive: Bool?
  var createdDateTime: String?
  var isUrgent: Bool?
  var modifiedAuditValuesAlreadyUpdated: Bool?
  var approvedByPersonAliasId: Int?
  var createdByPersonAliasId: Int?
  var expirationDate: String?
  var modifiedByPersonAliasId: Int?
  var id: Int?
  var email: String?
  var campusId: Int?
  var isApproved: Bool?
  //var attributeValues: AttributeValues?
  var text: String?
  var guid: String?
  var answer: String?
  var approvedOnDateTime: String?
  var isPublic: Bool?
  var requestedByPersonAliasId: Int?
  //var attributes: Attributes?
  var prayerCount: Int?
  var modifiedDateTime: String?
  var firstName: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    idKey = try container.decodeIfPresent(String.self, forKey: .idKey)
    enteredDateTime = try container.decodeIfPresent(String.self, forKey: .enteredDateTime)
    lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
    allowComments = try container.decodeIfPresent(Bool.self, forKey: .allowComments)
    categoryId = try container.decodeIfPresent(Int.self, forKey: .categoryId)
    isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
    createdDateTime = try container.decodeIfPresent(String.self, forKey: .createdDateTime)
    isUrgent = try container.decodeIfPresent(Bool.self, forKey: .isUrgent)
    modifiedAuditValuesAlreadyUpdated = try container.decodeIfPresent(Bool.self, forKey: .modifiedAuditValuesAlreadyUpdated)
    approvedByPersonAliasId = try container.decodeIfPresent(Int.self, forKey: .approvedByPersonAliasId)
    createdByPersonAliasId = try container.decodeIfPresent(Int.self, forKey: .createdByPersonAliasId)
    expirationDate = try container.decodeIfPresent(String.self, forKey: .expirationDate)
    modifiedByPersonAliasId = try container.decodeIfPresent(Int.self, forKey: .modifiedByPersonAliasId)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    email = try container.decodeIfPresent(String.self, forKey: .email)
    campusId = try container.decodeIfPresent(Int.self, forKey: .campusId)
    isApproved = try container.decodeIfPresent(Bool.self, forKey: .isApproved)
    //attributeValues = try container.decodeIfPresent(AttributeValues.self, forKey: .attributeValues)
    text = try container.decodeIfPresent(String.self, forKey: .text)
    guid = try container.decodeIfPresent(String.self, forKey: .guid)
    answer = try container.decodeIfPresent(String.self, forKey: .answer)
    approvedOnDateTime = try container.decodeIfPresent(String.self, forKey: .approvedOnDateTime)
    isPublic = try container.decodeIfPresent(Bool.self, forKey: .isPublic)
    requestedByPersonAliasId = try container.decodeIfPresent(Int.self, forKey: .requestedByPersonAliasId)
    //attributes = try container.decodeIfPresent(Attributes.self, forKey: .attributes)
    prayerCount = try container.decodeIfPresent(Int.self, forKey: .prayerCount)
    modifiedDateTime = try container.decodeIfPresent(String.self, forKey: .modifiedDateTime)
    firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
  }

}
