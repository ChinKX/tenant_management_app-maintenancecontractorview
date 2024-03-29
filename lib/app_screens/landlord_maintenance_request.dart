import 'package:flutter/material.dart';
import 'package:tenant_management_app_maintenancecontractorview/data/data.dart';
import 'package:tenant_management_app_maintenancecontractorview/widgets/landlord_maintenance_request_cart.dart';

class LandlordMaintenanceRequest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Maintenance Requests',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 16.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            color: Colors.grey.shade50,
            width: _media.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                    bottom: 15,
                    top: 15.0,
                  ),
                  child: Text(
                    "23 july 2019",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (overscroll) {
                        overscroll.disallowGlow();
                      },
                      child: ListView.separated(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 85.0),
                            child: Divider(),
                          );
                        },
                        padding: EdgeInsets.zero,
                        itemCount: getMaintenancesCard().length,
                        itemBuilder: (BuildContext context, int index) {
                          return LandlordMaintenanceRequestCardWidget(
                            maintenance: getMaintenancesCard()[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
