import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/cubit/get_weather_cubit.dart';

class ErrorMessageWidgetBuild extends StatelessWidget {
  const ErrorMessageWidgetBuild({super.key});

  @override
  Widget build(BuildContext context) {
    var errorMessage = BlocProvider.of<GetWeatherCubit>(context);
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.wrong_location_outlined,
            color: Color.fromARGB(146, 119, 119, 119),
            size: 200,
          ),
          const SizedBox(height: 20),
          Text(
            errorMessage.errorMessage
                .replaceAll("Exception:", "")
                .replaceAll("Error:", "Error:\n"),
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color.fromARGB(146, 119, 119, 119),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
