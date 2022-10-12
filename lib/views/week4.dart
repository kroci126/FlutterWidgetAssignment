part of 'pages.dart';

class Week4Page extends StatefulWidget {
  const Week4Page({super.key});
  static const String routeName = '/week4';

  @override
  State<Week4Page> createState() => _Week4PageState();
}

class _Week4PageState extends State<Week4Page> {
  @override
  void initState() {
    super.initState();
  }

  final _bookKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();
  bool isHide = true;

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlEmail.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Form'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 32, 16, 32),
        child: Form(
          key: _bookKey,
          child: Column(children: [
            SizedBox(
              height: 16,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.black12)),
                  labelText: "Full Name",
                  prefixIcon: Icon(Icons.person)),
              controller: ctrlName,
            ),
            SizedBox(
              height: 48,
            ),
            TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Colors.black12)),
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.email)),
                controller: ctrlEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return !EmailValidator.validate(value.toString())
                      ? 'Email is not valid!'
                      : null;
                }),
            SizedBox(
              height: 48,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.black12)),
                  labelText: "Phone Number",
                  prefixIcon: Icon(Icons.phone_android)),
              controller: ctrlPhone,
            ),
            SizedBox(
              height: 48,
            ),
            TextFormField(
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.black12)),
                  labelText: "City",
                  prefixIcon: Icon(Icons.location_city)),
              controller: ctrlCity,
            ),
            SizedBox(
              height: 32,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  if (_bookKey.currentState!.validate()) {
                    Fluttertoast.showToast(
                        msg: ctrlName.text.toString() + " Book Success!",
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 14,
                        backgroundColor: Colors.greenAccent,
                        textColor: Colors.white);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Week3Page()));
                  } else {
                    Fluttertoast.showToast(
                        msg: "Please fill all fields correctly!",
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 14,
                        backgroundColor: Colors.redAccent,
                        textColor: Colors.white);
                  }
                },
                icon: Icon(Icons.save),
                label: Text("Book Now"))
          ]),
        ),
      ),
    );
  }
}
