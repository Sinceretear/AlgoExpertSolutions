Question: 
  Write a function that takes in a non-empty array of distinct integers and an
  integer representing a target sum. If any two numbers in the input array sum
  up to the target sum, the function should return them in an array, in any
  order. If no two numbers sum up to the target sum, the function should return
  an empty array.

  Note that the target sum has to be obtained by summing two different integers
  in the array; you can't add a single integer to itself in order to obtain the
  target sum.

  You can assume that there will be at most one pair of numbers summing up to
  the target sum.
  
Sample Input:
  array  = [3, 5, -4, 8, 11, 1, -1, 6]
  targetSum = 10
  
Sample Output :
  [11, -1]


Notes: I dont think I need a reference to num. Maybe idk, my solution seemed to be much simpler that their solutions. 

class Program {
  func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
          
          var num = 0
          var arr = [Int]()

          for x in array {
            num = x
            for y in array {
              if (num + y == targetSum) && (num != y) {
                if !arr.contains(num) {
                  arr.append(num)
                  arr.append(y)
                  break
                }
              }
            }
          }
		
      return arr
  }
}


Passed 11 Test Cases!
