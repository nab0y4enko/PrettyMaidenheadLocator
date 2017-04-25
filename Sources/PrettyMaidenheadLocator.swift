//
//  PrettyMaidenheadLocator.swift
//  PrettyMaidenheadLocator
//
//  Created by Oleksii Naboichenko on 4/25/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import CoreLocation

typealias QthGridSizeDivision = (horizontal: CLLocationDegrees, vertical: CLLocationDegrees)

let qthLevels = [
    //H: (360 / 18) => 20°/div
    //V: (180 / 18) => 10°/div
    QthGridSizeDivision(horizontal: 20.0, vertical: 10.0),
    
    //H: (360 / 18*10) => 20/10°/div
    //V: (180 / 18*10) => 10/10°/div
    QthGridSizeDivision(horizontal: 2.0, vertical: 1.0),
    
    //H: (360 / 18*10*24) => 20/240°/div
    //V: (180 / 18*10*24) => 10/240°/div
    QthGridSizeDivision(horizontal: 1.0 / 12.0, vertical: 1.0 / 24.0),
    
    //H: (360 / 18*10*24*10) => 20/2400°/div
    //V: (180 / 18*10*24*10) => 10/2400°/div
    QthGridSizeDivision(horizontal: 1.0 / 120.0, vertical: 1.0 / 240.0),
    
    //H: (360 / 18*10*24*10*24) => 20/57600°/div
    //V: (180 / 18*10*24*10*24) => 10/57600°/div
    QthGridSizeDivision(horizontal: 1.0 / 2880.0, vertical: 1.0 / 5760.0),
    
    //H: (360 / 18*10*24*10*24*10) => 20/576000°/div
    //V: (180 / 18*10*24*10*24*10) => 10/576000°/div
    QthGridSizeDivision(horizontal: 1.0 / 28800.0, vertical: 1.0 / 57600.0)
]
