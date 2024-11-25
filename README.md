# knight_travails
A chessboard piece that travels from point A -> B using the shortest path possible

This project is the most challenging one yet i have came across, at first i had no idea on where to start bacause i hade to use the Data Structures i have learnt such as BFS to solve the problem.

## Challanges

I had to use an algortihm that will help me find the shortest path from one place to another on a non weghted graph (Chessboard)
SO i tried the following:

1. Dijkstra's Algorithm
2. Breadth First Search

## Soltuions

1. So as i studied Dijkstra's Algorithm I noticed that i wil have to include weights on the egdes where the `weight` == distance from one node to another and where `edges` == all next possible knight move on chessboard

- I saw this won't work as i could not exactly calculate a distance from the start node using coordinates from a chessboard
> [!NOTE] Although i could not use the Dijkstra's algorithm for this porblem it does not neccesarily mean it is not possible.

2. SO i then used this Algortihm `Breadth First Search` where i do not need to have a weighted graph to find the shortest path possible from one node to every other node