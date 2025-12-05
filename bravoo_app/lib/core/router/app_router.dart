import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/signup_screen.dart'; // ADD THIS
import '../../features/auth/presentation/screens/email_entry_screen.dart';
import '../../features/home/presentation/screens/contest_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      final session = Supabase.instance.client.auth.currentSession;
      final isLoggedIn = session != null;
      final isGoingToAuth =
          state.matchedLocation == '/login' ||
          state.matchedLocation == '/signup' || // ADD THIS
          state.matchedLocation == '/email-entry';

      // If user is logged in and trying to access auth screens, redirect to home
      if (isLoggedIn && isGoingToAuth) {
        return '/home';
      }

      // If user is not logged in and trying to access home, redirect to login
      if (!isLoggedIn && state.matchedLocation == '/home') {
        return '/login';
      }

      return null; // No redirect
    },
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/signup', // ADD THIS ROUTE
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/email-entry',
        builder: (context, state) => const EmailEntryScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const ContestScreen(),
      ),
    ],
  );
});
