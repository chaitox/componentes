//
//  newView.swift
//  componentes
//
//  Created by Ricardo on 2023-09-04.
//

import SwiftUI

struct newView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var telefono: String = ""
    @State private var showImage: Bool = false
    @State private var stepperValue: Double = 0
    @State private var moreInfo: String = ""
    var body: some View {
        VStack{
            Form{
                Section{
                        
                    TextField("Nombre de usuario", text: $username)
                    TextField("Correo electronico", text: $email)
                        .keyboardType(.emailAddress)
                    TextField("Telefono", text: $telefono)
                        .keyboardType(.numberPad)
                    Text("\(username)")
                }
                
                Section(header: Text("titulo")){
                    
                    //toggle
                    Toggle("Mostrar imagen", isOn: $showImage)
                    if showImage{
                        Image(systemName: "envelope.circle.fill").font(.title)
                    }
                    
                    Stepper("Stepper \(stepperValue)",
                            value: $stepperValue,
                            step: 5.0
                            
                            
                    )
                    TextEditor(text: $moreInfo)
                }
            }
        
    }
        
    }
}

struct newView_Previews: PreviewProvider {
    static var previews: some View {
        newView()
    }
}
