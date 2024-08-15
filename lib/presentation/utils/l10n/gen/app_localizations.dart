import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('tr')
  ];

  /// No description provided for @appName.
  ///
  /// In tr, this message translates to:
  /// **'Blackmart News'**
  String get appName;

  /// No description provided for @notFoundNavigation.
  ///
  /// In tr, this message translates to:
  /// **'403'**
  String get notFoundNavigation;

  /// No description provided for @noInternet.
  ///
  /// In tr, this message translates to:
  /// **'İnternet bağlantınız yok.'**
  String get noInternet;

  /// No description provided for @continue_.
  ///
  /// In tr, this message translates to:
  /// **'Devam et'**
  String get continue_;

  /// No description provided for @username.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı Adı'**
  String get username;

  /// No description provided for @phone.
  ///
  /// In tr, this message translates to:
  /// **'Telefon'**
  String get phone;

  /// No description provided for @email.
  ///
  /// In tr, this message translates to:
  /// **'E-posta'**
  String get email;

  /// No description provided for @password.
  ///
  /// In tr, this message translates to:
  /// **'Parola'**
  String get password;

  /// No description provided for @agreementDescription.
  ///
  /// In tr, this message translates to:
  /// **'Kullanıcı Sözleşmesini Onaylıyorum.'**
  String get agreementDescription;

  /// No description provided for @haveAccount.
  ///
  /// In tr, this message translates to:
  /// **'Zaten bir hesabın var mı?'**
  String get haveAccount;

  /// No description provided for @haveNoAccount.
  ///
  /// In tr, this message translates to:
  /// **'Hesabın yok mu?'**
  String get haveNoAccount;

  /// No description provided for @signIn.
  ///
  /// In tr, this message translates to:
  /// **'Giriş Yap'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In tr, this message translates to:
  /// **'Kaydol'**
  String get signUp;

  /// No description provided for @save.
  ///
  /// In tr, this message translates to:
  /// **'Kaydet'**
  String get save;

  /// No description provided for @forgotPassword.
  ///
  /// In tr, this message translates to:
  /// **'Parolamı Unuttum'**
  String get forgotPassword;

  /// No description provided for @resetPassword.
  ///
  /// In tr, this message translates to:
  /// **'Parolamı Sıfırla'**
  String get resetPassword;

  /// No description provided for @sendCodeAgain.
  ///
  /// In tr, this message translates to:
  /// **'Kodu Tekrar Gönder'**
  String get sendCodeAgain;

  /// No description provided for @verify.
  ///
  /// In tr, this message translates to:
  /// **'Onayla'**
  String get verify;

  /// No description provided for @searchNews.
  ///
  /// In tr, this message translates to:
  /// **'Haber arayın'**
  String get searchNews;

  /// No description provided for @source.
  ///
  /// In tr, this message translates to:
  /// **'Kaynak'**
  String get source;

  /// No description provided for @news.
  ///
  /// In tr, this message translates to:
  /// **'Haber'**
  String get news;

  /// No description provided for @daily.
  ///
  /// In tr, this message translates to:
  /// **'Günlük'**
  String get daily;

  /// No description provided for @all.
  ///
  /// In tr, this message translates to:
  /// **'Tümü'**
  String get all;

  /// No description provided for @editProfile.
  ///
  /// In tr, this message translates to:
  /// **'Profili düzenle'**
  String get editProfile;

  /// No description provided for @sources.
  ///
  /// In tr, this message translates to:
  /// **'Kaynaklar'**
  String get sources;

  /// No description provided for @comments.
  ///
  /// In tr, this message translates to:
  /// **'Yorumlar'**
  String get comments;

  /// No description provided for @likes.
  ///
  /// In tr, this message translates to:
  /// **'Beğeniler'**
  String get likes;

  /// No description provided for @myAccount.
  ///
  /// In tr, this message translates to:
  /// **'Hesabım'**
  String get myAccount;

  /// No description provided for @notifications.
  ///
  /// In tr, this message translates to:
  /// **'Bildirimler'**
  String get notifications;

  /// No description provided for @mod.
  ///
  /// In tr, this message translates to:
  /// **'Mod'**
  String get mod;

  /// No description provided for @help.
  ///
  /// In tr, this message translates to:
  /// **'Yardım'**
  String get help;

  /// No description provided for @comment.
  ///
  /// In tr, this message translates to:
  /// **'Yorum'**
  String get comment;

  /// No description provided for @content.
  ///
  /// In tr, this message translates to:
  /// **'İçerik'**
  String get content;

  /// No description provided for @commentLikes.
  ///
  /// In tr, this message translates to:
  /// **'Yorum Beğenileri'**
  String get commentLikes;

  /// No description provided for @myComments.
  ///
  /// In tr, this message translates to:
  /// **'Yorumlarım'**
  String get myComments;

  /// No description provided for @myAccountSettings.
  ///
  /// In tr, this message translates to:
  /// **'Hesap Ayarları'**
  String get myAccountSettings;

  /// No description provided for @deleteAccount.
  ///
  /// In tr, this message translates to:
  /// **'Hesabı Sil'**
  String get deleteAccount;

  /// No description provided for @changeCountry.
  ///
  /// In tr, this message translates to:
  /// **'Ülke Değiştir'**
  String get changeCountry;

  /// No description provided for @notificationSettings.
  ///
  /// In tr, this message translates to:
  /// **'Bildirim Ayarları'**
  String get notificationSettings;

  /// No description provided for @mySources.
  ///
  /// In tr, this message translates to:
  /// **'Kaynaklarım'**
  String get mySources;

  /// No description provided for @myLikes.
  ///
  /// In tr, this message translates to:
  /// **'Beğenilerim'**
  String get myLikes;

  /// No description provided for @categories.
  ///
  /// In tr, this message translates to:
  /// **'Kategoriler'**
  String get categories;

  /// No description provided for @trends.
  ///
  /// In tr, this message translates to:
  /// **'Öne çıkanlar'**
  String get trends;

  /// No description provided for @sourceAndNewsSearchHint.
  ///
  /// In tr, this message translates to:
  /// **'Kaynak ve Haber Ara'**
  String get sourceAndNewsSearchHint;

  /// No description provided for @sourceSearchHint.
  ///
  /// In tr, this message translates to:
  /// **'Kaynak Ara'**
  String get sourceSearchHint;

  /// No description provided for @searchHistory.
  ///
  /// In tr, this message translates to:
  /// **'Geçmiş Aramalarınız'**
  String get searchHistory;

  /// No description provided for @explore.
  ///
  /// In tr, this message translates to:
  /// **'Keşfet'**
  String get explore;

  /// No description provided for @myLikesTabNews.
  ///
  /// In tr, this message translates to:
  /// **'Haber'**
  String get myLikesTabNews;

  /// No description provided for @myLikesTabComment.
  ///
  /// In tr, this message translates to:
  /// **'Yorum'**
  String get myLikesTabComment;

  /// No description provided for @subscriber.
  ///
  /// In tr, this message translates to:
  /// **'Abone'**
  String get subscriber;

  /// No description provided for @yourComment.
  ///
  /// In tr, this message translates to:
  /// **'Yorumunuz...'**
  String get yourComment;

  /// No description provided for @complain.
  ///
  /// In tr, this message translates to:
  /// **'Şikayet et'**
  String get complain;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'tr': return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
