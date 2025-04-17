//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 서준일 on 4/15/25.
//

import SwiftUI

// SwiftUI 앱 생명 주기를 사용하는 앱은 App 프로토콜을 준수하는 구조체를 가짐
// body 프로퍼티는 하나 이상의 Scene을 반환하며, 각 씬은 화면에 표시할 콘텐츠를 제공함
// @main 속성은 앱의 진입점 (entry point)을 나타냄

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
