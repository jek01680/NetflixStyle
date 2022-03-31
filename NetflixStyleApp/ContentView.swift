//
//  ContentView.swift
//  NetflixStyleApp
//
//  Created by 정은경 on 2022/03/31.
//

import SwiftUI

struct ContentView: View {
    let titles = ["Netflix Sample App"]
    
    var body: some View {
        NavigationView {
            List(titles, id: \.self) {
                let netflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                    .background(Color.black)
                NavigationLink($0, destination: netflixVC)
            }
            
            .navigationTitle("SwiftUI to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
