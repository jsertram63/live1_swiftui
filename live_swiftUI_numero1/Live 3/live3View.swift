//
//  live3View.swift
//  live_swiftUI_numero1
//
//  Created by Lunack on 18/03/2022.
//

import SwiftUI


// ColorPicker

struct live3View: View {
    var body: some View {
        VStack(alignment: .center) {
            
            Image(systemName: "swift")
                .resizable()
                .frame(width: 200, height: 200)
                .scaledToFit()
                .foregroundColor(.red)
                .background()
                
            
        }
        
    }
}

struct live3View_Previews: PreviewProvider {
    static var previews: some View {
        live3View()
    }
}
