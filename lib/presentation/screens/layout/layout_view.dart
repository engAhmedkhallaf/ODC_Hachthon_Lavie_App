import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/services/services_locator.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/layout/layout_bottom_navigation.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/layout/layout_screen_navigation.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/qr_code_cubit/qr_code_cubit.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<LayoutCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<QrCodeCubit>(),
        ),
      ],
      child: const Scaffold(
        body: CustomBody(),
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
