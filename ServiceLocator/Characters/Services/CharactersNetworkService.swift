//
//  CharactersNetworkService.swift
//  ServiceLocator
//
//  Created by Андрей on 04.07.2022.
//

import Foundation
import APIManager

class CharactersNetworkService {
	
	@Injected private var apiManager: APIManager?
	private let basePath = "https://www.breakingbadapi.com/api"
	
	func fetchAllCharacters(completion: @escaping ([ModelCharacter]?) -> Void) {
		apiManager?.fetch(url: "\(basePath)/characters/", method: "GET", handler: completion)
	}
	
}
