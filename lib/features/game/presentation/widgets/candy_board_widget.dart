import 'package:flutter/material.dart';
import '../../domain/entities/candy_board.dart';

class CandyBoardWidget extends StatelessWidget {
  final CandyBoard board;

  const CandyBoardWidget({super.key, required this.board});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 9),
      itemCount: 81,
      itemBuilder: (context, index) {
        final int row = index ~/ 9;
        final int col = index % 9;
        return Container(
          margin: const EdgeInsets.all(4.0),
          color: Colors.blue[(board.board[row][col] + 1) * 100],
        );
      },
    );
  }
}