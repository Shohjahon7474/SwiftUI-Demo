//
//  DetailScreen.swift
//  swiftUIDemo
//
//  Created by Shohjahon Numonovich on 4/4/22.
//

import SwiftUI
import MapKit

extension UIScreen{
        static let width = UIScreen.main.bounds.size.width
        static let height = UIScreen.main.bounds.size.height
        static let size = UIScreen.main.bounds.size
    }
struct DetailScreen: View {
    var columns: [GridItem] = Array(repeating: .init(.fixed(160)), count: 2)
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns, spacing: 8){
                ForEach((0...20),id: \.self){ index in
            
                    VStack{
                        
                    Image("supreme").resizable()
                            .frame(width: 160, height: 80)
                        Spacer(minLength: 0)
                        
                    Text("Title \(index)").frame(width: 160, height: 40.0).background(Color.gray)
                    
                    }.cornerRadius(12)
                        
                }
            }
        }
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}
