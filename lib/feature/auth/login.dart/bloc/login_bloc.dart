import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<logingin>((event, emit) async{
    emit(Loadinglogin());

    // bool result = await LoginService().logIn(event.user);
    // if(result){
    // emit (Successlogin());
    // }else{
    //   emit(Failedlogin());
 
    // }
    }
    ); 
    
    }
}
