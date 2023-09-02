import 'package:dio/dio.dart';
import 'package:divar/repositories/items_respositories/bags_respository/backpack_repository/cubit/backpack_cubit.dart';
import 'package:divar/repositories/otp_code_repository/cubit/otp_code_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String id = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // BlocBuilder<ConnectivityPlusCubit, ConnectivityPlusState>(
                //   builder: (context, state) {
                //     if (state is ConnectivityPlusLoading) {
                //       return const CircularProgressIndicator();
                //     } else if (state is ConnectivityPlusConnected) {
                //       return const Text('Internet Connected');
                //     } else {
                //       return const Text('Internet Disconnected');
                //     }
                //   },
                // ),
                BlocBuilder<BackpackCubit, BackpackState>(
                  builder: (context, state) {
                    if (state is BackpackLoading && state.isLoading ||
                        state is BackpackFetchingData) {
                      return const CircularProgressIndicator();
                    } else if (state is BackpackLoaded) {
                      return Text(state.backpackModelsList);
                    } else if (state is BackpackError) {
                      return Text(
                        state.message,
                        textAlign: TextAlign.center,
                      );
                    } else {
                      return const Text('unknown error');
                    }
                  },
                ),
                // BlocProvider(
                //   create: (context) {
                //     return CustomerCubit.account(
                //         isSignIn: true, customerPhoneNumber: '+93786811942');
                //   },
                //   child: BlocBuilder<CustomerCubit, CustomerState>(
                //     builder: (context, state) {
                //       if ((state is CustomerLoading && state.isLoading) ||
                //           state is CustomerFetchingData) {
                //         return const CircularProgressIndicator();
                //       } else if (state is CustomerLoaded) {
                //         return Text('${state.customerModel.customerFullName}');
                //       } else if (state is CustomerNotFound) {
                //         return Text(state.message);
                //       } else {
                //         return const Text('unknown error');
                //       }
                //     },
                //   ),
                // ),
                TextButton(
                  onPressed: () async {
                    // context
                    //     .read<OtpCodeCubit>()
                    //     .emitUpdateOTP(otpCodeId: '-Nd55bByCi1nAZuzYToV');

                    // var response = await Dio()
                    //     .get('https://jsonplaceholder.typicode.com/posts');
                    // print(response!.data);
                    print(1);
                    var res = await Dio()
                        .get('https://artadivar.com/api/show_all_category');
                    if (res.statusCode == 200) {
                      // If the server did return a 200 OK response,
                      // then parse the JSON.
                      print(true);
                    } else {
                      // If the server did not return a 200 OK response,
                      // then throw an exception.
                      print(false);
                    }
                  },
                  child: const Text('data'),
                ),
                const SizedBox(
                  height: 50,
                ),
                // BlocBuilder<CustomerCubit, CustomerState>(
                //   builder: (context, state) {
                //     if ((state is CustomerLoading && state.isLoading) ||
                //         state is CustomerFetchingData) {
                //       return const CircularProgressIndicator();
                //     } else {
                //       return Text(
                //           state is CustomerExists && state.isCustomerExists
                //               ? 'customer exists'
                //               : 'customer not exists');
                //     }
                //   },
                // ),
                // BlocBuilder<CustomerCubit, CustomerState>(
                //   builder: (context, state) {
                //     if (state is CustomerLoading && state.isLoading) {
                //       return const CircularProgressIndicator();
                //     } else if (state is CustomerAdd) {
                //       return const Text('customer added');
                //     }
                //     return const Text('unknown error');
                //   },
                // ),
                BlocBuilder<OtpCodeCubit, OtpCodeState>(
                  builder: (context, state) {
                    if (state is OtpCodeLoading) {
                      return const CircularProgressIndicator();
                    } else if (state is OtpCodeCodeExists &&
                        state.isOTPCodeExists) {
                      return const Text('otp code exists');
                    } else if (state is OtpCodeCodeExists &&
                        !state.isOTPCodeExists) {
                      return const Text('otp code not exists');
                    }
                    return const Text('unknown error');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
