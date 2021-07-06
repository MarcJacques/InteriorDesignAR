//
//  Model.swift
//  InteriorDesignAR
//
//  Created by Marc Jacques on 6/25/21.
//

import SwiftUI
import RealityKit
import Combine

enum ModelCategory: CaseIterable {
    case cookware
    case toy
    case instrument
    case appliances
    
    var label: String {
        get {
            switch self {
            case .cookware:
                return "Cookware"
            case .toy:
                return "Toys"
            case .instrument:
                return "Guitars"
            case .appliances:
                return "Appliances"
            }
        }
    }
}


class Model {
    var name: String
    var category: ModelCategory
    var thumbnail: UIImage
    var modelEntity: ModelEntity?
//    var scaleCompensation: Float
    
    init(name: String, category: ModelCategory, scaleCompensation: Float = 1.0) {
        self.name = name
        self.category = category
        self.thumbnail = UIImage(named: name) ?? UIImage(systemName: "photo")!
//        self.scaleCompensation = scaleCompensation
    }
    
//    TODO: add a method to async load modelEntity
//    generate thumbnails from usdz files
}

struct Models {
    var all: [Model] = []
    
    init() {
//        cookware
        let teapot = Model(name: "teapot", category: .cookware) //scaleCompensation: 0.32/100 //
        
        self.all += [teapot]
        
        let plane = Model(name: "plane", category: .toy)
        let racecar = Model(name: "racecar", category: .toy)
        let robot = Model(name: "robot", category: .toy)
        let tvRetro = Model(name: "tv_retro", category: .appliances)
        let guitar = Model(name: "guitar", category: .instrument)

        self.all += [plane, racecar, robot, tvRetro, guitar]
    }
    
    func get(category: ModelCategory) -> [Model] {
        return all.filter( { $0.category == category} )
        
    }
}
