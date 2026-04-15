//
//  MarioKart8DeluxeRawData.swift
//  KartComboCreator
//
//  Created by Ippolito, Lexi on 4/14/26.
//

import Foundation

struct MarioKart8DeluxeRawData: Codable {
    let biddyBuggy = KartBody(name: "Standard Kart",
                              stats: KartBodyStats(
                                weight: 2,
                                acceleration: 4,
                                traction: TractionStats(
                                    onRoad: 3,
                                    offRoad: 3),
                                miniTurbo: 4,
                                speed: SurfaceStats(
                                    ground: 3,
                                    water: 3,
                                    antiGravity: 3,
                                    air: 3),
                                handling: SurfaceStats(
                                    ground: 3,
                                    water: 2,
                                    antiGravity: 3,
                                    air: 3
                                )
                              )
    )
    // why not just fetch it from the CSV directly? why store it 
}
