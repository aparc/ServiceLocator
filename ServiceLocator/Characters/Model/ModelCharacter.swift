//
//  ModelCharacter.swift
//  ServiceLocator
//
//  Created by Андрей on 04.07.2022.
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ModelCharacter: Codable, Hashable {

	public var charId: Double
	public var name: String
	public var birthday: String
	public var occupation: [String]
	public var img: String
	public var status: String
	public var nickname: String
	public var appearance: [Double]
	public var portrayed: String
	public var category: String
	public var betterCallSaulAppearance: [Int]

	public init(charId: Double, name: String, birthday: String, occupation: [String], img: String, status: String, nickname: String, appearance: [Double], portrayed: String, category: String, betterCallSaulAppearance: [Int]) {
		self.charId = charId
		self.name = name
		self.birthday = birthday
		self.occupation = occupation
		self.img = img
		self.status = status
		self.nickname = nickname
		self.appearance = appearance
		self.portrayed = portrayed
		self.category = category
		self.betterCallSaulAppearance = betterCallSaulAppearance
	}

	public enum CodingKeys: String, CodingKey, CaseIterable {
		case charId = "char_id"
		case name
		case birthday
		case occupation
		case img
		case status
		case nickname
		case appearance
		case portrayed
		case category
		case betterCallSaulAppearance = "better_call_saul_appearance"
	}

	// Encodable protocol methods

	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(charId, forKey: .charId)
		try container.encode(name, forKey: .name)
		try container.encode(birthday, forKey: .birthday)
		try container.encode(occupation, forKey: .occupation)
		try container.encode(img, forKey: .img)
		try container.encode(status, forKey: .status)
		try container.encode(nickname, forKey: .nickname)
		try container.encode(appearance, forKey: .appearance)
		try container.encode(portrayed, forKey: .portrayed)
		try container.encode(category, forKey: .category)
		try container.encode(betterCallSaulAppearance, forKey: .betterCallSaulAppearance)
	}
}
