//
//  File.swift
//  ServiceLocator
//
//  Created by Андрей on 03.07.2022.
//

import Foundation
import APIManager

final class Configurator {
	
	static let shared = Configurator()
	let serviceLocator = ServiceLocator()
	
	private init() {}
	
	func setup() {
		registerServices()
	}
	
	private func registerServices() {
		serviceLocator.addService(service: APIManager.shared)
		serviceLocator.addService(service: CharactersNetworkService())
	}
	
}
