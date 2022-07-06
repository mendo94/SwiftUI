//
//  Board.swift
//  Connectfour
//
//  Created by Rina Mendoza on 7/6/22.
//

import Foundation
import UIKit

// Creating the board
var board = [[BoardItem]]()

func resetBoard()
{
    board.removeAll()
    
    for row in 0...5
    {
        var rowArray = [BoardItem]()
        for column in 0...6
        {
            let indexPath = IndexPath.init(item: column, section: row)
            let boardItem = BoardItem(indexPath: indexPath, tile: Tile.Empty)
            rowArray.append(boardItem)
        }
    }
}
