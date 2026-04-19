//
//  DataOperations.swift
//  KartComboCreator
//
//  Created by Lexi on 4/15/26.
//

import Foundation

func loadAllRawDataIntoRawDataModel(from fileName: String = "MarioKart8DeluxeRawData") throws -> [RawDataModel] {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: "json") else {
        throw DataOperationsError.fileNotFound
    }

    do {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([RawDataModel].self, from: data)
    } catch {
        throw DataOperationsError.failedToLoadData
    }
}

func getAllDriverNames() throws -> [String] {
    guard let url = Bundle.main.url(forResource: "DriverData", withExtension: "json") else {
        throw DataOperationsError.fileNotFound
    }

    let data = try Data(contentsOf: url)
    let json = try JSONSerialization.jsonObject(with: data) as? [[String: Any]]

    return json?.compactMap { $0["name"] as? String } ?? []
}

func getDriver(for driver: String) throws -> RawDataModel? {
    let rawDataModel = try loadAllRawDataIntoRawDataModel(from: "DriverData")
    
    return rawDataModel.first { $0.name.caseInsensitiveCompare(driver) == .orderedSame }
}

func getDriverCount() -> Int {
    return 1
}

// user goes on app
// user picks a character
    // then character data is loaded with default selections
// pick what you want to prioritize

// *** users can also post combos with notes – e.g. "this worked really well for me for this prix,
// was great on sand but poor on water" etc. ***

enum DataOperationsError: Error {
    case fileNotFound
    case failedToLoadData
    case driverNotFound
    // driver not found error? + other ones like that?
}
