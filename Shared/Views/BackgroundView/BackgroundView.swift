//
//  BackgroundView.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 14/04/22.
//

import SwiftUI

struct BackgroundView: View {
	// MARK: - Properties

	@State private var randomCircle = Int.random(in: 12...16)
	@State private var isAnimating: Bool = false

	// MARK: - Functions

	func randomCoordinate(max: CGFloat) -> CGFloat {
		return CGFloat.random(in: 0...max)
	}

	func randomSize() -> CGFloat {
		return CGFloat(Int.random(in: 10...300))
	}

	func randomScale() -> CGFloat {
		return CGFloat(Double.random(in: 0.1...2.0))
	}

	func randomSpeed() -> Double {
		return Double.random(in: 0.025 ... 1.0)
	}

	func randomDelay() -> Double {
		return Double.random(in: 0...2)
	}

	var body: some View {
		GeometryReader { geometry in
			ZStack {
				Color.black
				ForEach(0...randomCircle, id: \.self) { _ in
					Circle()
						.foregroundColor(.blue.opacity(2))
						.opacity(0.1)
						.blur(radius: 20)
						.frame(width: randomSize(), height: randomSize(), alignment: .center)
						.scaleEffect(isAnimating ? randomScale() : 1)
						.position(
							x: randomCoordinate(max: geometry.size.width),
							y: randomCoordinate(max: geometry.size.height)
					)
						.animation(
							Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
								.repeatForever()
								.speed(randomSpeed())
								.delay(randomDelay())
						)
						.onAppear(perform: {
							isAnimating = true
						})
				}//: Loop
				Color.gray.opacity(0.25)
			}//: ZStack
			.drawingGroup()
			.ignoresSafeArea()
		}//: Geometry
	}
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
			.previewDevice("iPhone 11")
    }
}
