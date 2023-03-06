//
// Minerals.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Minerals: Codable, JSONEncodable, Hashable {

    static let calciumRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let phosphorusRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let ironRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let magnesiumRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let zincRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let copperRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let manganeseRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let fluorideRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let seleniumRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let iodineRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let chromiumRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let molybdenumRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let saltRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let chlorideRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let bicarbonateRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let potassiumRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let sodiumRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let silicaRule = NumericRule<Double>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    /** Total calcium measured in <UNK> */
    public var calcium: Double?
    /** Phosphorus measured in <UNK> */
    public var phosphorus: Double?
    /** Iron measured in <UNK> */
    public var iron: Double?
    /** Magnesium measured in <UNK> */
    public var magnesium: Double?
    /** Zinc measured in <UNK> */
    public var zinc: Double?
    /** Copper measured in <UNK> */
    public var copper: Double?
    /** Manganese measured in <UNK> */
    public var manganese: Double?
    /** Fluoride measured in <UNK> */
    public var fluoride: Double?
    /** Selenium measured in <UNK> */
    public var selenium: Double?
    /** Iodine measured in <UNK> */
    public var iodine: Double?
    /** Chromium measured in <UNK> */
    public var chromium: Double?
    /** Molybdenum measured in mg */
    public var molybdenum: Double?
    /** Salt measured in gram */
    public var salt: Double?
    /** Chloride measured in gram */
    public var chloride: Double?
    /** Bicarbonate measured in gram */
    public var bicarbonate: Double?
    /** Potassium measured in gram */
    public var potassium: Double?
    /** Sodium measured in mg */
    public var sodium: Double?
    /** Silica measured in <UNK> */
    public var silica: Double?

    public init(calcium: Double? = nil, phosphorus: Double? = nil, iron: Double? = nil, magnesium: Double? = nil, zinc: Double? = nil, copper: Double? = nil, manganese: Double? = nil, fluoride: Double? = nil, selenium: Double? = nil, iodine: Double? = nil, chromium: Double? = nil, molybdenum: Double? = nil, salt: Double? = nil, chloride: Double? = nil, bicarbonate: Double? = nil, potassium: Double? = nil, sodium: Double? = nil, silica: Double? = nil) {
        self.calcium = calcium
        self.phosphorus = phosphorus
        self.iron = iron
        self.magnesium = magnesium
        self.zinc = zinc
        self.copper = copper
        self.manganese = manganese
        self.fluoride = fluoride
        self.selenium = selenium
        self.iodine = iodine
        self.chromium = chromium
        self.molybdenum = molybdenum
        self.salt = salt
        self.chloride = chloride
        self.bicarbonate = bicarbonate
        self.potassium = potassium
        self.sodium = sodium
        self.silica = silica
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case calcium
        case phosphorus
        case iron
        case magnesium
        case zinc
        case copper
        case manganese
        case fluoride
        case selenium
        case iodine
        case chromium
        case molybdenum
        case salt
        case chloride
        case bicarbonate
        case potassium
        case sodium
        case silica
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(calcium, forKey: .calcium)
        try container.encodeIfPresent(phosphorus, forKey: .phosphorus)
        try container.encodeIfPresent(iron, forKey: .iron)
        try container.encodeIfPresent(magnesium, forKey: .magnesium)
        try container.encodeIfPresent(zinc, forKey: .zinc)
        try container.encodeIfPresent(copper, forKey: .copper)
        try container.encodeIfPresent(manganese, forKey: .manganese)
        try container.encodeIfPresent(fluoride, forKey: .fluoride)
        try container.encodeIfPresent(selenium, forKey: .selenium)
        try container.encodeIfPresent(iodine, forKey: .iodine)
        try container.encodeIfPresent(chromium, forKey: .chromium)
        try container.encodeIfPresent(molybdenum, forKey: .molybdenum)
        try container.encodeIfPresent(salt, forKey: .salt)
        try container.encodeIfPresent(chloride, forKey: .chloride)
        try container.encodeIfPresent(bicarbonate, forKey: .bicarbonate)
        try container.encodeIfPresent(potassium, forKey: .potassium)
        try container.encodeIfPresent(sodium, forKey: .sodium)
        try container.encodeIfPresent(silica, forKey: .silica)
    }
}

