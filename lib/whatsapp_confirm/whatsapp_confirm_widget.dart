import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'whatsapp_confirm_model.dart';
export 'whatsapp_confirm_model.dart';

class WhatsappConfirmWidget extends StatefulWidget {
  const WhatsappConfirmWidget({
    super.key,
    required this.mobile,
    required this.accountType,
  });

  final String? mobile;
  final String? accountType;

  @override
  State<WhatsappConfirmWidget> createState() => _WhatsappConfirmWidgetState();
}

class _WhatsappConfirmWidgetState extends State<WhatsappConfirmWidget> {
  late WhatsappConfirmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhatsappConfirmModel());

    _model.waCodeTextController ??= TextEditingController();
    _model.waCodeFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).width >= 768.0
                        ? 530.0
                        : 630.0,
                    constraints: const BoxConstraints(
                      maxWidth: 570.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                32.0, 30.0, 32.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 230.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(-0.07, 0.04),
                                    child: Text(
                                      'OG\'s HUB\n',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .displayMedium
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                        shadows: [
                                          Shadow(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            offset: const Offset(2.0, 2.0),
                                            blurRadius: 2.0,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        const AlignmentDirectional(0.02, -1.34),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/download.png',
                                        width: 100.0,
                                        height: 100.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.waCodeTextController,
                                      focusNode: _model.waCodeFocusNode,
                                      autofocus: true,
                                      autofillHints: const [
                                        AutofillHints.telephoneNumber
                                      ],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Code Sent to Your Number',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                24.0, 24.0, 0.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      maxLength: 4,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .waCodeTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      _model.apiResultakx =
                                          await OgsConfirmWAcodeCall.call(
                                        mobile: widget.mobile,
                                        waCode:
                                            _model.waCodeTextController.text,
                                        accountType: widget.accountType,
                                      );

                                      if (OgsConfirmWAcodeCall.state(
                                            (_model.apiResultakx?.jsonBody ??
                                                ''),
                                          ) ==
                                          'success') {
                                        context.pushNamed('loginPage');
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Wrong Code',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .warning,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                    text: 'Confirm',
                                    options: FFButtonOptions(
                                      width: 200.0,
                                      height: 45.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
