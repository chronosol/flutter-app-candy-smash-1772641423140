class CandyBoard {
  final List<List<int>> board;

  const CandyBoard({required this.board});

  CandyBoard copyWith({List<List<int>>? board}) {
    return CandyBoard(board: board ?? this.board);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CandyBoard && listEquals(other.board, board);
  }

  @override
  int get hashCode => board.hashCode;

  @override
  String toString() => 'CandyBoard(board: $board)';
}