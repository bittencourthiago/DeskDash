//
//  SmallRectangleView.swift
//  DeskDash (iOS)
//
//  Created by Thiago on 12/04/22.
//

import SwiftUI

struct SmallRectangleView: View {
    
    @ObservedObject var viewModel = SmallRectangleViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                viewModel.sendCommand()
            }
    }
    
    
    
}

struct SmallRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        SmallRectangleView()
    }
}
