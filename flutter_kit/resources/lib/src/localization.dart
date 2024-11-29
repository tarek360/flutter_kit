import 'package:resources/generated/l10n.dart';
import 'package:riverpod/riverpod.dart';

typedef Strings = S;

final stringsProvider = Provider<Strings>((ref) => Strings.current);

extension StringsEx on Strings {
  String? getLanguageNameByCode(String langCode) {
    return switch (langCode) {
      'en_us' => english,
      'fr_fr' => french,
      'es_es' => spanish,
      'de_de' => german,
      'ar' => arabic,
      'bg' => bulgarian,
      'cs' => czech,
      'da' => danish,
      'de' => german,
      'el' => greek,
      'en' => english,
      'es' => spanish,
      'et' => estonian,
      'fi' => finnish,
      'fr' => french,
      'hi' => hindi,
      'hu' => hungarian,
      'id' => indonesian,
      'it' => italian,
      'ja' => japanese,
      'ko' => korean,
      'lt' => lithuanian,
      'lv' => latvian,
      'nb' => norwegianBokmal,
      'nl' => dutch,
      'pl' => polish,
      'pt' => portuguese,
      'pt_BR' => portugueseBrazil,
      'ro' => romanian,
      'ru' => russian,
      'sk' => slovak,
      'sl' => slovenian,
      'sv' => swedish,
      'tr' => turkish,
      'th' => thai,
      'uk' => ukrainian,
      'zh' => chinese,
      _ => null,
    };
  }
}
