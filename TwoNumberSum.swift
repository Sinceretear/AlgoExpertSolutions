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


Notes: On2 time. not efficient. use hashtable.

class Program {
  func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
          
          
          var arr = [Int]()

          for x in array {
            for y in array {
              if (x + y == targetSum) && (x != y) {
                if !arr.contains(x) {
                  arr.append(x)
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
