# Motivation-Machine-Learning-
Motivational drive Machine learning 
Imagine our agent as a dumb virtual robot that can learn through experience. The agent can pass from one room to another but has no knowledge of the environment, and doesn't know which sequence of doors lead to the outside.


Suppose we want to model some kind of simple evacuation of an agent from any room in the building. Now, suppose we have an agent in Room 2 and we want the agent to learn to reach outside the house (5).


The terminology in Q-Learning includes the terms "state" and "action".
We'll call each room, including outside, a "state", and the agent's movement from one room to another will be an "action".  In our diagram, a "state" is depicted as a node, while "action" is represented by the arrows.

Suppose the agent is in state 2.  From state 2, it can go to state 3 because state 2 is connected to 3.  From state 2, however, the agent cannot directly go to state 1 because there is no direct door connecting room 1 and 2 (thus, no arrows).  
From state 3, it can go either to state 1 or 4 or back to 2 (look at all the arrows about state 3).  If the agent is in state 4, then the three possible actions are to go to state 0, 5 or 3.  If the agent is in state 1, it can go either to state 5 or 3.  From state 0, it can only go back to state 

Q(state, action) = R(state, action) + Gamma * Max[Q(next state, all actions)]

According to this formula, a value assigned to a specific element of matrix Q is equal to the sum of the corresponding value in matrix R and the learning parameter Gamma, multiplied by the maximum value of Q for all possible actions in the next state.

Our virtual agent will learn through experience, without a teacher (this is unsupervised learning).  
The agent will explore from state to state until it reaches the goal. We'll call each exploration an episode.  
Each episode consists of the agent moving from the initial state to the goal state.  Each time the agent arrives at the goal state, the program goes to the next episode.

Set the gamma parameter and environment rewards in matrix R.

Initialize matrix Q to zero.

For each episode:
Select a random initial state.
Do while the goal state hasn't been reached.
Select one among all possible actions for the current state.
Using this possible action, consider going to the next state.
Get the maximum Q value for this next state based on all possible actions.
Compute: Q(state, action) = R(state, action) + Gamma * Max[Q(next state, all actions)]
Set the next state as the current state.
End Do
End For
