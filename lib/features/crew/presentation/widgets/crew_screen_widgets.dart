import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/di/dependency_injection.dart';
import 'package:spacex/core/resources/assets.dart';
import 'package:spacex/core/themes/styles.dart';
import 'package:spacex/core/widgets/custom_error_widget.dart';
import 'package:spacex/core/widgets/custom_loading_widget.dart';
import 'package:spacex/features/crew/data/model/crew_model.dart';
import 'package:spacex/features/crew/logic/cubit/crew_cubit.dart';
import 'package:spacex/features/crew/logic/cubit/crew_state.dart';
import 'package:spacex/features/crew/presentation/screens/crew_detalis_screen.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                Assets.backgroundImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          CrewScreenContent(),
        ],
      ),
    );
  }
}

class CrewScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Crew Members',
          style: AppStyles.font24BoldWhite(context),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<CrewCubit>()..getAllCrew(),
        child: CrewScreenBody(),
      ),
    );
  }
}

class CrewScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrewCubit, CrewState<List<CrewModel>>>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: state.when(
            initial: () => Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => Center(
              child: CustomLoadingWidget(),
            ),
            success: (crewList) => CrewGrid(allCrew: crewList),
            error: (error) => const CustomErrorWidget(),
          ),
        );
      },
    );
  }
}

class CrewGrid extends StatelessWidget {
  final List<CrewModel> allCrew;

  const CrewGrid({Key? key, required this.allCrew}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Change this value according to your needs
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: allCrew.length,
      itemBuilder: (BuildContext context, int index) {
        return CrewCard(crewMember: allCrew[index]);
      },
    );
  }
}

class CrewCard extends StatelessWidget {
  final CrewModel crewMember;

  const CrewCard({Key? key, required this.crewMember}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent, // Set the background color to transparent
      elevation: 3.0,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CrewDetailsScreen(crewMember: crewMember),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: crewMember.id!, // Unique tag for each crew member
              child: CircleAvatar(
                backgroundImage:
                    CachedNetworkImageProvider(crewMember.image ?? ''),
                radius: 40.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              crewMember.name ?? 'Unknown',
              style: AppStyles.font15MediumWhite(context),
            ),
            Text(
              crewMember.agency ?? 'Unknown',
              style: AppStyles.font15MediumGrey(context),
            ),
          ],
        ),
      ),
    );
  }
}
