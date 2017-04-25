//
//  Character+PrettyExtensions.swift
//  PrettyMaidenheadLocator
//
//  Created by Oleksii Naboichenko on 4/25/17.
//  Copyright © 2017 Oleksii Naboichenko. All rights reserved.
//

import Foundation

extension Character {
    
    static func alphabeticCharacter(_ index: UInt32) -> Character {
        let firstCharacterNumericRepresentation = UnicodeScalar("A")!.value
        let characterUnicodeScalar = UnicodeScalar(firstCharacterNumericRepresentation + index)
        return Character(characterUnicodeScalar!)
    }
}
