abstract class SignInEvent {}

class SignInButtonPressed extends SignInEvent {
  final String name;
  final String email;
  final String password;
  final context;
  SignInButtonPressed({
    required this.name,
    required this.email,
    required this.password,
    required this.context,
  });
}
