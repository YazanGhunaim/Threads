//
//  ThreadCell.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/23/23.
//

import SwiftUI

struct ThreadCell: View {
    let thread: Thread
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                
                // MARK: Profile pic
                CircularProfileImageView(user: thread.user, size: .small)
                
                //MARK: Username + thread details + caption
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text(thread.user?.userName ?? "")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        // MARK: Details
                        Text(thread.timeStamp.timestampString())
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                        
                    }
                    
                    // MARK: Caption
                    Text(thread.caption)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    // MARK: Action buttons
                    ActionButtons()
                }
            }
            
            Divider()
        }
        .padding()
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell(thread: dev.thread)
    }
}

struct ActionButtons: View {
    var body: some View {
        HStack(spacing: 16) {
            
            // like
            Button {
                
            } label: {
                Image(systemName: "heart")
            }
            
            // comment
            Button {
                
            } label: {
                Image(systemName: "bubble.right")
            }
            
            // reshare
            Button {
                
            } label: {
                Image(systemName: "arrow.rectanglepath")
            }
            
            // forward
            Button {
                
            } label: {
                Image(systemName: "paperplane")
            }
            
        }
        .padding(.vertical, 8)
        .foregroundColor(.black)
    }
}
