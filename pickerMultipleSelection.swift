/
//  pickerMultipleSelection.swift
//  iTunesFinder2
//
//  Created by Jordan Chap on 12.05.2024.
//

import SwiftUI

struct pickerMultipleSelection: View {
	
	@Binding var selection: [String]
	var choices: [String]

    var body: some View {
		List(choices, id: \.self){ item in
			HStack {
				Button(action: {
					if selection.contains(item){
						selection.removeAll { $0 == item }
					} else {
						selection.append(item)
					}
				}){
					Text(item)
						.foregroundStyle(.foreground)
				}
				Spacer()
				if selection.contains(item){
					Image(systemName: "checkmark")
						.foregroundStyle(Color.accentColor) // To get the IK's Blue
				}
			}
		}
    }
}
