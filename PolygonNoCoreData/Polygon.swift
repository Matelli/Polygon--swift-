//
//  Polygon.swift
//  Polygon
//
//  Created by Jonathan Schmidt on 04/06/2014.
//  Copyright (c) 2014 Matelli. All rights reserved.
//

import Foundation

struct Polygon {
    var sides: Int = 3 {
        didSet {
            if sides < 3 {
                sides = oldValue
            }
        }
    }
    var name:String {
    switch sides {
    case 3: return "Triangle"
    case 4: return "Carré"
    case 5: return "Pentagone"
    case 6: return "Hexagone"
    default: return "Polygone Inconnu"
        }
    }
}