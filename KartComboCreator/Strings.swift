//
//  Strings.swift
//  KartComboCreator
//
//  Created by Ippolito, Lexi on 4/14/26.
//

import Foundation

struct Strings {
    static let homepageTitle = "Kart Combo Creator"
    static let homepageWelcomeSubtitle = "Welcome to the \(homepageTitle)! Use this app to create and share your favorite kart combo builds."
    
    // MARK: Components
    static let Driver = "Driver"
    static let Body = "Body"
    static let Tires = "Tires"
    static let Glider = "Glider"
    
    static let Drivers = "Drivers"
    static let Bodies = "Bodies"
    static let Gliders = "Gliders"
}

struct StatStrings {
    // note that some aren't used?
    static let Acceleration = "Acceleration"
    static let Weight = "Weight"
    static let Traction = "Traction"
    static let OnRoadTraction = "On-Road Traction"
    static let OffRoadTraction = "Off-Road Traction"
    static let MiniTurbo = "Mini Turbo"
    static let Speed = "Speed"
    static let Handling = "Handling"
    
    static let allValues = [Acceleration, Weight, Traction, MiniTurbo, Speed, Handling]
}

struct SurfaceStrings {
    static let Surfaces = "Surfaces"
    static let Ground = "Ground"
    static let Water = "Water"
    static let AntiGravity = "Anti-Gravity"
    static let Air = "Air"
    
    static let allValues = [Ground, Water, AntiGravity, Air]
}
