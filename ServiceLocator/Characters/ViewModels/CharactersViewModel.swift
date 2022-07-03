//
//  CharactersViewModel.swift
//  ServiceLocator
//
//  Created by Андрей on 04.07.2022.
//

import Foundation
import SwiftUI

final class CharactersViewModel: ObservableObject {
	
	@Published private(set) var characters: [ModelCharacter] = []
	@Injected var charactersNetwrokService: CharactersNetworkService?
	
	func fetchCharacters() {
		charactersNetwrokService?.fetchAllCharacters(completion: { characters in
			if let newCharacters = characters {
				self.characters.append(contentsOf: newCharacters)
			}
		})
	}
	
}
