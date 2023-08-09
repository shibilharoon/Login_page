import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        actions: [
          IconButton(
              onPressed: () {
                singout(context);
              },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("Must Watch Movie $index"),
                  subtitle: Text("Film Name $index"),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-vector/cinema-film-production-realistic-transparent-composition-with-isolated-image-clapper-with-empty-fields-vector-illustration_1284-66163.jpg?w=740&t=st=1691564842~exp=1691565442~hmac=55eba2f9f94ca12914bd8af20c3c66a314fb168283947d685f8d46ff86b92dd2"),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider();
              },
              itemCount: 10)),
    );
  }

  singout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}
