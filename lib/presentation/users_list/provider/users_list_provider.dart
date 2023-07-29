import 'package:cruds_bloc_nohp_api/presentation/users_list/state/users_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/users_list_bloc.dart';

class UsersListProvider extends StatelessWidget {
  final Widget Function(BuildContext, UsersListBloc, UsersListState) builder;
  final Function(
    UsersListBloc bloc,
    UsersListState state,
  )? beforeInitState;
  const UsersListProvider({
    Key? key,
    required this.builder,
    this.beforeInitState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final bloc = UsersListBloc();
        if (beforeInitState != null) {
          beforeInitState!(bloc, bloc.state);
        }
        bloc.initState();
        return bloc;
      },
      child: BlocBuilder<UsersListBloc, UsersListState>(
        builder: (context, state) {
          final bloc = context.read<UsersListBloc>();
          return builder(context, bloc, state);
        },
      ),
    );
  }
}

abstract class UsersListConsumerWidgetInterface {
  Widget buildView(
    BuildContext context,
    UsersListBloc bloc,
    UsersListState state,
  );

  beforeInitState(
    UsersListBloc bloc,
    UsersListState state,
  );
}

class UsersListConsumerWidget extends StatelessWidget
    implements UsersListConsumerWidgetInterface {
  const UsersListConsumerWidget({super.key});

  @override
  Widget buildView(
      BuildContext context, UsersListBloc bloc, UsersListState state) {
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return UsersListProvider(
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
