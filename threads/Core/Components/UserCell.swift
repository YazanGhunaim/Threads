//
//  UserCell.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/23/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            // MARK: Profile pic
            CircularProfileImageView()
            
            // MARK: user details
            VStack(alignment: .leading) {
                Text("yazanghunaim")
                    .fontWeight(.semibold)
                
                Text("blitz")
            }
            .font(.footnote)
            
            
            Spacer()
            
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
