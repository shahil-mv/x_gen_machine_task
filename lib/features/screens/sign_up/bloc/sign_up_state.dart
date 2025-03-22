import 'package:equatable/equatable.dart';

class SignUpState extends Equatable {
  final int cont;

  // final double HomePageRawCount;

  const SignUpState({
    this.cont = 0,
  });

  SignUpState copyWith({
    int? cont,
  }) {
    return SignUpState(
      cont: cont ?? this.cont,
     );
  }

  @override
  List<Object?> get props => [cont];
}
