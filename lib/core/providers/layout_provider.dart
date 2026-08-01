import 'package:flutter_riverpod/flutter_riverpod.dart';

enum LibraryLayout {
  list,
  grid,
}

class LayoutNotifier extends StateNotifier<LibraryLayout> {
  LayoutNotifier() : super(LibraryLayout.list);

  void toggle() {
    state = state == LibraryLayout.list
        ? LibraryLayout.grid
        : LibraryLayout.list;
  }
}

final layoutProvider =
    StateNotifierProvider<LayoutNotifier, LibraryLayout>(
  (ref) => LayoutNotifier(),
);