//
//  AttributeValues.swift
//
//  Created by Matt Ross on 2/6/23
//  Copyright (c) . All rights reserved.
//

import Foundation

struct AttributeValues: Codable {

  enum CodingKeys: String, CodingKey {

  }





  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

  }

}
