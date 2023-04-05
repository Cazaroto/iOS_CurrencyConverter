//
//  ContentView.swift
//  Currency Converter
//
//  Created by Danilo Cazaroto de Oliveira on 23/03/23.
//

import SwiftUI

struct ConverterView: View {
    @State var selectedCurrency1: Currency
    @State var selectedCurrency2: Currency
    @State private var amount: Double = 0.0
    let currencies: [Currency] = [Currency.init(id: 1, description: "USD"),
                                Currency.init(id: 2, description: "CAD"),
                                Currency.init(id: 3, description: "BRL")]
    
    var body: some View {
        VStack() {
            
            HStack(){
                Picker("Currency1", selection: $selectedCurrency1) {
                   ForEach(currencies, id: \.self) { currency in
                       Text(currency.description)
                           .tag(currency.id)
                           .font(.largeTitle)
                   }
                }
                .pickerStyle(.automatic)
                
                
                Spacer()
                
                Button {
                    print("Edit button was tapped")
                } label: {
                    Image(systemName: "rectangle.2.swap")
                }
                
                Spacer()
                
                Picker("Currency2", selection: $selectedCurrency2) {
                    ForEach(currencies, id: \.self) {currency in
                        Text(currency.description)
                            .tag(currency.id)
                            .font(.title)
                    }
                }
                .pickerStyle(.automatic)
            }
            .background()
            .padding([.leading, .trailing], 50)
            
            Spacer()
            
            currencyTextField(value: $amount)
            .keyboardType(.decimalPad)
            .font(Font.system(size: 60, design: .default))
            .multilineTextAlignment(.trailing)
            .background(Color.gray.opacity(0.15))
            .cornerRadius(16)
            .padding()
            
            Spacer()
            
            Button("Convert") { }
            .buttonStyle(.borderedProminent)
            .tint(.accentColor)
            .font(.title) // aumenta o tamanho da fonte
            .frame(width: .infinity) // define o tamanho do botão
            .background(Color.blue) // adiciona uma cor de fundo ao botão
            .foregroundColor(.white) // define a cor do texto
            .cornerRadius(16) //
            
            Spacer()
            
            Text("0.00")
            .font(Font.system(size: 80, design: .rounded))
            .foregroundColor(.primary)
            .frame(width: .infinity, height: 300)
            
            Spacer()
        }
        .padding(.top, 40)
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .top
            )
    }
}

// MARK: - Components
extension ConverterView {
    
    // MARK: - TextField for currency
    func currencyTextField(value: Binding<Double>) -> some View {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = ""
        
        return TextField("Enter amount", value: value, formatter: formatter)
            .keyboardType(.decimalPad)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterView(selectedCurrency1: Currency.init(id: 1, description: "USD"), selectedCurrency2: Currency.init(id: 2, description: "CAD"))
    }
}
