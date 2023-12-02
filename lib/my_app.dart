import 'package:authentication_login/authentication_login.dart';
import 'package:devetechnologies_flutter_login/app/bloc/app_bloc.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/routers/routers.dart';
import 'helpers/theme.dart';

class MyApp extends StatelessWidget {
  final AuthenticationRepository _authenticatioRepository;

  const MyApp({super.key, required authenticatioRepository})
      : _authenticatioRepository = authenticatioRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticatioRepository,
      child: BlocProvider(
        create: (_) =>
            AppBloc(authenticationRepository: _authenticatioRepository),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Form Validations',
          theme: themeData(),
          // initialRoute: Home.routeName,
          //routes: routes,
          home: const AppView(),
        ),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages);
  }
}
