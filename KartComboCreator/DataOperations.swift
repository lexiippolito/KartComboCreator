//
//  DataOperations.swift
//  KartComboCreator
//
//  Created by Lexi on 4/15/26.
//

import Foundation

func loadDriverRawData() throws -> [RawDataModel] {
    guard let url = Bundle.main.url(forResource: "DriverData", withExtension: "json") else {
        throw DataOperationsError.fileNotFound
    }

    let data = try Data(contentsOf: url)
    return try JSONDecoder().decode([RawDataModel].self, from: data)
}

func getDriverStats(for driver: String) -> RawDataModel {
    let rawDataModel = try! loadDriverRawData()
    
    guard let driverData = rawDataModel.first(where: { $0.name.lowercased() == driver.lowercased() }) else { return RawDataModel(name: driver,
                                 stats: Stats(weight: 1,
                                              acceleration: 1,
                                              traction: TractionStats(onRoad: 1,
                                                                      offRoad: 1),
                                              miniTurbo: 1,
                                              speed: SurfaceStats(ground: 1,
                                                                  water: 1,
                                                                  antiGravity: 1,
                                                                  air: 1),
                                              handling: SurfaceStats(ground: 1,
                                                                     water: 1,
                                                                     antiGravity: 1,
                                                                     air: 1))
    )
    }
    
    print("found driver 🏎️")
    print(driverData.name)
    print(driverData.stats.acceleration)
    
    return RawDataModel(name: driverData.name, stats: driverData.stats)
}

enum DataOperationsError: Error {
    case fileNotFound
}
