//
//  ServiceLocatorApp.swift
//  ServiceLocator
//
//  Created by Андрей on 03.07.2022.
//

import SwiftUI

@main
struct ServiceLocatorApp: App {
	
	init() {
		Configurator.shared.setup()
	}
	
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
