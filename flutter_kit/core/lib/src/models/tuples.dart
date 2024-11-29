class Pair<T1, T2> {
  const Pair(this.first, this.second);

  final T1 first;
  final T2 second;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Pair<T1, T2> &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.second, second) || other.second == second));
  }

  @override
  int get hashCode => Object.hash(runtimeType, first, second);
}
