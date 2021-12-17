import 'package:elementary/elementary.dart';
import 'package:flutter_country/data/repository/country/country_repository.dart';
import 'package:flutter_country/domain/country/country.dart';
import 'package:flutter_country/ui/screen/country_list_screen/country_list_screen.dart';

/// Model for [CountryListScreen]
class CountryListScreenModel extends ElementaryModel {
  final CountryRepository _countryRepository;

  CountryListScreenModel(
    this._countryRepository,
    ErrorHandler errorHandler,
  ) : super(errorHandler: errorHandler);

  /// Return iterable countries.
  Future<Iterable<Country>> loadCountries() async {
    try {
      final res = await _countryRepository.getAllCountries();
      return res;
    } on Exception catch (e) {
      handleError(e);
      rethrow;
    }
  }
}
