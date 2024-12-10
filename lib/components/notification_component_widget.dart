import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'notification_component_model.dart';
export 'notification_component_model.dart';

class NotificationComponentWidget extends StatefulWidget {
  const NotificationComponentWidget({super.key});

  @override
  State<NotificationComponentWidget> createState() =>
      _NotificationComponentWidgetState();
}

class _NotificationComponentWidgetState
    extends State<NotificationComponentWidget> {
  late NotificationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 24.0, 0.0),
      child: badges.Badge(
        badgeContent: Text(
          '1',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Plus Jakarta Sans',
                color: Colors.white,
                fontSize: 14.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
              ),
        ),
        showBadge: true,
        shape: badges.BadgeShape.circle,
        badgeColor: const Color(0xFF4B39EF),
        elevation: 4.0,
        padding: const EdgeInsets.all(8.0),
        position: badges.BadgePosition.topEnd(),
        animationType: badges.BadgeAnimationType.scale,
        toAnimate: true,
        child: const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
          child: Icon(
            Icons.notifications_active,
            color: Color(0xFF57636C),
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
