import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/TalePreviewBloc.dart';
import 'bloc/states/TalePreviewState.dart';
import 'components/GreetingCard.dart';
import 'components/PlaceholderCard.dart';
import 'components/ReadCounter.dart';

@RoutePage(name: 'TalePreviewRoute')
class TalePreviewScreen extends StatefulWidget {
  const TalePreviewScreen({super.key});

  @override
  State<TalePreviewScreen> createState() => _TalePreviewScreenState();
}

class _TalePreviewScreenState extends State<TalePreviewScreen> {

  final TalePreviewBloc talePreviewBloc = TalePreviewBloc();

  @override
  void initState() {
    talePreviewBloc.fetchData();
    super.initState();
  }

  @override
  void dispose() {
    talePreviewBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
            child: Column(
                children: [
                  GreetingCard(),
                  SizedBox(height: 20.h,),
                  ReadCounter(),
                  SizedBox(height: 20.h,),

                  Expanded(
                    child: StreamBuilder<TalePreviewState>(
                      stream: talePreviewBloc.stateStream,
                      initialData: InitialState(),
                      builder: (context, snapshot) {
                        if (snapshot.data is LoadingState) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.data is SuccessState) {
                          final data = (snapshot.data as SuccessState).data;
                          return ListView.builder(
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text("${data[index]['id']}"),
                              );
                            },
                          );
                        } else if (snapshot.data is ErrorState) {
                          final error = (snapshot.data as ErrorState).error;
                          return Center(
                            child: Text('Error: $error'),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ),
                ]
            )
        )
    );
  }
}
