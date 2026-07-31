import 'package:go_router/go_router.dart';
import 'package:lire/features/library/presentation/pages/library_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LibraryPage(),
    ),
  ],
);