import 'package:flutter/material.dart';
import 'package:tenant_management_app_maintenancecontractorview/models/maintenance_model.dart';

class LandlordMaintenanceRequestCardWidget extends StatefulWidget {
  final MaintenanceModel maintenance;

  const LandlordMaintenanceRequestCardWidget({Key key, this.maintenance}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LandlordMaintenanceRequestCardWidgetState();
}

class _LandlordMaintenanceRequestCardWidgetState extends State<LandlordMaintenanceRequestCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        dense: true,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              onPressed: !widget.maintenance.completed
                  ? () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (_) => MaintenanceForm()));
                    }
                  : null,
              icon: Icon(Icons.check, color: Colors.green,)
            ),
            IconButton(
              onPressed: !widget.maintenance.completed
                  ? () {
                      //Navigator.of(context).push(MaterialPageRoute(builder: (_) => MaintenanceForm()));
                    }
                  : null,
              icon: Icon(Icons.close, color: Colors.red,)
            )
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Material(
            elevation: 10,
            shape: CircleBorder(),
            shadowColor: widget.maintenance.color.withOpacity(0.4),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: widget.maintenance.color,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Icon(
                  widget.maintenance.icon,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              widget.maintenance.name,
              style: TextStyle(
                  inherit: true, fontWeight: FontWeight.w700, fontSize: 16.0),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Landlord: ' + widget.maintenance.landlord,
                      style: TextStyle(
                          inherit: true,
                          fontSize: 12.0,
                          color: Colors.black45)),
              SizedBox(
                height: 5,
              ),            
              Text('Property: ' + widget.maintenance.propertyNo,
                      style: TextStyle(
                          inherit: true,
                          fontSize: 12.0,
                          color: Colors.black45)),
              SizedBox(
                height: 5,
              ), 
              Text('Scheduled Date & Time:',
                style: TextStyle(
                    inherit: true,
                    fontSize: 12.0,
                    color: Colors.black45)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(widget.maintenance.date,
                      style: TextStyle(
                          inherit: true,
                          fontSize: 12.0,
                          color: Colors.black45)),
                  SizedBox(
                    width: 20,
                  ),
                  Text(widget.maintenance.hour,
                      style: TextStyle(
                          inherit: true,
                          fontSize: 12.0,
                          color: Colors.black45)),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
