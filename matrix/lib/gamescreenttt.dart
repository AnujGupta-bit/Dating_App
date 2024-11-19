import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:matrix/homescreenttt.dart';
class screen extends StatefulWidget {
  String player1;
  String player2;

  screen({required this.player1, required this.player2});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  late List<List<String>> _board ;
  late String _currentPlayer;
  late String _Winner ;
  late bool _GameOver ;
@override
  void initState() {
    super.initState();
    _board = List.generate(3, (_) => List.generate(3, (_) => ""));
    _currentPlayer = "O";
    _Winner = "";
    _GameOver = false;
  }
    void resetGame() {
      setState(() {
        _board = List.generate(3, (_) => List.generate(3, (_) => ""));
        _currentPlayer = "X";
        _Winner = "";
        _GameOver = false;
      });
    }
    void makeMove(int row, int col) {
      if (_board[row][col] != "" || _GameOver) {
        return;
      }
      setState(() {
        _board[row][col] = _currentPlayer;
        if (_board[row][0] == _currentPlayer &&
            _board[row][1] == _currentPlayer &&
            _board[row][2] == _currentPlayer) {
          _Winner = _currentPlayer;
          _GameOver = true;
        }
        else if (_board[0][col] == _currentPlayer &&
            _board[1][col] == _currentPlayer &&
            _board[2][col] == _currentPlayer) {
          _Winner = _currentPlayer;
          _GameOver = true;
        }
        else
        if (_board[0][0] == _currentPlayer && _board[1][1] == _currentPlayer &&
            _board[2][2] == _currentPlayer) {
          _Winner = _currentPlayer;
          _GameOver = true;
        }
        else
        if (_board[0][2] == _currentPlayer && _board[1][1] == _currentPlayer &&
            _board[2][0] == _currentPlayer) {
          _Winner = _currentPlayer;
          _GameOver = true;
        }
        _currentPlayer = _currentPlayer == "X" ? "0" : " X";
        if (!_board.any((row) => row.any((cell) => cell == ""))) {
          _GameOver = true;
          _Winner = "sorry yrr Its a Tie ";
        }
        if (_Winner != "") {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.success,
            animType: AnimType.rightSlide,
            btnOkText: "Play Again",
            title: _Winner == "X"
                ? widget.player1 + "Won!!"
                : _Winner == "0"
                ? widget.player2 + "Won!"
                : " Its a Tie",
            btnOkOnPress: () {
              resetGame();
            },


          )
            ..show();
        }
      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF323D58),  // 0xFF323D58
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 70),
          SizedBox(
            height: 120 ,
            child:Column(
              children: [
                Row(
                  mainAxisAlignment:  MainAxisAlignment.center,
                  children: [
                    Text("Turn: ",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(_currentPlayer == "X"
                    ? widget.player1 + " ($_currentPlayer)"
                        : widget.player2 + " ($_currentPlayer)",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color:  _currentPlayer == "O" ?
                        Colors.redAccent : Colors.teal ,
                      ),
                    )

                  ],
                ),
                SizedBox(height:  20),
              ],
            )  ,
          ),
          SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF6B84),
              borderRadius: BorderRadius.circular(10),

            ),
            margin:  EdgeInsets.all(5),
            child: GridView.builder(
                itemCount: 9,
                shrinkWrap:  true,
                physics:  NeverScrollableScrollPhysics(),

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ), itemBuilder: (context , index)

            {
              // int row = index ~/3;
              // int col = index % 3 ;
              int row = index ~/ 3;
              int col = index % 3;
              return GestureDetector(
                onTap:()=> makeMove(row,col),
                child: Container(
                  margin:  EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color(0xFF0E1E3A),
                    borderRadius: BorderRadius.circular(10),
                  ),
child: Center(
  child: Text(
    _board[row][col],
    style: TextStyle(
      fontSize: 120,
      fontWeight:  FontWeight.bold,
     color: _board[row][col] == "X" ? Color(0xFFE25041)
         : Color(0xFF1CBD9E),
    ),
  ),
),
                ),

              );
            }
            ),
          ),
          SizedBox(height:  15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> first(),
      ));
      widget.player1 = "";
      widget.player2 = "";
      },
                child: Container(
                  decoration: BoxDecoration(
                    color:  Colors.green,
                    borderRadius: BorderRadius.circular(10),

                  ),

     child:  Padding(
       padding: const EdgeInsets.symmetric(vertical: 18 , horizontal: 20),
       child: Text(""
           "Reset Game",style: TextStyle(
         fontSize: 24 ,
         fontWeight: FontWeight.bold,
         color: Colors.white
       ),),
     ),
                ),
              )
            ],
          )
        ],),
      ),

    );
  }
}
