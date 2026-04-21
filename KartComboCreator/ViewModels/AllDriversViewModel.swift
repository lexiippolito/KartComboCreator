//
//  AllDriversViewModel.swift
//  KartComboCreator
//
//  Created by Lexi on 4/18/26.
//

import Foundation

struct AllDriversViewModel {
    let driverNames: [String]
    
    init() {
        do {
            driverNames = try getAllDriverNames()
        } catch(let error) {
            print(error)
            driverNames = []
        }
    }
}
