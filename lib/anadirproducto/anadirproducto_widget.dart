import 'package:proyecto2/home_page/home_page_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto2/verifcont.dart';
import 'package:proyecto2/api_service.dart';
import 'package:proyecto2/vegetales.dart';
import '../enviado/enviado_widget.dart';
class AnadirproductoWidget extends StatefulWidget {

  vegetales Vegetales;
  AnadirproductoWidget({this.Vegetales});

  @override
  _AnadirproductoWidget createState() => _AnadirproductoWidget();
}

class _AnadirproductoWidget extends State<AnadirproductoWidget> {
  ApiService _apiService = ApiService();
  bool _isFieldVerduraValid;
  bool _isFieldPrecioValid;
  bool _isFieldImagenValid;
  String dropDownValue;
  TextEditingController _ControllerVerdura = TextEditingController();
  TextEditingController _ControllerPrecio = TextEditingController();
  TextEditingController _ControllerImagen = TextEditingController();
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String texto = ' ';
  @override
  /*void initState() {
    if(widget.Vegetales != null){
      _isFieldVerduraValid = true;
      _ControllerVerdura.text = widget.Vegetales.verdura;
      _isFieldPrecioValid = true;
      _ControllerPrecio.text = Vegetales.precio;
      _isFieldImagenValid = true;
      _ControllerImagen.text = widget.Vegetales.imagen;
    }
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              decoration: BoxDecoration(
                color: Color(0xFF8BC34A),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Añadir productos',
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFA4CA74),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFF22400A),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mercado',
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF22400A),
                              ),
                            ),
                            FlutterFlowDropDown(
                              options: [
                                'Abasto minorista',
                              ].toList(),
                              onChanged: (val) =>
                                  setState(() => dropDownValue = val),
                              width: 130,
                              height: 40,
                              textStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              borderRadius: 0,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFA4CA74),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFF22400A),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Verdura',
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF22400A),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(95, 0, 0, 0),
                                child: TextFormField(
                                  controller: _ControllerVerdura,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Verdura',
                                    hintStyle: FlutterFlowTheme.bodyText1,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText1,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFA4CA74),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFF22400A),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Precio',
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF22400A),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    115, 0, 0, 0),
                                child: TextFormField(
                                  controller: _ControllerPrecio,
                                 
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Precio',
                                    hintStyle: FlutterFlowTheme.bodyText1,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText1,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFA4CA74),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFF22400A),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 4, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Imagen',
                              style: FlutterFlowTheme.title3.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF22400A),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(95, 0, 0, 0),
                                child: TextFormField(
                                  controller: _ControllerImagen,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Url',
                                    hintStyle: FlutterFlowTheme.bodyText1,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.bodyText1,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
             Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 40),
      child: FFButtonWidget(
        onPressed: () async {
          print('Button pressed ...');
                  verificar status = verifyInfo(_ControllerVerdura.text, _ControllerPrecio.text, _ControllerImagen.text);

                  if(status == verificar.formFilledOutCorrectly){
                    print('Se ingresó bien el producto');
                    Map ApiResponse = await ApiService.postVerduras(_ControllerVerdura.text, _ControllerPrecio.text, _ControllerImagen.text);
                    status = verifyResp(ApiResponse);
                  }
                  String newtext = textStatus(status);
                  setState(() {
                     texto = newtext;
                  });

          setState(() => _loadingButton1 = true);
          try {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 1000),
                reverseDuration: Duration(milliseconds: 1000),
                child: EnviadoWidget(),
              ),
            );
          } finally {
            setState(() => _loadingButton1 = false);
          }
        },
        text: 'Añadir',
        options: FFButtonOptions(
          width: 130,
          height: 40,
          color: Color(0xFFA4CA74),
          textStyle: FlutterFlowTheme.title3,
          elevation: 0,
          borderSide: BorderSide(
            color: Color(0xFF22400A),
            width: 1,
          ),
          borderRadius: 12,
        ),
        loading: _loadingButton1,
      ),
    ),
    Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 40),
      child: FFButtonWidget(
        onPressed: () async {
          setState(() => _loadingButton2 = true);
          try {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRight,
                duration: Duration(milliseconds: 1000),
                reverseDuration: Duration(milliseconds: 1000),
                child: HomePageWidget(),
              ),
            );
          } finally {
            setState(() => _loadingButton2 = false);
          }
        },
        text: 'Volver',
        options: FFButtonOptions(
          width: 130,
          height: 40,
          color: Color(0xFFA4CA74),
          textStyle: FlutterFlowTheme.title3,
          elevation: 0,
          borderSide: BorderSide(
            color: Color(0xFF22400A),
            width: 1,
          ),
          borderRadius: 12,
        ),
        loading: _loadingButton2,
      ),
    )
  ],
),)
      );
  }}
