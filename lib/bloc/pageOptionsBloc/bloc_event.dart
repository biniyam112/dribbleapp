class BlocEvent {}

class SelectHomeContent extends BlocEvent {
  final int index;

  SelectHomeContent(this.index);
}
