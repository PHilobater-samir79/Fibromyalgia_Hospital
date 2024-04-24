import 'package:fibromyalgia_hospital/screens/ui/patient/patient_home/patient_home_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/patient/patient_search_doctor/widgets/book_doctor/data/appointmentmodel.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../ahella/Features/Payment/Presentation/views/payment_options_view.dart';
import 'doctor_appointment_screen.dart';


class DoctorAppointmentScreen2 extends StatelessWidget {
  final int index ;
  const DoctorAppointmentScreen2({super.key,required this.index,
  });
  static const String routeName = 'DoctorAppointmentScreen2' ;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0,left: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomArrowBack(),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            AppStrings.appointments,
                            style: AppTextStyle.styleMedium18,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TableCalendar(
                      focusedDay: DateTime.now(),
                      headerStyle: HeaderStyle(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.greenColor),
                        headerMargin: const EdgeInsets.only(bottom: 10),
                      ),
                      calendarStyle: CalendarStyle(
                          todayDecoration: BoxDecoration(
                              color: AppColors.greenColor,
                              borderRadius: BorderRadius.circular(40))),
                      firstDay: DateTime(2024),
                      lastDay: DateTime.now(),
                      onFormatChanged: (format) {},
                      onDaySelected: (selectedDay, focusedDay) {},
                    ),
                    const SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height:height*.45,
                        width: width,
                        decoration: const BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(20) ,
                            topRight: Radius.circular(20)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(AppStrings.availableTime,style: AppTextStyle.styleMedium18,),
                              const SizedBox(height: 20,),
                              SizedBox(
                                  height: height*.1,
                                  width: width,
                                  child: ListView.builder(
                                    itemCount: docAppointmentModel.appointment.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 5.0),
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundColor: AppColors.lightGreenColor,
                                          child: Text(
                                            docAppointmentModel.appointment[index].Time,
                                              textAlign: TextAlign.center
                                              ,style: AppTextStyle.styleMedium18.copyWith(fontWeight: FontWeight.w400),),
                                        ),
                                      );
                                    },
                                  )),

                              const SizedBox(height: 20,),
                              const Text(AppStrings.reminderMeBefore,style: AppTextStyle.styleMedium18,),
                              const SizedBox(height: 20,),
                              SizedBox(
                                  height: height*.1,
                                  width: width,
                                  child: ListView.builder(
                                    itemCount: docAppointmentModel.appointment.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 5.0),
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundColor: AppColors.greenColor,
                                          child: Text(
                                            docAppointmentModel.appointment[index].Minutes,
                                            textAlign: TextAlign.center
                                            ,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.whiteColor,fontWeight: FontWeight.w400),),
                                        ),
                                      );
                                    },
                                  )),
                              const SizedBox(height: 20,),
                               Center(child: InkWell(onTap: (){Navigator.pushReplacement(
                                   context,MaterialPageRoute(builder: (context){return PaymentOptionsView();}));},child: CustomButton(text: 'Choose Payment Method')))



                            ],
                          ),
                        ),

                      ),
                    )


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
