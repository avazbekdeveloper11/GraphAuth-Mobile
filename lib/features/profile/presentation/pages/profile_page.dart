import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:graph_auth_mobile/core/extension/api_status_extension.dart";
import "package:graph_auth_mobile/core/utils/utils.dart";
import "package:graph_auth_mobile/features/profile/presentation/pages/bloc/profile_bloc.dart";
import "package:graph_auth_mobile/router/app_routes.dart";
import "package:go_router/go_router.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) => BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.loggedOut && context.mounted) {
            context.goNamed(Routes.auth);
          }
        },
        listenWhen: (prev, curr) => prev.loggedOut != curr.loggedOut,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Profile"),
            actions: [
              IconButton(
                onPressed: () {
                  context.read<ProfileBloc>().add(const LogoutEvent());
                },
                icon: const Icon(Icons.exit_to_app_outlined),
              ),
            ],
          ),
          body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (BuildContext context, ProfileState state) {
            if (state.profileApiStatus.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.profileApiStatus.isError && state.message != null) {
              final isSessionError = state.message!.toLowerCase().contains(
                    RegExp(r'session|token|401|unauthorized'),
                  );
              return SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state.message!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error),
                        ),
                        if (isSessionError) ...[
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              context
                                  .read<ProfileBloc>()
                                  .add(const LogoutEvent());
                            },
                            child: const Text("Qayta kirish"),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              );
            }
            final profile = state.profileData;
            if (profile == null) {
              return const Center(child: Text("Profil ma'lumotlari yo'q"));
            }
            return Padding(
              padding: AppUtils.kPaddingHor12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppUtils.kGap24,
                  if (profile.imageUrl != null && profile.imageUrl!.isNotEmpty)
                    Center(
                      child: CircleAvatar(
                        radius: 48,
                        backgroundImage: NetworkImage(profile.imageUrl!),
                      ),
                    )
                  else
                    Center(
                      child: CircleAvatar(
                        radius: 48,
                        child: Text(
                          (profile.username?.split('').firstOrNull ?? "?")
                              .toUpperCase(),
                          style: const TextStyle(fontSize: 32),
                        ),
                      ),
                    ),
                  const SizedBox(height: 24),
                  _buildRow("Ism", profile.firstName),
                  _buildRow("Familiya", profile.lastName),
                  _buildRow("Telefon", "+${profile.phone}"),
                  _buildRow("Email", profile.email),
                  _buildRow("Username", profile.username),
                ],
              ),
            );
          },
        ),
        ),
      );

  Widget _buildRow(String label, String? value) {
    if (value == null || value.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
