//
// ProductsSearchResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductsSearchResponse: Codable, JSONEncodable, Hashable {

    public var page: Int?
    public var array: [Product]?

    public init(page: Int? = nil, array: [Product]? = nil) {
        self.page = page
        self.array = array
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case page
        case array
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(page, forKey: .page)
        try container.encodeIfPresent(array, forKey: .array)
    }
}

