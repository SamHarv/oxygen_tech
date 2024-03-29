import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  final _plansUrl = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.o2tech.plans&pcampaignid=web_share');
  final _moMUrl = Uri.parse('https://matterofmovement.com.au');
  final _digbyUrl = Uri.parse(
      'https://play.google.com/store/apps/details?id=com.samharvey.digby&pcampaignid=web_share');
  final _digbyWebUrl = Uri.parse('https://digbygame.com.au');
  final _brighterTomorrowUrl = Uri.parse('https://brightertomorrow.com.au');
  final _youTubeUrl =
      Uri.parse('https://www.youtube.com/channel/UCO6fpaaJYCkVSZQIhA4Gi8Q');
  final _gitHubUrl = Uri.parse('https://github.com/SamHarv');
  final _linkedInUrl = Uri.parse('https://www.linkedin.com/company/o2-tech/');
  final _facebookUrl =
      Uri.parse('https://www.facebook.com/profile.php?id=61557448528374');
  final _instagramUrl = Uri.parse(
      'https://www.instagram.com/o2tech2024?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==');
  final _plansAppStore =
      Uri.parse('https://apps.apple.com/us/app/plans/id6479982953');

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

  Future<void> launchYouTubeUrl() async {
    if (!await launchUrl(_youTubeUrl)) {
      throw 'Could not launch $_youTubeUrl';
    }
  }

  Future<void> launchFacebookUrl() async {
    if (!await launchUrl(_facebookUrl)) {
      throw 'Could not launch $_facebookUrl';
    }
  }

  Future<void> launchInstagramUrl() async {
    if (!await launchUrl(_instagramUrl)) {
      throw 'Could not launch $_instagramUrl';
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

  void launchPlansAppStore() async {
    if (!await launchUrl(_plansAppStore)) {
      throw 'Could not launch $_plansAppStore';
    }
  }
}
