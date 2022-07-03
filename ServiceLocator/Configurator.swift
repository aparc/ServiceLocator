//
//  File.swift
//  ServiceLocator
//
//  Created by Андрей on 03.07.2022.
//

import Foundation

final class Configurator {
	
	static let shared = Configurator()
	let serviceLocator = ServiceLocator()
	
	func setup() {
		registerServices()
	}
	
	private func registerServices() {
		
	}
	
}
