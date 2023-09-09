//
//  File.swift
//  
//
//  Created by Kaushlendra Pal on 09/09/23.
//

import Foundation

/**
 *   Goal:  Print Binary Tree in order Line by Line
 *
 */

extension BinaryTree {
    
    func printTree(_ root: TreeNode?) -> [[String]] {
            let height = maxDepth(root)
            let width = power(height) - 1
            var output: [[String]] = Array(repeating: Array(repeating: "", count: width) , count: height)
            printNodeHelper(root, 0, width, 0, &output)
            
            return output
        }

        func printNodeHelper(_ node: TreeNode?, _ leftIndex: Int,
                            _ rightIndex: Int, _ level: Int,
                            _ matrix: inout [[String]]) {
            guard let node = node else { return }
            
            let middle = leftIndex + (rightIndex - leftIndex) / 2
            matrix[level][middle] = "\(node.val)"
            
            printNodeHelper(node.left, leftIndex, middle, level + 1, &matrix)
            printNodeHelper(node.right, middle + 1, rightIndex, level + 1, &matrix)
            
        }

        func power(_ n: Int) -> Int {
            guard n != 0 else { return 1 }
            var powValue = pow(2.0, Double(n))
            return Int(powValue)
        }

        func maxDepth(_ node: TreeNode?) -> Int {
            guard let node = node else { return 0 }
            return 1 + max(maxDepth(node.left), maxDepth(node.right))
        }
    
}


extension BinaryTree {
    
    func printDiagram(of node: TreeNode?,
                           _ top: String = "",
                           _ root: String = "",
                           _ bottom: String = "") -> String {
        guard let node = node else { return root + "nil\n" }
        
        if node.left == nil && node.right == nil {
          return root + "\(node.val)\n"
        }
        
        return printDiagram(of: node.right,
                       top + "", top + "┌──", top + "│ ")
             + root + "\(node.val)\n"
             + printDiagram(of: node.left,
                       bottom + "│ ", bottom + "└──", bottom + "")
      }
    
}

