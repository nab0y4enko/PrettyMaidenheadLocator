//
//  CLLocationCoordinate2D+PrettyExtensions.swift
//  PrettyMaidenheadLocator
//
//  Created by Oleksii Naboichenko on 4/25/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import CoreLocation

public extension CLLocationCoordinate2D {
    
    public func qthString(level: Int) -> String? {
        guard CLLocationCoordinate2DIsValid(self) else {
            return nil
        }
        
        var qthString = String()
        
        var shiftedLocationCoordinate = CLLocationCoordinate2D(latitude: latitude + 90.0,
                                                               longitude: longitude + 180.0)
        
        for (index, levelGridSizeDivision) in qthLevels.enumerated() {
            let horizontalDelta = floor(shiftedLocationCoordinate.longitude / levelGridSizeDivision.horizontal)
            let verticalDelta = floor(shiftedLocationCoordinate.latitude / levelGridSizeDivision.vertical)
            
            if index % 2 == 0 {
                //Alphabetic level
                let horizontalCharacter = Character.alphabeticCharacter(UInt32(horizontalDelta))
                qthString.append(horizontalCharacter)
                
                let verticalCharacter = Character.alphabeticCharacter(UInt32(verticalDelta))
                qthString.append(verticalCharacter)
            } else {
                //Digit level
                qthString += "\(0 + Int(horizontalDelta))"
                qthString += "\(0 + Int(verticalDelta))"
            }
            
            guard index < level else {
                break
            }
            
            // To get the n-th level position, get the shift modulo grid n-1-th step
            shiftedLocationCoordinate.longitude -= horizontalDelta * levelGridSizeDivision.horizontal
            shiftedLocationCoordinate.latitude -= verticalDelta * levelGridSizeDivision.vertical
        }
        
        return qthString
    }
}
