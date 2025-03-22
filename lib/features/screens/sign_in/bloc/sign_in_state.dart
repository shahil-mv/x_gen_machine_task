import 'package:equatable/equatable.dart';

class SignInState extends Equatable {
  final int cont;

  // final double HomePageRawCount;

  const SignInState({
    this.cont = 0,
  });

  SignInState copyWith({
    int? cont,
  }) {
    return SignInState(
      cont: cont ?? this.cont,
     );
  }

  @override
  List<Object?> get props => [cont];
}
