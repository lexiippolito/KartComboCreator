//
//  DataOperations.swift
//  KartComboCreator
//
//  Created by Lexi on 4/15/26.
//

import Foundation

func loadRawData(from fileName: String) throws -> [RawDataModel] {
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

func getDriverData(for driver: String) throws -> RawDataModel? {
    let rawDataModel = try loadRawData(from: "DriverData")
    
    return rawDataModel.first { $0.name.caseInsensitiveCompare(driver) == .orderedSame }
}

enum DataOperationsError: Error {
    case fileNotFound
    case failedToLoadData
    // driver not found error? + other ones like that?
}
