import 'package:flutter/material.dart';

import '../widgets/app_drawer_widget.dart';
import '../widgets/custom_appbar_widget.dart';
import '/constants.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      drawer: AppDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPadding,
            child: Column(
              children: <Widget>[
                Text(
                  'Privacy Policy',
                  textAlign: TextAlign.center,
                  style: headingStyle,
                ),
                gapH32,
                Text(
                  'Oxygen Tech is committed to providing quality services to you and this policy outlines our ongoing obligations to you in respect of how we manage your Personal Information.\n'
                  'We have adopted the Australian Privacy Principles (APPs) contained in the Privacy Act 1988 (Cth) (the Privacy Act). The NPPs govern the way in which we collect, use, disclose, store, secure and dispose of your Personal Information.\n'
                  'A copy of the Australian Privacy Principles may be obtained from the website of The Office of the Australian Information Commissioner at https://www.oaic.gov.au/.\n\n'
                  'What is Personal Information and why do we collect it?\n\n'
                  'Personal Information is information or an opinion that identifies an individual. Examples of Personal Information we collect includes names, addresses, email addresses, and phone numbers.\n'
                  'This Personal Information is obtained in many ways including correspondence by telephone, by email, via our website oxygentech.com.au, from your website, from media and publications, from other publicly available sources, from cookies, and from third parties. We don\'t guarantee website links or policy of authorised third parties.\n'
                  'We collect your Personal Information for the primary purpose of providing our services to you, providing information to our clients and marketing. We may also use your Personal Information for secondary purposes closely related to the primary purpose, in circumstances where you would reasonably expect such use or disclosure. You may unsubscribe from our mailing/marketing lists at any time by contacting us in writing.\n'
                  'When we collect Personal Information we will, where appropriate and where possible, explain to you why we are collecting the information and how we plan to use it.\n\n'
                  'Sensitive Information\n\n'
                  'Sensitive information is defined in the Privacy Act to include information or opinion about such things as an individual\'s racial or ethnic origin, political opinions, membership of a political association, religious or philosophical beliefs, membership of a trade union or other professional body, criminal record, or health information.\n'
                  'Sensitive information will be used by us only:\n'
                  '-	For the primary purpose for which it was obtained\n'
                  '-	For a secondary purpose that is directly related to the primary purpose\n'
                  '-	With your consent; or where required or authorised by law.\n\n'
                  'Third Parties\n\n'
                  'Where reasonable and practicable to do so, we will collect your Personal Information only from you. However, in some circumstances we may be provided with information by third parties. In such a case we will take reasonable steps to ensure that you are made aware of the information provided to us by the third party.\n\n'
                  'Disclosure of Personal Information\n\n'
                  'Your Personal Information may be disclosed in a number of circumstances including the following:\n'
                  '-	Third parties where you consent to the use or disclosure; and\n'
                  '-	Where required or authorised by law.\n\n'
                  'Security of Personal Information\n\n'
                  'Your Personal Information is stored in a manner that reasonably protects it from misuse and loss and from unauthorized access, modification, or disclosure.\n'
                  'When your Personal Information is no longer needed for the purpose for which it was obtained, we will take reasonable steps to destroy or permanently de-identify your Personal Information. However, most of the Personal Information is or will be stored in client files which will be kept by us for a minimum of 7 years.\n\n'
                  'Access to your Personal Information\n\n'
                  'You may access the Personal Information we hold about you and to update and/or correct it, subject to certain exceptions. If you wish to access your Personal Information, please contact us in writing.\n'
                  'Oxygen Tech will not charge any fee for your access request, but may charge an administrative fee for providing a copy of your Personal Information.\n'
                  'In order to protect your Personal Information we may require identification from you before releasing the requested information.\n\n'
                  'Maintaining the Quality of your Personal Information\n\n'
                  'It is important to us that your Personal Information is up to date. We will take reasonable steps to make sure that your Personal Information is accurate, complete and up to date. If you find that the information we have is not up to date or is inaccurate, please advise us as soon as practicable so we can update our records and ensure we can continue to provide quality services to you.\n\n'
                  'Policy Updates\n\n'
                  'This Policy may change from time to time and is available on our website.\n\n'
                  'Privacy Policy Complaints and Enquiries\n\n'
                  'If you have any queries or complaints about our Privacy Policy please contact us at:\n\n'
                  'oxygentech@protonmail.com',
                  style: bodyStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
