import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:meditech/pages/homepage.dart';
import 'package:provider/provider.dart';

import '../models/country_report.dart';
import '../services/repositories/countries_report_repository.dart';
import '../utils/constants.dart';

class MasterCountryScreen extends StatefulWidget {
  const MasterCountryScreen({Key? key, required this.countryName})
      : super(key: key);
  final String countryName;

  @override
  State<MasterCountryScreen> createState() => _MasterCountryScreenState();
}

class _MasterCountryScreenState extends State<MasterCountryScreen> {
  Size? _size;
  late CountryReport countryReport;
  final formatter = intl.NumberFormat.decimalPattern();

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    var crRepo = Provider.of<CountriesReportRepository>(context, listen: false);
    countryReport = crRepo.countriesReportList!
        .firstWhere((element) => element.country == widget.countryName);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          countryReport.country!,
          style: Theme.of(context).textTheme.headline2!.copyWith(
                fontSize: _size!.height * 0.03,
              ),
        ),
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: _size!.height * 0.03),
        child: _buildBody(context),

      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        const Expanded(flex: 15, child: SizedBox()),
        _buildReportDetails(),
        const Expanded(flex: 15, child: SizedBox()),
      ],
    );
  }

  Widget _buildReportDetails() {
    return Expanded(
      flex: 70,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: _size!.height * 0.065,
              bottom: _size!.height * 0.015,
              left: _size!.height * 0.03,
              right: _size!.height * 0.03,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_size!.height * 0.03),
              border: Border.all(color: MyColors.kLoblolly, width: 1.0),
            ),
            child: _buildReportItems(),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: -(_size!.height * 0.05),
            child: CircleAvatar(
              radius: _size!.height * 0.05,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.network(
                  countryReport.countryFlag!,
                  width: _size!.height * 0.1,
                  height: _size!.height * 0.1,
                  fit: BoxFit.cover,
                  loadingBuilder:
                      (context, child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(
                      child: CircularProgressIndicator(
                        color: MyColors.kCodGray,
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildReportItems() {
    return Column(
      children: [
        _buildReportItem(
          'Total Cases',
          formatter.format(countryReport.totalCases),
        ),
        _addHorizontalDivider(),
        _buildReportItem(
          'Deaths',
          formatter.format(countryReport.deaths),
        ),
        _addHorizontalDivider(),
        _buildReportItem(
          'Recovered',
          formatter.format(countryReport.recovered),
        ),
        _addHorizontalDivider(),
        _buildReportItem(
          'Active',
          formatter.format(countryReport.active),
        ),
        _addHorizontalDivider(),
        _buildReportItem(
          'Critical',
          formatter.format(countryReport.critical),
        ),
        _addHorizontalDivider(),
        _buildReportItem(
          'Today Deaths',
          formatter.format(countryReport.todayDeaths),
        ),
        _addHorizontalDivider(),
        _buildReportItem(
          'Today Recovered',
          formatter.format(countryReport.todayRecovered),
        ),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const HomePage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              foregroundColor: MyColors.kPorcelain, backgroundColor: Colors.red.shade900, enableFeedback: true,
              fixedSize: const Size.fromWidth(double.infinity),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
          ),
          child: Text(
            'Back to Home',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                fontSize: _size!.height * 0.02,
                color: MyColors.kPorcelain,fontWeight: FontWeight.bold
            ),
          ),
        )

      ],

    );

  }

  Widget _buildReportItem(String title, String count) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildReportText(title),
          _buildReportText(count),
        ],
      ),

    );
  }

  Widget _buildReportText(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4!.copyWith(
            fontSize: _size!.height * 0.022,
          ),
    );
  }

  Widget _addHorizontalDivider() {
    return Divider(
      color: MyColors.kLoblollyLight,
      thickness: 1.0,
      indent: _size!.height * 0.08,
      endIndent: _size!.height * 0.08,
    );
  }


}
