//
// ProductPreview.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductPreview: Codable, JSONEncodable, Hashable {

    static let caloriesRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: UUID
    public var names: [LocalizedValue]
    public var brands: [LocalizedValue]?
    public var servings: [Serving]?
    public var totalQuantity: Quantity?
    /** Calories per 100g / 100ml measured in kcal */
    public var calories: Int
    public var verified: Bool?

    public init(id: UUID, names: [LocalizedValue], brands: [LocalizedValue]? = nil, servings: [Serving]? = nil, totalQuantity: Quantity? = nil, calories: Int, verified: Bool? = nil) {
        self.id = id
        self.names = names
        self.brands = brands
        self.servings = servings
        self.totalQuantity = totalQuantity
        self.calories = calories
        self.verified = verified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case names
        case brands
        case servings
        case totalQuantity
        case calories
        case verified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(names, forKey: .names)
        try container.encodeIfPresent(brands, forKey: .brands)
        try container.encodeIfPresent(servings, forKey: .servings)
        try container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
        try container.encode(calories, forKey: .calories)
        try container.encodeIfPresent(verified, forKey: .verified)
    }
}

