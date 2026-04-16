//
//  KartBodyCatalog.swift
//  KartComboCreator
//
//  Created by Codex on 4/14/26.
//

import Foundation

struct RawDataModel: Decodable {
    let name: String
    let stats: Stats
}

// stats are all the same, only differentiator is it being for a character, body, wheels, etc.
// remember it's distributed across the bars, it's not just one number
    // interested to see how it would work as one number tho (stats stuff)
// dropdowns to see specific stats instead of composite

struct Stats: Decodable {
    let weight: Int
    let acceleration: Int
    let traction: TractionStats
    let miniTurbo: Int
    let speed: SurfaceStats
    let handling: SurfaceStats
}

struct TractionStats: Decodable {
    let onRoad: Int
    let offRoad: Int
}

struct SurfaceStats: Decodable {
    let ground: Int
    let water: Int
    let antiGravity: Int
    let air: Int
}

//enum KartBodyCatalog {
//    static let all: [KartBody] = [
//        KartBody(name: "300 SL Roadster", stats: .init(
//            weight: 2,
//            acceleration: 4,
//            traction: .init(onRoad: 3, offRoad: 3),
//            miniTurbo: 4,
//            speed: .init(ground: 3, water: 3, antiGravity: 3, air: 3),
//            handling: .init(ground: 3, water: 2, antiGravity: 3, air: 3)
//        )),
//        KartBody(name: "B Dasher", stats: .init(
//            weight: 3,
//            acceleration: 1,
//            traction: .init(onRoad: 3, offRoad: 1),
//            miniTurbo: 1,
//            speed: .init(ground: 5, water: 1, antiGravity: 4, air: 2),
//            handling: .init(ground: 1, water: 1, antiGravity: 2, air: 0)
//        )),
//        KartBody(name: "Badwagon", stats: .init(
//            weight: 4,
//            acceleration: 0,
//            traction: .init(onRoad: 2, offRoad: 5),
//            miniTurbo: 0,
//            speed: .init(ground: 5, water: 2, antiGravity: 3, air: 1),
//            handling: .init(ground: 0, water: 1, antiGravity: 1, air: 0)
//        )),
//        KartBody(name: "Biddybuggy", stats: .init(
//            weight: 0,
//            acceleration: 7,
//            traction: .init(onRoad: 1, offRoad: 4),
//            miniTurbo: 7,
//            speed: .init(ground: 0, water: 1, antiGravity: 2, air: 1),
//            handling: .init(ground: 5, water: 4, antiGravity: 5, air: 4)
//        )),
//        KartBody(name: "Blue Falcon", stats: .init(
//            weight: 0,
//            acceleration: 3,
//            traction: .init(onRoad: 1, offRoad: 3),
//            miniTurbo: 3,
//            speed: .init(ground: 4, water: 2, antiGravity: 4, air: 3),
//            handling: .init(ground: 2, water: 3, antiGravity: 5, air: 1)
//        )),
//        KartBody(name: "Bone Rattler", stats: .init(
//            weight: 4,
//            acceleration: 1,
//            traction: .init(onRoad: 1, offRoad: 3),
//            miniTurbo: 2,
//            speed: .init(ground: 4, water: 5, antiGravity: 2, air: 0),
//            handling: .init(ground: 1, water: 5, antiGravity: 1, air: 1)
//        )),
//        KartBody(name: "Cat Cruiser", stats: .init(
//            weight: 2,
//            acceleration: 5,
//            traction: .init(onRoad: 4, offRoad: 3),
//            miniTurbo: 5,
//            speed: .init(ground: 2, water: 2, antiGravity: 3, air: 4),
//            handling: .init(ground: 4, water: 2, antiGravity: 3, air: 4)
//        )),
//        KartBody(name: "Circuit Special", stats: .init(
//            weight: 3,
//            acceleration: 1,
//            traction: .init(onRoad: 3, offRoad: 1),
//            miniTurbo: 1,
//            speed: .init(ground: 5, water: 1, antiGravity: 4, air: 2),
//            handling: .init(ground: 1, water: 1, antiGravity: 2, air: 0)
//        )),
//        KartBody(name: "City Tripper", stats: .init(
//            weight: 1,
//            acceleration: 6,
//            traction: .init(onRoad: 3, offRoad: 4),
//            miniTurbo: 6,
//            speed: .init(ground: 1, water: 3, antiGravity: 1, air: 1),
//            handling: .init(ground: 5, water: 4, antiGravity: 4, air: 2)
//        )),
//        KartBody(name: "Comet", stats: .init(
//            weight: 2,
//            acceleration: 5,
//            traction: .init(onRoad: 4, offRoad: 3),
//            miniTurbo: 5,
//            speed: .init(ground: 2, water: 2, antiGravity: 3, air: 4),
//            handling: .init(ground: 4, water: 2, antiGravity: 3, air: 4)
//        )),
//        KartBody(name: "Flame Rider", stats: .init(
//            weight: 1,
//            acceleration: 5,
//            traction: .init(onRoad: 3, offRoad: 5),
//            miniTurbo: 5,
//            speed: .init(ground: 2, water: 2, antiGravity: 4, air: 3),
//            handling: .init(ground: 4, water: 3, antiGravity: 4, air: 3)
//        )),
//        KartBody(name: "GLA", stats: .init(
//            weight: 4,
//            acceleration: 0,
//            traction: .init(onRoad: 2, offRoad: 5),
//            miniTurbo: 0,
//            speed: .init(ground: 5, water: 2, antiGravity: 3, air: 1),
//            handling: .init(ground: 0, water: 1, antiGravity: 1, air: 0)
//        )),
//        KartBody(name: "Gold Standard", stats: .init(
//            weight: 2,
//            acceleration: 2,
//            traction: .init(onRoad: 1, offRoad: 0),
//            miniTurbo: 3,
//            speed: .init(ground: 4, water: 2, antiGravity: 3, air: 3),
//            handling: .init(ground: 3, water: 2, antiGravity: 3, air: 2)
//        )),
//        KartBody(name: "Inkstriker", stats: .init(
//            weight: 3,
//            acceleration: 3,
//            traction: .init(onRoad: 2, offRoad: 4),
//            miniTurbo: 4,
//            speed: .init(ground: 3, water: 3, antiGravity: 5, air: 4),
//            handling: .init(ground: 2, water: 2, antiGravity: 4, air: 2)
//        )),
//        KartBody(name: "Jet Bike", stats: .init(
//            weight: 1,
//            acceleration: 2,
//            traction: .init(onRoad: 1, offRoad: 2),
//            miniTurbo: 3,
//            speed: .init(ground: 4, water: 3, antiGravity: 3, air: 3),
//            handling: .init(ground: 3, water: 3, antiGravity: 2, air: 3)
//        )),
//        KartBody(name: "Koopa Clown", stats: .init(
//            weight: 3,
//            acceleration: 2,
//            traction: .init(onRoad: 4, offRoad: 7),
//            miniTurbo: 3,
//            speed: .init(ground: 2, water: 4, antiGravity: 3, air: 3),
//            handling: .init(ground: 4, water: 4, antiGravity: 3, air: 3)
//        )),
//        KartBody(name: "Landship", stats: .init(
//            weight: 0,
//            acceleration: 6,
//            traction: .init(onRoad: 0, offRoad: 6),
//            miniTurbo: 6,
//            speed: .init(ground: 1, water: 5, antiGravity: 0, air: 2),
//            handling: .init(ground: 4, water: 5, antiGravity: 2, air: 3)
//        )),
//        KartBody(name: "Mach 8", stats: .init(
//            weight: 3,
//            acceleration: 3,
//            traction: .init(onRoad: 2, offRoad: 4),
//            miniTurbo: 4,
//            speed: .init(ground: 3, water: 3, antiGravity: 5, air: 4),
//            handling: .init(ground: 2, water: 2, antiGravity: 4, air: 2)
//        )),
//        KartBody(name: "Master Cycle", stats: .init(
//            weight: 2,
//            acceleration: 2,
//            traction: .init(onRoad: 1, offRoad: 0),
//            miniTurbo: 3,
//            speed: .init(ground: 4, water: 2, antiGravity: 3, air: 3),
//            handling: .init(ground: 3, water: 2, antiGravity: 3, air: 2)
//        )),
//        KartBody(name: "Mr. Scooty", stats: .init(
//            weight: 0,
//            acceleration: 7,
//            traction: .init(onRoad: 1, offRoad: 4),
//            miniTurbo: 7,
//            speed: .init(ground: 0, water: 1, antiGravity: 2, air: 1),
//            handling: .init(ground: 5, water: 4, antiGravity: 5, air: 4)
//        )),
//        KartBody(name: "P-Wing", stats: .init(
//            weight: 3,
//            acceleration: 1,
//            traction: .init(onRoad: 3, offRoad: 1),
//            miniTurbo: 1,
//            speed: .init(ground: 5, water: 1, antiGravity: 4, air: 2),
//            handling: .init(ground: 1, water: 1, antiGravity: 2, air: 0)
//        )),
//        KartBody(name: "Pipe Frame", stats: .init(
//            weight: 1,
//            acceleration: 6,
//            traction: .init(onRoad: 3, offRoad: 4),
//            miniTurbo: 6,
//            speed: .init(ground: 1, water: 3, antiGravity: 1, air: 1),
//            handling: .init(ground: 5, water: 4, antiGravity: 4, air: 2)
//        )),
//        KartBody(name: "Prancer", stats: .init(
//            weight: 1,
//            acceleration: 2,
//            traction: .init(onRoad: 1, offRoad: 2),
//            miniTurbo: 3,
//            speed: .init(ground: 4, water: 3, antiGravity: 3, air: 3),
//            handling: .init(ground: 3, water: 3, antiGravity: 2, air: 3)
//        )),
//        KartBody(name: "Sneeker", stats: .init(
//            weight: 2,
//            acceleration: 2,
//            traction: .init(onRoad: 1, offRoad: 0),
//            miniTurbo: 3,
//            speed: .init(ground: 4, water: 2, antiGravity: 3, air: 3),
//            handling: .init(ground: 3, water: 2, antiGravity: 3, air: 2)
//        )),
//        KartBody(name: "Splat Buggy", stats: .init(
//            weight: 0,
//            acceleration: 3,
//            traction: .init(onRoad: 1, offRoad: 3),
//            miniTurbo: 3,
//            speed: .init(ground: 4, water: 2, antiGravity: 4, air: 3),
//            handling: .init(ground: 2, water: 3, antiGravity: 5, air: 1)
//        )),
//        KartBody(name: "Sport Bike", stats: .init(
//            weight: 1,
//            acceleration: 2,
//            traction: .init(onRoad: 1, offRoad: 2),
//            miniTurbo: 3,
//            speed: .init(ground: 4, water: 3, antiGravity: 3, air: 3),
//            handling: .init(ground: 3, water: 3, antiGravity: 2, air: 3)
//        )),
//        KartBody(name: "Sports Coupe", stats: .init(
//            weight: 3,
//            acceleration: 3,
//            traction: .init(onRoad: 2, offRoad: 4),
//            miniTurbo: 4,
//            speed: .init(ground: 3, water: 3, antiGravity: 5, air: 4),
//            handling: .init(ground: 2, water: 2, antiGravity: 4, air: 2)
//        )),
//        KartBody(name: "Standard ATV", stats: .init(
//            weight: 4,
//            acceleration: 0,
//            traction: .init(onRoad: 2, offRoad: 5),
//            miniTurbo: 0,
//            speed: .init(ground: 5, water: 2, antiGravity: 3, air: 1),
//            handling: .init(ground: 0, water: 1, antiGravity: 1, air: 0)
//        )),
//        KartBody(name: "Standard Bike", stats: .init(
//            weight: 1,
//            acceleration: 5,
//            traction: .init(onRoad: 3, offRoad: 5),
//            miniTurbo: 5,
//            speed: .init(ground: 2, water: 2, antiGravity: 4, air: 3),
//            handling: .init(ground: 4, water: 3, antiGravity: 4, air: 3)
//        )),
//        KartBody(name: "Standard Kart", stats: .init(
//            weight: 2,
//            acceleration: 4,
//            traction: .init(onRoad: 3, offRoad: 3),
//            miniTurbo: 4,
//            speed: .init(ground: 3, water: 3, antiGravity: 3, air: 3),
//            handling: .init(ground: 3, water: 2, antiGravity: 3, air: 3)
//        )),
//        KartBody(name: "Steel Driver", stats: .init(
//            weight: 4,
//            acceleration: 1,
//            traction: .init(onRoad: 1, offRoad: 3),
//            miniTurbo: 2,
//            speed: .init(ground: 4, water: 5, antiGravity: 2, air: 0),
//            handling: .init(ground: 1, water: 5, antiGravity: 1, air: 1)
//        )),
//        KartBody(name: "Streetle", stats: .init(
//            weight: 0,
//            acceleration: 6,
//            traction: .init(onRoad: 0, offRoad: 6),
//            miniTurbo: 6,
//            speed: .init(ground: 1, water: 5, antiGravity: 0, air: 2),
//            handling: .init(ground: 4, water: 5, antiGravity: 2, air: 3)
//        )),
//        KartBody(name: "Tanooki Kart", stats: .init(
//            weight: 3,
//            acceleration: 2,
//            traction: .init(onRoad: 4, offRoad: 7),
//            miniTurbo: 3,
//            speed: .init(ground: 2, water: 4, antiGravity: 3, air: 3),
//            handling: .init(ground: 4, water: 4, antiGravity: 3, air: 3)
//        )),
//        KartBody(name: "Teddy Buggy", stats: .init(
//            weight: 2,
//            acceleration: 5,
//            traction: .init(onRoad: 4, offRoad: 3),
//            miniTurbo: 5,
//            speed: .init(ground: 2, water: 2, antiGravity: 3, air: 4),
//            handling: .init(ground: 4, water: 2, antiGravity: 3, air: 4)
//        )),
//        KartBody(name: "The Duke", stats: .init(
//            weight: 2,
//            acceleration: 4,
//            traction: .init(onRoad: 3, offRoad: 3),
//            miniTurbo: 4,
//            speed: .init(ground: 3, water: 3, antiGravity: 3, air: 3),
//            handling: .init(ground: 3, water: 2, antiGravity: 3, air: 3)
//        )),
//        KartBody(name: "Tri-Speeder", stats: .init(
//            weight: 4,
//            acceleration: 1,
//            traction: .init(onRoad: 1, offRoad: 3),
//            miniTurbo: 2,
//            speed: .init(ground: 4, water: 5, antiGravity: 2, air: 0),
//            handling: .init(ground: 1, water: 5, antiGravity: 1, air: 1)
//        )),
//        KartBody(name: "Varmint", stats: .init(
//            weight: 1,
//            acceleration: 6,
//            traction: .init(onRoad: 3, offRoad: 4),
//            miniTurbo: 6,
//            speed: .init(ground: 1, water: 3, antiGravity: 1, air: 1),
//            handling: .init(ground: 5, water: 4, antiGravity: 4, air: 2)
//        )),
//        KartBody(name: "W 25 Silver Arrow", stats: .init(
//            weight: 1,
//            acceleration: 5,
//            traction: .init(onRoad: 3, offRoad: 5),
//            miniTurbo: 5,
//            speed: .init(ground: 2, water: 2, antiGravity: 4, air: 3),
//            handling: .init(ground: 4, water: 3, antiGravity: 4, air: 3)
//        )),
//        KartBody(name: "Wild Wiggler", stats: .init(
//            weight: 1,
//            acceleration: 5,
//            traction: .init(onRoad: 3, offRoad: 5),
//            miniTurbo: 5,
//            speed: .init(ground: 2, water: 2, antiGravity: 4, air: 3),
//            handling: .init(ground: 4, water: 3, antiGravity: 4, air: 3)
//        )),
//        KartBody(name: "Yoshi Bike", stats: .init(
//            weight: 2,
//            acceleration: 5,
//            traction: .init(onRoad: 4, offRoad: 3),
//            miniTurbo: 5,
//            speed: .init(ground: 2, water: 2, antiGravity: 3, air: 4),
//            handling: .init(ground: 4, water: 2, antiGravity: 3, air: 4)
//        ))
//    ]

//    static let byName: [String: KartBody] = Dictionary(
//        uniqueKeysWithValues: all.map { ($0.name, $0) }
//    )
//}
