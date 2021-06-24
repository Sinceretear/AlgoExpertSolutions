Notes: My code is far from the instructed code and uses this "max" method provided by the swift language. 

Problem:
  
  There's an algorithms tournament taking place in which teams of programmers
  compete against each other to solve algorithmic problems as fast as possible.
  Teams compete in a round robin, where each team faces off against all other
  teams. Only two teams compete against each other at a time, and for each
  competition, one team is designated the home team, while the other team is the
  away team. In each competition there's always one winner and one loser; there
  are no ties. A team receives 3 points if it wins and 0 points if it loses. The
  winner of the tournament is the team that receives the most amount of points.

  Given an array of pairs representing the teams that have competed against each
  other and an array containing the results of each competition, write a
  function that returns the winner of the tournament. The input arrays are named
  competitions and results ...


Sample Input:

competitions  = [
  ["HTML", "C#"],
  ["C#", "Python"],
  ["Python", "HTML"],
]

results = [0, 0, 1]

Sample Output:
"Python"

class Program {
  let HOME_TEAM_WON = 1

  func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
    
		var dict = [String: Int]()
		var i = 0
		
		while i < results.count {
			var arr = competitions[i]
			
			if results[i] == 0 {
				var win = arr[1] 
				if dict[win] == nil {
					dict[win] = 1
				}	else {
					dict[win] = dict[win]! + 1
				}
			} else {
				var win = arr[0]
				if dict[win] == nil {
					dict[win] = 1
				}	else {
					dict[win] = dict[win]! + 1
				}
			}
			i += 1
		}
		
		let winner = dict.max { a, b in a.value < b.value }
		
		return winner!.key
  }
}
