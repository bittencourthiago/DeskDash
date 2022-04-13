//
//  UsageRectangleView.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import SwiftUI

struct UsageRectangleView: View {
    
    @State var percent = "100.22"
    
    let type: PercentType
    var viewModel = UsageRectangleViewModel()
    
    var body: some View {
        Button(action: {
            
        }, label: {
            VStack {
                Text("\(percent)")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .black))
                Text("\(type.getName()) Usage (%)")
                    .foregroundColor(.white)
                        .font(.system(size: 13, weight: .black))
                }
                .frame(width: 170, height: 170, alignment: .center)
                .background(.black.opacity(0.8))
                .cornerRadius(13)
            })
            .onAppear {
                viewModel.getUsage { usage in
                    switch type {
                        case .cpu:
                            self.percent = usage.cpu
                        case .memory:
                            self.percent = usage.memory
                }
            }
        }
    }
}

struct UsageRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        UsageRectangleView(type: .cpu)
            .previewLayout(.sizeThatFits)
    }
}
