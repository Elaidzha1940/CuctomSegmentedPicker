//
//  ContentView.swift
//  CustomSegmentedPicker
//
//  Created by Elaidzha Shchukin on 03.04.2023.
//

import SwiftUI

// MARK: CustomSegmentedPicker |

struct CustomSegmentedPicker: View {
    
    @State var currentTab = "Planned"
    @Namespace var animation
    
    var body: some View {
        
        HStack {
            
            Text("Запланированные")
                .fontWeight(.regular)
                .padding(.vertical, 18)
                .padding(.horizontal, 25)
                .background(
                    
                    ZStack {
                        if currentTab == "Запланированные" {
                            Color.elements(.Epink)
                                .cornerRadius(13)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                )
                .foregroundColor(currentTab == "Запланированные" ?
                    .white : .black)
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                        currentTab = "Запланированные"
                    }
                }
            Spacer()
            
            Text("Архив")
                .fontWeight(.regular)
                .padding(.vertical, 18)
                .padding(.horizontal, 65)
                .background(
                    
                    ZStack {
                        if currentTab == "Архив" {
                            Color.elements(.Epink)
                                .cornerRadius(13)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                )
                .foregroundColor(currentTab == "Архив" ?
                    .white : .black)
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                        currentTab = "Архив"
                    }
                }
        }
        .padding(.vertical, 7)
        .padding(.horizontal, 9)
        .background(Color.elements(.bright))
        .cornerRadius(13)
    }
}

struct CustomSegmentedPicker_Previews: PreviewProvider {
    static var previews: some View {
        self.devices {
            CustomSegmentedPicker()
        }
    }
}

