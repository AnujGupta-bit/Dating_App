import 'package:flutter/material.dart';



class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TicTacToeGame(),
    );
  }
}

class TicTacToeGame extends StatefulWidget {
  @override
  _TicTacToeGameState createState() => _TicTacToeGameState();
}

class _TicTacToeGameState extends State<TicTacToeGame> {
  List<String> _board = List.filled(9, '');
  String _currentPlayer = 'X';
  bool _gameOver = false;
  String _winner = '';

  void _resetGame() {
    setState(() {
      _board = List.filled(9, '');
      _currentPlayer = 'X';
      _gameOver = false;
      _winner = '';
    });
  }

  void _makeMove(int index) {
    if (_board[index] == '' && !_gameOver) {
      setState(() {
        _board[index] = _currentPlayer;
        if (_checkWinner(_currentPlayer)) {
          _gameOver = true;
          _winner = 'Player1 $_currentPlayer wins!';
        } else if (!_board.contains('')) {
          _gameOver = true;
          _winner = 'It\'s a draw!';
        } else {
          _currentPlayer = _currentPlayer == 'X' ? 'O' : 'X';
        }
      });
    }
  }

  bool _checkWinner(String player) {
    const winPatterns = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var pattern in winPatterns) {
      if (_board[pattern[0]] == player &&
          _board[pattern[1]] == player &&
          _board[pattern[2]] == player) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Tic Tac Toe',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 30, fontStyle: FontStyle.italic),),
      ),
      body:
      SingleChildScrollView( child:
      Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            _winner.isNotEmpty ? _winner : 'Player $_currentPlayer\'s turn',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          GridView.builder(

            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _makeMove(index),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF0E1E3A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      _board[index],
                      style: TextStyle(fontSize: 40 , color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20 , child:Container(
            decoration: BoxDecoration(
              color:  Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),

          ),
          ),
          ElevatedButton(

            onPressed: _resetGame,
            child: Text('Reset Game' ,style: TextStyle(fontStyle: FontStyle.italic, fontSize: 25, color: Colors.green),),
          ),

        ],
      ),
      ),
    );
  }
}
