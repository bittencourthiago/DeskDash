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
            ZStack {
                Color.black.opacity(0.7)
                VStack {
                    Spacer()
                    Color.blue
                        .frame(height: viewModel.getPercentOfHeight(value: percent.floatValue))
                        .animation(.easeIn(duration: 0.4), value: percent)
                }
                VStack {
                    Text("\(percent)")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .black))
                    Text("\(type.getName()) Usage (%)")
                        .foregroundColor(.white)
                            .font(.system(size: 13, weight: .black))
                }
            }
            .frame(width: 170, height: 170, alignment: .center)
            .cornerRadius(17)
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
