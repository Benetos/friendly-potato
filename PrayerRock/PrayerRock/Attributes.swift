//
//  Attributes.swift
//
//  Created by Matt Ross on 2/6/23
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Attributes: Codable {

  enum CodingKeys: String, CodingKey {

  }





  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)

  }

}
