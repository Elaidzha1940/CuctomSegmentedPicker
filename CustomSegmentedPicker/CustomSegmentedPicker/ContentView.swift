//  /*
//
//  Project: CustomSegmentedPicker
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 03.04.2023
//
//  Status / Decoreted
//
//  */

import SwiftUI

// MARK: CustomSegmentedPicker |

struct CustomSegmentedPicker: View {
    
    @State var currentTab = "Planned"
    @Namespace var animation
    
    var body: some View {
        
        HStack {
            
            Text("Planned for today")
                .fontWeight(.regular)
                .padding(.vertical, 18)
                .padding(.horizontal, 25)
                .background(
                    
                    ZStack {
                        if currentTab == "Planned for today" {
                            Color.brown
                                .cornerRadius(13)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                )
                .foregroundColor(currentTab == "Planned for today" ?
                    .white : .black)
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                        currentTab = "Planned for today"
                    }
                }
            Spacer()
            
            Text("Archive")
                .fontWeight(.regular)
                .padding(.vertical, 18)
                .padding(.horizontal, 65)
                .background(
                    
                    ZStack {
                        if currentTab == "Archive" {
                            Color.brown
                                .cornerRadius(13)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                )
                .foregroundColor(currentTab == "Archive" ?
                    .white : .black)
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                        currentTab = "Archive"
                    }
                }
        }
        .padding(.vertical, 7)
        .padding(.horizontal, 9)
        .background(Color.green)
        .cornerRadius(13)
    }
}

struct CustomSegmentedPicker_Previews: PreviewProvider {
    static var previews: some View {
            CustomSegmentedPicker()
    }
}

