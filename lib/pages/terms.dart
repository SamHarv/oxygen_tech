import 'package:flutter/material.dart';

import '/widgets/app_drawer.dart';
import '/widgets/custom_appbar.dart';
import '/constants.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

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
                  'Terms & Conditions',
                  textAlign: TextAlign.center,
                  style: headingStyle,
                ),
                gapH32,
                Text(
                  '© Copyright 2023 | Oxygen Tech\n\n'
                  'ABN 31968104103\n\n'
                  '11 March 2023\n\n'
                  '1. Introduction\n\n'
                  '1.1. These Terms and Conditions (“T&Cs”) govern the entire relationship between you; the Client, and the Oxygen Tech.\n\n'
                  '1.2. Before the Distance contract is concluded, the Client will be provided with the text of these T&Cs electronically or in other durable format. If this is not reasonably possible, the Company will indicate, before the Distance contract is concluded, in what way these T&Cs are available for Client`s review at the Company\'s premises and that they will be sent free of charge to the Client, as soon as possible, at the Client\'s request.\n\n'
                  '1.3. The Client is obliged to carefully read these T&Cs before accepting them and using the services of Oxygen Tech. The Client agrees that their use of the services acknowledges that the Client has read this agreement, understood it, and agreed to be bound by it.\n\n'
                  '2. Definitions\n\n'
                  '2.1. Unless these T&Cs provide otherwise, wherever used in these T&Cs, including the introduction, the following terms when capitalized shall have the following meanings:\n'
                  '(a) Agreement shall mean these T&Cs for providing Services and/or Goods concluded online by Oxygen Tech and the Client.\n'
                  '(b) Client shall mean the user of Oxygen Tech\'s Services and/or the buyer of Goods as explained in these T&Cs.\n'
                  '(c) Company shall mean Oxygen Tech, ABN 31968104103, email oxygentech@protonmail.com, which is responsible for providing the subscription services and handling Client\'s inquiries.\n'
                  '(d) Offer shall mean the offer to enter into this Agreement of Services and/or Goods provided by Company to the Client through the Website or Mobile app.\n'
                  '(e) Privacy Policy shall mean the privacy policy of the Company published on the Website or Mobile app.\n'
                  '(f) Services shall mean the Digital content provided by the Company to the Client as well as the accessibility to the Website or Mobile app, including information, text, images offered or provided there.\n'
                  '(g) Digital content shall mean any digital content sold from time to time online by the Company.\n'
                  '(h) Goods shall mean products in physical form sold online by the Company.\n'
                  '(i) Distance contract shall mean a contract concluded between the Company and the Client within the framework of a system organized for the distance sale of Digital content and/or Goods.\n'
                  '(j) Website shall mean the website of the Company available at oxygentech.com.au\n'
                  '(k) Mobile app shall mean the mobile application of the Company that may be downloaded by the Client from App Store and/or Google Play.\n\n'
                  '3. Submission of the Offer\n\n'
                  '3.1. The Company will provide the Client with a possibility of receiving an Offer.\n\n'
                  '3.2. The Client will be asked to provide certain information before receiving the Offer by choosing provided options or typing requested details. The Client is obliged to provide current, correct and comprehensive information that is requested to be provided.\n\n'
                  '3.3. Upon submission of the information established in Section 3.2 of these T&Cs, the Client will be provided with the Offer. The Offer will include information on the following:\n'
                  '3.3.1. payment amount for the relevant Services and/or Goods;\n'
                  '3.3.2. payment options: via credit card or other allowable payment form;\n'
                  '3.3.3. other information the Company finds important to include in the Offer.\n\n'
                  '3.4. Accepting the Offer\n'
                  '3.4.1. The Client accepts the Offer once he/she ticks the box “I agree with the Terms & Conditions”. Once the Client agrees with the T&Cs, the Client will be required to press the button “Submit”.\n\n'
                  '4. Distance Contract\n\n'
                  '4.1. The Distance contract will be concluded at the moment when the Client accepts the Offer and as indicated in paragraph 3.4.1.\n\n'
                  '4.2. As the Client will accept the Offer electronically, the Company will confirm receipt of acceptance of the offer electronically. In case the Client purchases Digital content, such will be provided to the Client`s email address provided by the Client or on the Mobile app.\n\n'
                  '4.3. IN CASE THE AGREEMENT BETWEEN THE COMPANY AND THE CLIENT CONSISTS OF DIGITAL CONTENT THE CLIENT AGREES TO LOSE THEIR RIGHT OF WITHDRAWAL OF THE AGREEMENT.\n\n'
                  '4.4. The Company makes reasonable efforts to ensure that Services operate as intended, however such Services are dependent upon internet and other services and providers outside of the control of the Company. By using Company\'s Services, the Client acknowledges that the Company cannot guarantee that Services will be uninterrupted, error free or that the information it contains will be entirely free from viruses, hackers, intrusions, unscheduled downtime or other failures. The Client expressly assumes the risk of using or downloading such Services.\n\n'
                  '4.5. From time to time and without prior notice to the Client, Company may change, expand and improve the Services. We may also, at any time, cease to continue operating part or all of the Services or selectively disable certain aspects of the Services. Any modification or elimination of the Services will be done in our sole and absolute discretion and without an ongoing obligation or liability to the Client, and the Client use of the Services does not entitle the Client to the continued provision or availability of the Services.\n\n'
                  '4.6. The Client furthermore agrees that:\n'
                  '4.6.1 They shall not access Services (including for purchasing Goods) if they are under the age of 18;\n'
                  '4.6.2 The Client will deny access of Services to children under the age of 18. The Client accepts full responsibility for any unauthorized use of the Services by minors.\n\n'
                  '5. Payments\n\n'
                  '5.1. During the period of validity indicated in the Offer, the price for the Services and/or Goods being offered will not increase.\n\n'
                  '5.2. The Client agrees to:\n'
                  '5.2.1. pay all additional costs, fees, charges, applicable taxes and other charges that can be incurred by the Client;\n'
                  '5.2.2. purchase Services and/or Goods by using valid credit card or other allowed form of payment;\n'
                  '5.2.3. provide the Company current and complete information as detailed in the purchase order form. If Company discovers or believes that any information provided by Client is inaccurate or incomplete, Company reserves the right to refuse to confirm Client\'s payment at their sole discretion and Client forfeits any right to refund paid amount.\n\n'
                  '5.3. After the Client is transferred to the third party payment services, the risk of loss or damages will pass on the Client and/or third party service. The Client\'s online credit or debit card payments to the Company will be handled and processed by the third party payment service provider and none of the sensitive data in relation to your payment will be stored on or used by the Company. The Company shall not be liable for any payment issues or other disputes that arise due to the third party payment services. The Company may change the third party payment service provider from time to time.\n\n'
                  '5.4. All prices and costs are in Australian dollars (AUD) unless otherwise indicated.\n\n'
                  '5.5. All Goods remain Company\'s property until full payment is made. The price applicable is that set at the date on which you place your order. Shipping costs and payment fees are recognised before confirming the purchase. If you are under 18 years old you must have parents\' permission to buy from the Company.\n\n'
                  '5.6. All transfers conducted through the Company are handled and transacted through third party dedicated gateways to guarantee your protection. Card information is not stored and all card information is handled over SSL encryption. Please read the terms & conditions for the payment gateway chosen for the transaction as they are responsible for the transactions made.\n\n'
                  '5.8. In order to ensure that Client does not experience an interruption or loss of Services, the Services are offered on automatic renewal.\n'
                  '5.8.1. Except for reasons described below in this section, AUTOMATIC RENEWAL AUTOMATICALLY RENEWS THE APPLICABLE SERVICE UPON EXPIRATION OF THE CURRENT TERM FOR A RENEWAL PERIOD EQUAL IN TIME TO THE MOST RECENT SERVICE PERIOD. For example, if Client\'s last service period is for one year, the renewal period will typically be for one year.\n'
                  '5.8.2. Unless Client cancels the subscription, Company will automatically renew the applicable service when it comes up for renewal and will take payment from the payment method associated with the Service in Client\'s account.\n'
                  '5.8.3. The Company may change the subscription plans and the price of the Services from time to time. Renewals might be charged at Company\'s then current rates, which Client acknowledges and agrees may be higher or lower than the rates for the original service period.\n'
                  '5.8.4. IF CLIENT DOES NOT WISH FOR SERVICE TO AUTOMATICALLY RENEW, he may elect to cancel the subscription at least 48 hours before the end of current period, in which case, the Services will be terminated upon expiration of the then current term, unless he manually renews the Services prior to that date.\n'
                  '5.8.5. If Client has purchased the subscription on Company\'s website, Client will not be able to control it through the Apple App Store or Google Play. Instead, Client may easily cancel the subscription by logging in to the Users Account on Company\'s website or by contacting the support team at oxygentech@protonmail.com.\n'
                  '5.8.6. If Client has purchased the subscription through the Apple App Store or Google Play, Client may cancel the subscription only through their Apple or Google Account. Client understands that deleting the app does not cancel the subscriptions.\n\n'
                  '5.9. From time to time the Company may offer Special Deals which may contain additional terms and conditions applicable together with this Agreement. The Company may offer the trials of paid subscriptions for a limited time at a special price or without payment (“Trial”). The Company will automatically begin charging the Client for the subscription on the first day following the end of the Trial on recurring basis of the interval the Company discloses in the Special Deal, chosen by the Client. If Client doesn\'t want to be charged, they must cancel the subscription before the end of the Trial.\n\n'
                  '6. Refund and Return Policy\n\n'
                  '6.1. Under the applicable legal acts, the Client has a right to change their mind and return delivered (received) goods within 14 days from the day of delivery. However, there is also an exception established by those legal acts, according to which, the right to return goods is not applicable for contracts regarding the supply of Digital content in case the provision of such Digital content has already commenced. Therefore, in case the Digital content is already provided to the Client as indicated in Section 4.2, the Client loses their right of withdrawal of the Agreement.\n\n'
                  '6.2. Refund for the Services. All prices and fees for Digital content and Services are not refundable unless otherwise expressly noted in this section below:\n'
                  '6.2.1. After the Digital content has already been provided to the Client as indicated in Section 4.2, the Client is entitled to get a refund for it from the Company only if the Client proves the product to be not as described or faulty. In such cases, Client must contact our customer support at oxygentech@protonmail.com within 14 days ofn purchase and provide detailed information proving Company\'s product fault (with visual proof attached).\n'
                  '6.2.2. Once a refund is issued, Client no longer has access to the Company\'s Services. All refunds are applied to the original method of payment. By purchasing the Services, Client agrees to this refund policy and relinquishes any rights to subject it to any questions, judgment or legal actions.\n\n'
                  '6.3. If Clients have purchased the Services or the Goods through the Apple App Store or Google Play for any questions and/or requests regarding the refunds and the payment, Users should contact the Apple App Store or Google Play Store users support.\n\n'
                  '6.4. Refund for delivered Goods.\n'
                  '6.4.1. In the event the Section 6.5 does not apply, the Client is entitled to get a refund for the Goods from the Company only if the Client proves the Goods to be not as described or faulty. In such cases, Client must contact our customer support at oxygentech@protonmail.com within 14 days of purchase and provide detailed information proving Company\'s Goods fault (with visual proof attached).\n'
                  '6.4.2. All refunds are applied to the original method of payment. By purchasing the Services, Client agrees to this refund policy and relinquishes any rights to subject it to any questions, judgment or legal actions.\n\n'
                  '6.5. Return of delivered Goods. Due to reasons related to health care and hygiene, the Client has a right to change their mind and return a delivered (received) Goods within 30 (thirty) days from the day of delivery only if the following procedure is adhered:\n'
                  '6.5.1. The Client has notified the Company about their decision to return the Goods within 30 days from the delivery of relevant Goods at oxygentech@protonmail.com and before returning the Goods.\n'
                  '6.5.2. Without undue delay and no later than within 14 days from the notice of their decision the Client has returned the Goods to the Company. The Client bears the costs of return.\n'
                  '6.5.3 The Goods are in the original packaging and unopened, in a condition fit for resale.\n'
                  '6.5.4. After receiving and inspecting the returned Goods, the Company will refund the price that the Client paid for the Goods (including the delivery costs) no later than within 14 days from the day on which the Company receives the Goods back.\n'
                  '6.5.5. In all cases the Company has a right to suspend the Client\'s refund until the Company receives back and inspects the Goods.\n\n'
                  '6.6. The Client agrees and confirms that deleting an account on the Mobile app does not imply any right to refunds. Since such account deletion is irrevocable, the Client undertakes to contact the Company in case of any inquiries before deleting an account on the Mobile app.\n\n'
                  '7. Intellectual Property Rights\n\n'
                  '7.1. All intellectual property rights, including but not limited to copyright, design rights, trademark rights, patent rights and any other proprietary rights in or related to the Services and Services-related content are owned by the Company.\n\n'
                  '7.2. The Client is forbidden to reproduce or publish Services including but not limited to Digital content supplied and/or provided by the Company in whole or in part without Company\'s prior written consent.\n\n'
                  '7.3. The Client hereby grants to the Company a perpetual, irrevocable, worldwide, fully paid-up and royalty-free, non-exclusive license, including the right to sublicense (through multiple tiers) and assign to third parties, to reproduce, distribute, perform and display (publicly or otherwise), create derivative works of, adapt, modify and otherwise use, analyze and exploit in any way now known or in the future discovered, their User Content (except for User Trademarks) as well as all modified and derivative works thereof. To the extent permitted by applicable laws, the Client hereby waives any moral rights they may have in any User Content. “User Content” means any User Trademarks, communications, images, writings, creative works, sounds, and all the material, data, and information, that the Client uploads, transmits or submits through the Services, or that other users upload or transmit. By uploading, transmitting or submitting any User Content, the Client affirms, represents and warrants that such User Content and its uploading, transmission or submission is (a) accurate and not confidential; (b) not in violation of any applicable laws, contractual restrictions or other third-party rights, and that the Client has permission from any third party whose personal information or intellectual property is comprised or embodied in the User Content; and (c) free of viruses, adware, spyware, worms or other malicious code.\n\n'
                  '7.4. No part of these T&Cs can be interpreted as a transfer of intellectual property rights in relation to the Services or Services-related content, except as expressly set forth in Section 8.1 below.\n\n'
                  '8. Use of Digital Content\n\n'
                  '8.1. All intellectual property rights specified in Article 7.1 and relating to Digital content are owned by the Company. Digital content is licensed pursuant to this Section 8, and is not sold. The Client will only be granted a non-exclusive, non-transferable and non-sublicensable license, subject to the terms and conditions of this Agreement, to use (solely for the Client\'s individual use) any Digital content provided by the Company to the Client.\n\n'
                  '8.2. The term of this license shall be granted for a term of 5 years from the date of receiving Digital content, unless earlier suspended or terminated in accordance with these T&Cs.\n\n'
                  '8.3. Unless expressly otherwise provided, Digital content must only be intended for personal and non-commercial use.\n\n'
                  '8.4. The Client is not authorised to edit, reproduce, transmit or lend the Digital content or make it available to any third parties or use it to perform any other acts which extend beyond the scope of the license provided by the Company.\n\n'
                  '8.5. The Company is authorised for the purpose of enforcing intellectual property rights, to impose restrictions on the scope of the license or the number of devices or types of devices on which Digital content can be used.\n\n'
                  '8.6. If the Client acts in contravention of this article, the Company will be authorised to suspend access to the relevant Digital Content, notwithstanding Company\'s right to recover from the Client the loss suffered as a result of or in connection with the infringement including any expenses incurred.\n\n'
                  '9. Selling Digital Content\n\n'
                  '9.1. The Client is prohibited from selling, offering for sale, sharing, renting out or lending Digital content or copies of Digital content.\n\n'
                  '10. Privacy Policy\n\n'
                  '10.1. The processing of Client\'s personal data is governed by the Privacy Policy. It is recommended for the Client to print and keep a copy of the Privacy Policy together with these T&Cs.\n\n'
                  '11. Liability\n\n'
                  '11.1. A party shall be released from responsibility for non-fulfilment of the T&Cs if it proves that these T&Cs were not fulfilled due to force majeure. In particular, the Company shall not be liable for any losses caused by force majeure, riot, war or natural events or due to other occurrences for which the Company is not responsible (e.g. strike, lock-out, traffic hold-ups, administrative acts of domestic or foreign high authorities). The Client must provide written notification of the occurrence of force majeure, which prevents the fulfillment of these T&Cs, within 30 calendar days from the date of the occurrence of these circumstances. The Company shall inform the Client about the occurrence of force majeure by e-mail or on the Website or Mobile app if possible.\n\n'
                  '11.2. The liability of the Company is limited to direct losses, unless otherwise provided under the applicable laws.\n\n'
                  '11.3. Due to the nature of Services and/or Goods that the Company provides and as the Company cannot control whether the Client sticks to the provided use instructions, the Company provides no warranty as to any results or outcomes coming from using Services and/or Goods.\n\n'
                  '11.4. Liable company: Oxygen Tech is only an administrator of the Website or Mobile App and provider of the Services, is the seller of the Goods, and is the company responsible for the managing subscription services and payments for Services and Goods, refunds and chargebacks.\n\n'
                  '11.5. All claims, requests and other communication related to the Goods must be submitted directly to Oxygen Tech.\n\n'
                  '11.6. When using Services the Client may receive links to other websites or mobile apps that are not owned and/or controlled by the Company. The Client acknowledges and agrees that the Company is not responsible for the availability of such websites or mobile apps. Furthermore, the Company is not responsible or liable for any content, advertising, products or other materials that may be accessed through such links and therefore the Client agrees that the Company shall not be responsible or liable, directly or indirectly for any damage or loss caused or alleged to be caused by or in connection with use or reliance on any such content, goods, services available on or through any such websites or mobile apps.\n\n'
                  '12. Medical disclaimer\n\n'
                  '12.1. BEFORE ACTING ON ANY ADVICE GIVEN BY THE COMPANY, THE CLIENT HEALTH SHOULD BE EVALUATED BY THEIR HEALTHCARE SERVICE PROVIDER OR THEY SHOULD CONSULT WITH A HEALTHCARE SERVICE PROVIDER.\n\n'
                  '12.2. The Company clearly states that it is not a medical organisation and cannot give the Client any medical advice or assistance. Nothing within Services by the Company is associated with, should be taken or understood as medical advice or assistance nor should it be interpreted in substitution for any medical advice or assistance, or used, referred to instead of seeking appropriate medical advice or assistance from health care providers. The Client is solely responsible for evaluating and assessing their own health. The Company encourages the Client to seek appropriate medical advice or assistance before using Company\'s Services.\n\n'
                  '13. Eligibility\n\n'
                  '13.1. The Services are available only to individuals that can form legally binding contracts under Australian law therefore the Client confirms that they are at least 18 years old. If the Client is accessing Services on behalf of a person who is not 18 years old, the Client confirms that they are that person\'s legal guardian and are responsible for that person\'s compliance with these T&Cs and will indemnify Company for any losses or damages that Company will suffer as a consequence of failing to comply with these T&Cs.\n\n'
                  '14. Validity and Termination\n\n'
                  '14.1. Agreement comes into effect after the Client accepts it, and electronically expresses their consent to comply with them, and it shall remain in effect for an indefinite period until termination thereof.\n\n'
                  '14.2. The Company may terminate the relationship with the Client at any time in the following cases: (1) the Client does not agree with the Agreement; (2) the Client commits any breach of the Agreement; (3) the Client does not provide information requested by the Company and/or provides incorrect and/or incomprehensive information. Notwithstanding the foregoing, statutory termination rights shall not be affected.\n\n'
                  '15. Changes to T&Cs\n\n'
                  '15.1. These T&Cs, Privacy Policy and any additional terms and conditions that may apply are subject to change. The Company reserves the right to modify and update the T&Cs from time to time and such changes shall be effective immediately upon posting to the Company\'s Website or Mobile App.\n\n'
                  '15.2. The Company may give notice to the Client of any upcoming changes by sending an email to the primary email address provided by the Client, or notifying through the Website or Mobile app.\n\n'
                  '15.3. The Client understands and agrees that any continued use and access to the Services after any posted updates of the T&Cs, means that Client voluntarily agrees to be bound by these T&Cs. If Client does not agree to be bound by the updated T&Cs, they should not use (or continue to use) the Services.\n\n'
                  '16. Communication\n\n'
                  '16.1. In general, the Company prefers communication by email. By accepting these T&Cs, the Client accepts communication by email. For this purpose, the Client is requested to have a valid email address and provide it when filling required information as stipulated in Section 3.2. The Company may publish information related to this Agreement or Services on the Website or Mobile app as well. The Client should check its email messages as well as information provided on the Website or the Mobile app regularly and frequently. Emails may contain links to further information and documents.\n\n'
                  '16.2. Where applicable laws require provision of information on a durable medium, the Company will either send the Client an email with an attachment or send the Client a notification referring to the Services with download function to retain such information and documents permanently for future reference. The Client is requested to keep copies of all communications from the Company.\n\n'
                  '16.3. The Client may request a copy of these T&Cs or any other contractual document by contacting oxygentech@protonmail.com.\n\n'
                  '16.4. The communication with the Client will be made in English, unless the Company and the Client agree to communicate in another language.\n\n'
                  '16.5. The Client may contact us at any time by sending a message to oxygentech@protonmail.com.\n\n'
                  '17. Complaints\n\n'
                  '17.1. Any complaints in relation to the Company and the Goods or Services provided to the Client, or in relation to subscriptions should be addressed to Oxygen Tech by contacting oxygentech@protonmail.com.\n\n'
                  '17.2. By submitting a complaint, the Client should clearly indicate that a complaint is submitted and specify the grounds and circumstances concerning the complaint. The relevant Company will send to the Client a complaint acknowledgement to the email address when the complaint has been received. We will consider the complaint and respond to the Client within 14 calendar days since the day of receipt of a relevant complaint.\n\n'
                  '17.3. Client’s requests (complaints) shall be analysed by the Company free of charge.\n\n'
                  '17.4. If Company’s response to the Client\'s complaint does not satisfy the Client or no answer has been provided thereto, the Client has the right to file claim with the regulatory institutions or courts.\n\n'
                  '18. Miscellaneous\n\n'
                  '18.1 No person other than the Client shall have any rights under these T&Cs.\n\n'
                  '18.2. Client may not assign any rights under the Agreement to any third party without the prior consent of the Company. The Company at its sole discretion may assign its rights and obligations under the Agreement in full or in part to any third party.\n\n'
                  '18.3. Any dispute under these T&Cs or otherwise in connection with the Services shall be brought to the courts, except where prohibited by the applicable laws.\n\n'
                  '18.4. If any part of these T&Cs is found by a court of competent jurisdiction to be invalid, unlawful or unenforceable then such part shall be severed from the remainder of the T&Cs, which shall continue to be valid and enforceable to the fullest extent permitted by law.',
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
