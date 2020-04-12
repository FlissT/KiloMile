//
//  ContentView.swift
//  KiloMile
//
//  Created by Fliss Tournant on 12/04/2020.
//  Copyright © 2020 Fliss Tournant. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var milesCount = ""
    @State private var conVert = 1.609
    
    // this does the calculation to convert miles to kilometres
    var kiloConversion: Double {
        let kMs = Double(milesCount) ?? 0
        
        let conversionRate = kMs * conVert
        return conversionRate
    }
    
    // this is the bit that actually shows the app
    var body: some View {
        NavigationView {
        Form {
            Section {
                TextField("Miles", text: $milesCount)
                    .keyboardType(.decimalPad)
                
                    }
            
            Section(header: Text("Kilometres to Miles")) {
            Text("\(kiloConversion, specifier: "%.1f")")
            }
            .navigationBarTitle("Convert Miles to Kilometres", displayMode: .inline)
        }
    }
            
            

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
