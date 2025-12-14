import 'package:d03xlms/features/users/presentation/providers/user_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userControllerProvider);
    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        child: user.when(
          data: (data) {
            return data!.isNotEmpty
                ? ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        dense: true,
                        title: Text(data[index].username),
                        subtitle: Text(data[index].address.suite),
                      );
                    },
                  )
                : Center(
                    child: InkWell(
                      onTap: () {
                        ref.read(userControllerProvider.notifier).refresh();
                      },
                      child: Text("Load Data"),
                    ),
                  );
          },
          error: (error, stackTrace) {
            return Text('error: $error');
          },
          loading: () {
            return Center(child: CircularProgressIndicator());
          },
        ),
        onRefresh: () async {
          ref.read(userControllerProvider.notifier).refresh();
        },
      ),
    );
  }
}
