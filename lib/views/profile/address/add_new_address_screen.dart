import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spinfast/utils/extensions/extensions.dart';
import 'package:spinfast/views/widgets/custom_appbar.dart';
import 'package:spinfast/views/widgets/custom_button.dart';

import '../../../utils/values/styles.dart';
import '../../widgets/custom_textfield.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'New Address',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.sbh,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('First Name*', style: kSize12DarkW500Text,),
                        8.sbh,
                        CustomTextField(
                            length: 12,
                            keyboardType: TextInputType.text,
                            inputFormatters: FilteringTextInputFormatter.singleLineFormatter
                        ),
                      ],
                    ),
                  ),
                  6.sbw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Last Name*', style: kSize12DarkW500Text,),
                        8.sbh,
                        CustomTextField(
                            length: 12,
                            keyboardType: TextInputType.text,
                            inputFormatters: FilteringTextInputFormatter.singleLineFormatter
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              12.sbh,
              Text('Country/Region*', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: FilteringTextInputFormatter.singleLineFormatter
              ),
              12.sbh,
              Text('Apt,suit,unit', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: FilteringTextInputFormatter.singleLineFormatter
              ),
              12.sbh,
              Text('Phone Number', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.number,
                  inputFormatters: FilteringTextInputFormatter.digitsOnly
              ),
              12.sbh,
              Text('Postal code*', style: kSize12DarkW500Text,),
              8.sbh,
              CustomTextField(
                  length: 30,
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: FilteringTextInputFormatter.singleLineFormatter
              ),
              12.sbh,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('City*', style: kSize12DarkW500Text,),
                        8.sbh,
                        CustomTextField(
                            length: 12,
                            keyboardType: TextInputType.text,
                            inputFormatters: FilteringTextInputFormatter.singleLineFormatter
                        ),
                      ],
                    ),
                  ),
                  6.sbw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Country*', style: kSize12DarkW500Text,),
                        8.sbh,
                        CustomTextField(
                            length: 12,
                            keyboardType: TextInputType.text,
                            inputFormatters: FilteringTextInputFormatter.singleLineFormatter
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              40.sbh,
              Center(
                child: CustomButton(
                  text: 'Save',
                  onPressed: (){},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
