//
//  ContentView.swift
//  ServiceLocator
//
//  Created by Андрей on 03.07.2022.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject private var charactersViewModel: CharactersViewModel = .init()
	
	var body: some View {
		List {
			ForEach(charactersViewModel.characters) { character in
				Text(character.name)
			}
		}
		.onAppear {
			charactersViewModel.fetchCharacters()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
