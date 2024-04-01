//
//  ContentView.swift
//  MapkitTest
//
//  Created by 邓璟琨 on 2024/4/1.
//

import SwiftUI
import MapKit
import Combine

struct ContentView: View {
    @State var manager = CLLocationManager()
    @State var alert = false
    var body: some View {
        MapView(manager: $manager, alert: $alert).alert(isPresented: $alert) {
            Alert(title: Text("请允许位置请求"))
        }
    }
}


#Preview {
    ContentView()
}
