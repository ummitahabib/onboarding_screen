import 'package:flutter/material.dart';
import 'package:onboarding_screen/size_config.dart';
import 'package:onboarding_screen/signin_contents.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    double blockH = SizeConfig.blockH!;
    double blockV = SizeConfig.blockV!;





    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemBuilder: (context, i) {
                  return Container(
                    // color: colors[i],
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Image.asset(
                            contents[i].image,
                            height: SizeConfig.blockV! * 15,
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Text(
                            contents[i].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w600,
                              fontSize: (width <= 550) ? 24 : 29,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            contents[i].desc,
                            style: TextStyle(
                              fontFamily: "Mulish",
                              fontWeight: FontWeight.w300,
                              fontSize: (width <= 550) ? 13 : 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 43,),
                          Expanded(child: Column(
                            children: [
                              const TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  fillColor: Color(0xffECF2F7),
                                  filled: true,
                                  labelText: 'Phone Number',
                                  hintText: '+234 123 456 00',
                                ),
                              ),
                              SizedBox(height: 11,),
                              const TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  fillColor: Color(0xffECF2F7),
                                  filled: true,
                                  labelText: 'Password',
                                  hintText: '**********',
                                ),
                              ),
                              RaisedButton(
                                onPressed: (){},
                                child: Text("submit"),
                              ),
                              Text('Forget Password'),
                            ],
                          )),
                          
                          Expanded(child: Row(
                            children: [
                              Text('Don’t have an account ?'),
                              Text('Sign up')
                            ],
                          ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
