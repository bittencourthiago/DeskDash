//
//  SmallRectangleView.swift
//  DeskDash (iOS)
//
//  Created by Thiago on 12/04/22.
//

import SwiftUI

struct SmallRectangleView: View {
    
    @ObservedObject var viewModel = SmallRectangleViewModel()
    let type: TerminalCommands
    
    var body: some View {
        Button(action: {
            viewModel.sendCommand()
        }, label: {
            Group {
                Image(systemName: type.getImageName())
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            .frame(width: 80, height: 80, alignment: .center)
            .background(.black.opacity(0.8))
            .cornerRadius(13)
        })
    }
    
    
    
}

struct SmallRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        SmallRectangleView(type: .discord)
            .previewLayout(.sizeThatFits)
    }
}
