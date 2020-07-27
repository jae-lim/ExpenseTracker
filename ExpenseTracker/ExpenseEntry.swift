//
//  ExpenseEntry.swift
//  ExpenseTracker
//
//  Created by Jae Lim on 7/26/20.
//

import SwiftUI

struct ExpenseEntry: View {
    
    @State private var enteredExpense = Decimal(0)
    
    let currencyFormatter = NumberFormatter()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Enter Expense")
                .font(.system(size:25))
            TextField("Expense Entry", value: $enteredExpense, formatter:currencyFormatter)
                .font(.system(size: 60))
                .padding()
                .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 5)
                        )
                
            HStack{
                Button("EXPENSE", action: submitExpense)
                    .font(.system(size:30))
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.red)
                    )
                
                Spacer()
                
                Button("INCOME", action:submitExpense)
                    .font(.system(size:30))
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.green)
                    )
            }
            .padding(.vertical)
            Text("Account")
                .font(.system(size:30))
            Spacer()
        }
        .padding()
    }
    
    private func submitExpense(){
        //Placeholder function for now
    }
}

struct ExpenseEntry_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseEntry()
    }
}
