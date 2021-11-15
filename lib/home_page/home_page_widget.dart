import '../anadirproducto/anadirproducto_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../mercados/mercados_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFF8BC34A),
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 80, 150, 0),
            child: Text(
              'BIENVENIDO',
              style: FlutterFlowTheme.title1.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          actions: [],
          elevation: 4,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.05),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Image.asset(
                        'assets/images/Imagen2.png',
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.3,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      setState(() => _loadingButton1 = true);
                      try {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 1000),
                            reverseDuration: Duration(milliseconds: 1000),
                            child: MercadosWidget(),
                          ),
                        );
                      } finally {
                        setState(() => _loadingButton1 = false);
                      }
                    },
                    text: 'Comprar',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFFA4CA74),
                      textStyle: FlutterFlowTheme.title3.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF22400A),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xFF22400A),
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                    loading: _loadingButton1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() => _loadingButton2 = true);
                        try {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.topToBottom,
                              duration: Duration(milliseconds: 1000),
                              reverseDuration: Duration(milliseconds: 1000),
                              child: AnadirproductoWidget(),
                            ),
                          );
                        } finally {
                          setState(() => _loadingButton2 = false);
                        }
                      },
                      text: 'Vender',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFFA4CA74),
                        textStyle: FlutterFlowTheme.title3.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF22400A),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xFF22400A),
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                      loading: _loadingButton2,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.25),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(250, 160, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Imagen3.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
