//
//  DylanView.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 18/03/2022.
//

import SwiftUI

struct DylanView: View {
    
    @State private var appleColor = Color.accentColor
    @State private var animationPencil: Bool = false
        
        var body: some View {
            VStack {
                Image(systemName: "applelogo")
                    .resizable()
                    .frame(width: 40, height: 45)
                Spacer()
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.black.opacity(0.2), lineWidth: 8)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.black.opacity(0.2), lineWidth: 18)
                            .frame(width: 100, height: 100, alignment: .center)
                    } // ZSTACK
                    Image(systemName: "swift")
                        .resizable()
                        .frame(width: 140, height: 145, alignment: .center)
                        .offset(y: animationPencil ? 35 : -35)
                        .animation(
                            Animation
                                .easeInOut(duration: 4)
                                .repeatForever()
                            , value: animationPencil
                        )
                } // ZSTACK CENTER
                .onAppear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                        animationPencil = true
                    })
                })
                Spacer()
                VStack {
                    ColorPicker("Changez la Couleur", selection: $appleColor, supportsOpacity: true)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .fixedSize()
                        .padding()
                } // VSTACK
                .padding(.all, 2.0)
                .padding(.vertical, 20)
                .frame(height: 56.0)
                .background(.ultraThinMaterial)
                .cornerRadius(30.0)
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5)
            } // VSTACK
            .padding(45)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(appleColor)
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                    animationPencil = true
                })
            })
        }
    }


struct DylanView_Previews: PreviewProvider {
    static var previews: some View {
        DylanView()
    }
}
