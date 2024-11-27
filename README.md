# knight_travails
A chessboard piece that travels from point A -> B using the shortest path possible

This project is the most challenging one yet i have came across, at first i had no idea on where to start bacause i hade to use the Data Structures i have learnt such as BFS to solve the problem.

> [!IMPORTANT]
> Be sure to run `bundle install` in the .bundle directory to install all dependencies and then run `ruby main.rb` which is the root file

## Challanges

I had to use an algortihm that will help me find the shortest path from one place to another on a non weghted graph (Chessboard)
SO i tried the following:

- [ ] Dijkstra's Algorithm
- [x] Breadth First Search

## Soltuions

1. So as i studied Dijkstra's Algorithm I noticed that i wil have to include weights on the egdes where the `weight` == distance from one node to another and where `edges` == all next possible knight move on chessboard

- I saw this won't work as i could not exactly calculate a distance from the start node using coordinates from a chessboard

> [!NOTE]
> Although i could not use the Dijkstra's algorithm for this porblem it does not neccesarily mean it is not possible.

2. So i then used this Algortihm `Breadth First Search` where i do not need to have a weighted graph to find the shortest path possible from one node to every other node

## Data Structures and Algorithms

### Data Structures
- Queue
- Hash
- Item class

Queue wil keep track of all valid knight moves on each BFS
Hash will store all the previous moves on saved moves
Item class stores edges on queue (`from` and `to` squares on chessboard)

### Algortihms
- Breadth First Search

## Discoveries

It turns out for `Hash.new` i can use any Data Type even arrays themselves (coordinates)
`hash = {[0, 0] => 'data'}`

> [!WARNING]
> I myself did not wite  some of the code i wrote here for i used AI to help me program the printed chessboard on terminal, which was a bad thing by the way :/, ey but shout out to chatgpt tho he a real one !!!

