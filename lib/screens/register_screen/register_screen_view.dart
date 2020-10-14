import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:sqlite/screens/register_screen/register_screen_view_model.dart';
import 'package:sqlite/utils/widget_assets.dart';

class RegisterScreenView extends RegisterViewModel {
  _body() {
    return Container(
      color: Colors.white,
      child: Form(
        key: formKey,
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Center(
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Container(
                padding: EdgeInsets.all(16.0),
                height: 600.0,
                child: ListView(
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        this.widget.userStr == null ? TextFormField(
                          controller: username,
                          autofocus: true,
                          decoration: InputDecoration(
                              labelText: "Username", prefixIcon: Icon(Icons.person)),
                        ) : Text(""),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        TextFormField(
                          controller: password,
                          autofocus: true,
                          obscureText: !isShow,
                          decoration: InputDecoration(
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                  icon: Icon(isShow
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () => setShow())),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        TextFormField(
                          controller: nama,
                          autofocus: true,
                          decoration: InputDecoration(
                            labelText: "Nama",
                            prefixIcon: Icon(Icons.local_offer),

                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        TextFormField(
                          controller: alamat,
                          autofocus: true,
                          decoration: InputDecoration(
                            labelText: "Alamat",
                            prefixIcon: Icon(Icons.home),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        TextFormField(
                          controller: no_telepon,
                          autofocus: true,
                          decoration: InputDecoration(
                            labelText: "Nomor Hp",
                            prefixIcon: Icon(Icons.phone),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 30.0)),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50.0,
                          child: ownButton(
                              ownText("REGISTER", color: Colors.white, fontSize: 17.0),
                                  () => register()),
                          //ToDO: change method di atas ke login saat api siap
                        ),
                        Padding(padding: EdgeInsets.only(top: 15.0)),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50.0,
                          child: InkWell(
                            onTap: (){
                              goToLogin();
                            },
                            child: AutoSizeText("Already hav an account ?. Login Here", maxFontSize: 15.0,),
                          ),
                          //ToDO: change method di atas ke login saat api siap
                        )
                      ],


                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: _body(),
    );
  }
}
