//
//  ContentView.swift
//  MultiplicationTable
//
//  Created by Angelos Staboulis on 26/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Multiplication Table of 1 to 10")
            .padding()
            ScrollView{
                ForEach(1..<11){row in
                    Text("Multiplication Table of \(row)").padding()
                    ForEach(1..<11){col in
                        Text(produceResultRow(row: row, col: col)).padding()
                    }
                }
            }
    }
    func produceResultRow(row:Int,col:Int)->String{
        let calculateResult = row * col
        return  "\(row)"+"    X   "+"\(col)"+"    =   "+"\(calculateResult)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
