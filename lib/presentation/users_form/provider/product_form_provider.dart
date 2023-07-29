import 'package:cruds_bloc_nohp_api/presentation/users_form/state/users_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/users_form_bloc.dart';

class ProductFormProvider extends StatelessWidget {
  final Function(
    UsersFormBloc bloc,
    UsersFormState state,
  )? beforeInitState;
  final Widget Function(BuildContext, UsersFormBloc, UsersFormState) builder;
  const ProductFormProvider({
    Key? key,
    required this.builder,
    this.beforeInitState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final bloc = UsersFormBloc();
        if (beforeInitState != null) {
          beforeInitState!(bloc, bloc.state);
        }
        bloc.initState();
        return bloc;
      },
      child: BlocBuilder<UsersFormBloc, UsersFormState>(
        builder: (context, state) {
          final bloc = context.read<UsersFormBloc>();
          return builder(context, bloc, state);
        },
      ),
    );
  }
}

abstract class UsersFormConsumerWidgetInterface {
  Widget buildView(
    BuildContext context,
    UsersFormBloc bloc,
    UsersFormState state,
  );

  beforeInitState(
    UsersFormBloc bloc,
    UsersFormState state,
  );
}

class UsersFormConsumerWidget extends StatelessWidget
    implements UsersFormConsumerWidgetInterface {
  UsersFormConsumerWidget({super.key});

  @override
  Widget buildView(
      BuildContext context, UsersFormBloc bloc, UsersFormState state) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return ProductFormProvider(
      beforeInitState: beforeInitState,
      builder: (context, bloc, state) {
        return buildView(context, bloc, state);
      },
    );
  }

  @override
  beforeInitState(bloc, state) {
    throw UnimplementedError();
  }
}
