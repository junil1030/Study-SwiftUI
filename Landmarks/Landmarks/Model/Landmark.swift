//
//  Landmark.swift
//  Landmarks
//
//  Created by 서준일 on 4/16/25.
//
import Foundation
import SwiftUI
import CoreLocation

// Chapter 1에서는 하드코딩으로 위치를 불러왔으니
// Apple에서 제공해준 json Data를 통해 데이터를 가져올 모델을 생성해보자

// List코드를 간편화 하기 위해 Identifiable을 채택
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
