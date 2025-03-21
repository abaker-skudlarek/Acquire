extends Node
"""

# Classes/Scripts/Autoloads

** game manager ****************************************************************************************************************************
- acts as the "DM" of the game
- performs game setup (by telling any other components to do things at certain times for set up)
- maintains the game "loop"
-- keeps track of who's turn it is, and the sequence of things they can do on their turn
********************************************************************************************************************************************

** rules manager ***************************************************************************************************************************
- holds logic to take care of any rules that need to be maintained, such as:
-- if a tile placement is valid
-- checks if the game is over maybe? could provide each player with a button to "declare game over" and when it's pressed, the rules
    manager is the one that checks if it's true
********************************************************************************************************************************************

** banker **********************************************************************************************************************************
- deals with stocks
-- holds stock stockpile
-- hands out and receives stocks when players buy/sell them
-- keeps track of stock prices
- deals with money
-- gives or takes player's money when needed
-- provides payouts based on mergers and the current stock prices
- deals with tiles
-- holds the tiles stockpile
-- deals new tiles when they are needed
-- holds "unusable" tiles stockpile and deals a new one when it's needed
********************************************************************************************************************************************



"""