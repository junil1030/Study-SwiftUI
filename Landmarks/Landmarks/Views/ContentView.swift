//
//  ContentView.swift
//  Landmarks
//
//  Created by 서준일 on 4/15/25.
//

import SwiftUI

// 기본적으로 SwiftUI 뷰 파일은 하나의 구조체와 프리뷰를 선언함
// 이 구조체는 View 프로토콜을 준수하며, 해당 뷰의 콘텐츠와 레이아웃을 정의함

// SwiftUI에서 뷰를 만들 때는 body 프로퍼티 안에서 내용, 레이아웃, 동작을 표현하지만,
// body는 항상 하나의 뷰만 반환해야 함

// 여러 개의 뷰를 사용할 경우 Stack(Horizontal, Vertical, Z)으로 뷰를 묶을 수 있음

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

// 프리뷰 선언은 그 뷰에 대한 미리보기를 생성함
// 캔버스가 보이지 않을 경우, Editor > Canvas 선택
#Preview {
    ContentView()
        .environment(ModelData())
}
