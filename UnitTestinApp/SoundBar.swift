//
//  File.swift
//  UnitTestinApp
//
//  Created by Руслан Штыбаев on 11.05.2022.
//

class SoundBar {
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
}
