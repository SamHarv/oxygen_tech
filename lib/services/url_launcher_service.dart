import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  final _plansUrl = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.o2tech.plans&pcampaignid=web_share');
  final _moMUrl = Uri.parse('https://matterofmovement.com.au');
  final _digbyUrl = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.samharvey.digby&pcampaignid=web_share');
  final _digbyWebUrl = Uri.parse('https://digbygame.com.au');
  final _brighterTomorrowUrl = Uri.parse('https://brightertomorrow.com.au');
  final _gitHubUrl = Uri.parse('https://github.com/SamHarv');
  final _linkedInUrl =
      Uri.parse('https://www.linkedin.com/in/sam-harvey-83a182234/');

  Future<void> launchPlansUrl() async {
    if (!await launchUrl(_plansUrl)) {
      throw 'Could not launch $_plansUrl';
    }
  }

  Future<void> launchMoMUrl() async {
    if (!await launchUrl(_moMUrl)) {
      throw 'Could not launch $_moMUrl';
    }
  }

  Future<void> launchDigbyUrl() async {
    if (!await launchUrl(_digbyUrl)) {
      throw 'Could not launch $_digbyUrl';
    }
  }

  Future<void> launchDigbyWebUrl() async {
    if (!await launchUrl(_digbyWebUrl)) {
      throw 'Could not launch $_digbyWebUrl';
    }
  }

  Future<void> launchBrighterTomorrowUrl() async {
    if (!await launchUrl(_brighterTomorrowUrl)) {
      throw 'Could not launch $_brighterTomorrowUrl';
    }
  }

  Future<void> launchLinkedInUrl() async {
    if (!await launchUrl(_linkedInUrl)) {
      throw 'Could not launch $_linkedInUrl';
    }
  }

  Future<void> launchGitHubUrl() async {
    if (!await launchUrl(_gitHubUrl)) {
      throw 'Could not launch $_gitHubUrl';
    }
  }

  void sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'oxygentech@protonmail.com',
    );
    await launchUrl(emailLaunchUri);
  }
}
