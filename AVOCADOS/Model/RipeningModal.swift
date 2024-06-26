//
//  RipeningModal.swift
//  AVOCADOS
//
//  Created by Hein Htet Aung on 2024/06/25.
//

import Foundation

struct Ripening :Identifiable{
    var id=UUID()
    var image:String
    var stage:String
    var title:String
    var description:String
    var ripeness:String
    var instruction:String
}
