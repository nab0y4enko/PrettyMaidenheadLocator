//
//  PrettyMaidenheadLocatorTests.swift
//  PrettyMaidenheadLocatorTests
//
//  Created by Oleksii Naboichenko on 4/25/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import XCTest
import CoreLocation
@testable import PrettyMaidenheadLocator

class PrettyMaidenheadLocatorTests: XCTestCase {
    
    func testGetQTHFromLocations() {
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: -180.0).qthString(level: 5), "AA00AA00AA00")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: 179.999999).qthString(level: 5), "RR99XX99XX99")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: 179.999999).qthString(level: 5), "RA90XA90XA90")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: -180.0).qthString(level: 5), "AR09AX09AX09")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0).qthString(level: 5), "JJ00AA00AA00")
        
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: -180.0).qthString(level: 4), "AA00AA00AA")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: 179.999999).qthString(level: 4), "RR99XX99XX")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: 179.999999).qthString(level: 4), "RA90XA90XA")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: -180.0).qthString(level: 4), "AR09AX09AX")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0).qthString(level: 4), "JJ00AA00AA")
        
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: -180.0).qthString(level: 3), "AA00AA00")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: 179.999999).qthString(level: 3), "RR99XX99")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: 179.999999).qthString(level: 3), "RA90XA90")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: -180.0).qthString(level: 3), "AR09AX09")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0).qthString(level: 3), "JJ00AA00")
        
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: -180.0).qthString(level: 2), "AA00AA")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: 179.999999).qthString(level: 2), "RR99XX")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: 179.999999).qthString(level: 2), "RA90XA")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: -180.0).qthString(level: 2), "AR09AX")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0).qthString(level: 2), "JJ00AA")
        
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: -180.0).qthString(level: 1), "AA00")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: 179.999999).qthString(level: 1), "RR99")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: 179.999999).qthString(level: 1), "RA90")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: -180.0).qthString(level: 1), "AR09")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0).qthString(level: 1), "JJ00")
        
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: -180.0).qthString(level: 0), "AA")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: 179.999999).qthString(level: 0), "RR")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -90.0, longitude: 179.999999).qthString(level: 0), "RA")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 89.9999999, longitude: -180.0).qthString(level: 0), "AR")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0).qthString(level: 0), "JJ")
        
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 45.43894, longitude: 4.36844).qthString(level: 2), "JN25EK")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 36.401, longitude: 138.247667).qthString(level: 4), "PM96CJ96RF")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -45.886167, longitude: 170.543167).qthString(level: 4), "RE54GC57EH")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 64.891667, longitude: -147.708333).qthString(level: 4), "BP64DV54AA")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: -64.2395, longitude: -56.6275).qthString(level: 4), "GC15QS42QM")
        XCTAssertEqual(CLLocationCoordinate2D(latitude: 63.062778, longitude: 179.354549).qthString(level: 5), "RP93QB25NB16")
    }
    
    func testGetQTHFromBadLocations() {
        XCTAssertNil(CLLocationCoordinate2D(latitude: 400, longitude: 500).qthString(level: 0))
    }
}
