package Flaschenzug_V3
  connector Port1
    /////////////////////////////////
    Modelica.SIunits.Length s     "Weg";
    flow Modelica.SIunits.Force  F      "Kraft";
    /////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {0, 170, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Solid, points = {{0, 100}, {-100, -100}, {100, -100}, {0, 100}, {0, 100}})}));
  end Port1;

  connector Port2
    /////////////////////////////////
    Modelica.SIunits.Length s     "Weg";
    flow Modelica.SIunits.Force F      "Kraft";
    /////////////////////////////////
    annotation(
      Diagram,
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 100}, {100, 100}, {0, -100}, {0, -100}, {-100, 100}})}));
  end Port2;

  connector Port_Rolle_Seilanschluss
    /////////////////////////////////
    Modelica.SIunits.Length s     "Weg";
    flow Modelica.SIunits.Force F      "Kraft";
    /////////////////////////////////
    annotation(
      Diagram,
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 40}, {0, 100}, {100, 40}, {100, 40}, {-100, 40}}), Polygon(origin = {-40, -70}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-60, 30}, {40, -30}, {140, 30}, {140, 30}, {-60, 30}}), Rectangle(origin = {-10, 0}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-90, 40}, {110, -40}})}));
  end Port_Rolle_Seilanschluss;

  connector Port_Drehmoment_und_Drehzahl
  /////////////////////////////////////////
    flow Modelica.SIunits.Torque T    "Drehmoment" ;
     Modelica.SIunits.Frequency n "Drehzahl in Hertz"; 
/////////////////////////////////////////
    annotation(
      Icon(graphics = {Rectangle(origin = {7, -8}, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-47, 48}, {33, -32}}), Rectangle(origin = {40, 56}, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-20, 4}, {20, -4}}), Rectangle(origin = {56, -4}, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, fillPattern = FillPattern.Solid, extent = {{4, 56}, {-4, -48}}), Rectangle(origin = {40, -56}, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-20, 4}, {20, -4}}), Rectangle(origin = {-40, 56}, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-20, 4}, {20, -4}}), Rectangle(origin = {-40, -56}, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-20, -4}, {20, 4}}), Rectangle(origin = {-56, 0}, lineColor = {0, 85, 255}, fillColor = {0, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-4, 52}, {4, -52}})}),
      Diagram,
      __OpenModelica_commandLineOptions = "");
  end Port_Drehmoment_und_Drehzahl;

  model Fixpoint
    Flaschenzug_V3.Port2 portFix annotation(
      Placement(visible = true, transformation(origin = {0, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    /////////////////////////////////
  equation
    portFix.s = 0;
// Weg gleich 0
///////////////////////////////////
    annotation(
      Icon(graphics = {Rectangle(origin = {4, 14}, fillPattern = FillPattern.Solid, extent = {{-84, -12}, {76, -16}}), Polygon(origin = {-65, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {-25, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {-39, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {-53, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {-11, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {29, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {1, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {15, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {71, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {57, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {43, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {85, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}})}, coordinateSystem(initialScale = 0.1)));
  end Fixpoint;

  model Motor
    //////////////////////////////////////////////////
    constant Real g = Modelica.Constants.g_n      "Erdbeschleunigung";
    constant Real pi = Modelica.Constants.pi      "Pi"; 
    Modelica.SIunits.Force F_z                    "Motorkraft"; 
    Modelica.SIunits.Acceleration a               "Beschleunigung";
    Modelica.SIunits.Velocity v                   "Geschwindigkeit";
    Modelica.SIunits.Length s_Motor = Port_Motor.s"Weg des Seils, das durch den Motor läuft";
    Modelica.SIunits.Torque M_L                   "Lastmoment";
    Modelica.SIunits.Power P                      "elektrische Leistung in Watt";
    Modelica.SIunits.Current I                    "Strom in Ampere";  
    
    parameter Modelica.SIunits.Frequency n = 50   "Drehzahl in Hertz";
    parameter Modelica.SIunits.Voltage U = 230    "Spannung in Volt";
    parameter Modelica.SIunits.Length r = 0.01    "Radius Motorwelle in m";
    /////////////////////////////////////////////////
    Flaschenzug_V3.Port2 Port_Motor annotation(
      Placement(visible = true, transformation(origin = {2, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86, 0}, extent = {{-8, -8}, {8, 8}}, rotation = 90)));
    /////////////////////////////////////////////////
  equation
    Port_Motor.F = F_z;
    der(v) = a;
    der(Port_Motor.s) = v;
    M_L = -F_z * r;
    P = M_L * 2 * pi * n;
    P = U * I;
////////////////////////////////////////////////
  annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {0, 27}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {52, 0}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {104, -1}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {-26, -3}}), Polygon(origin = {-52, 0}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {0, 17}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, -5}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, -17}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, -27}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, 5}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {0, -42}, rotation = 90, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {2, -47}, fillPattern = FillPattern.Solid, extent = {{-52, 3}, {50, -3}})}));
  end Motor;
  class Getriebe
    parameter Real i = 20;              //Übersetzung
    Modelica.SIunits.Frequency n_M;                 //Drehzahl Motor
    Modelica.SIunits.Frequency n_ab;                //Drehzahl nach Getriebe
    Modelica.SIunits.Torque T_ab;                //Moment nach Getriebe
    Modelica.SIunits.Torque T_M;
      Flaschenzug_V3.Port_Drehmoment_und_Drehzahl Port_in annotation(
      Placement(visible = true, transformation(origin = {-72, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Flaschenzug_V3.Port_Drehmoment_und_Drehzahl Port_out annotation(
      Placement(visible = true, transformation(origin = {64, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));               //Moment Motor
  equation
  
    i = n_M  / n_ab;
    i = T_ab / T_M;
    
    annotation(
      Icon(graphics = {Ellipse(origin = {-20, -12}, fillPattern = FillPattern.Solid, extent = {{-16, 16}, {16, -16}}, endAngle = 360), Ellipse(origin = {-20, -12}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {-18, 5}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-18, -31}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-1, -10}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-37, -10}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-27, 4}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-34, -2}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-36, -18}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-8, -28}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-31, -26}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-12, 6}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-4, 0}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-2, -20}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {9, -12}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {2, -4}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {22, 4}, fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}, endAngle = 360), Rectangle(origin = {43, -6}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {36, -14}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {1, 6}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {45, 6}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {24, -19}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {22, 4}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {40, 18}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {4, 16}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {45, 35}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{2, 14}, {6, 20}}), Rectangle(origin = {13, 24}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {24, 25}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-6, 5}, lineThickness = 1, extent = {{-54, 35}, {66, -45}}), Line(origin = {-33, 28}, points = {{-11, 0}, {11, 0}}, thickness = 2), Polygon(origin = {-17, 28}, fillPattern = FillPattern.Solid, points = {{-5, 4}, {-5, -4}, {5, 0}, {-5, 4}, {-5, 4}})}, coordinateSystem(initialScale = 0.1)));
  end Getriebe;

  class Seilwinde
    Real M_SW;                    //Moment vom Getriebe
    Real F_SW;                    //Kraft vom Seil
    Real D_SW = 0.1;              //Durchmesser Seilwinde
    Real n_SW;                    //Drehzahl vom Getriebe
    Real s_SW;                    //Weg vom Seil
    Real U_SW;                    //Umfang Seilwinde
    Real AnzU;
      Port_Drehmoment_und_Drehzahl Port_rot annotation(
      Placement(visible = true, transformation(origin = {-72, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-72, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Flaschenzug_V3.Port1 Port_trans annotation(
      Placement(visible = true, transformation(origin = {34, 88}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {35, 87}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));          
//Anzahl der Umdrehungen
  equation
    M_SW = F_SW * (D_SW / 2);
//Moment = Kraft * Hebelarm
    U_SW = 3.14 * D_SW;
//Berechnung Umfang der Seilwinde
    AnzU = n_SW * time;
//Anzahl der Umdrehungen = Drehzahl * Zeit
    s_SW = AnzU * U_SW;         //Weg vom Seil = Anzahl der Umdrehungen * Umfang der Seilwinde
    annotation(
      Icon(graphics = {Rectangle(origin = {-63, 4}, fillPattern = FillPattern.Solid, extent = {{-3, 36}, {3, -44}}), Rectangle(origin = {63, 4}, fillPattern = FillPattern.Solid, extent = {{-3, 36}, {3, -44}}), Rectangle(origin = {29, 64}, fillPattern = FillPattern.Solid, extent = {{-89, -36}, {31, -44}}), Rectangle(origin = {29, 16}, fillPattern = FillPattern.Solid, extent = {{-89, -36}, {31, -44}}), Rectangle(origin = {7, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {19, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {31, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {43, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {55, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {67, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {-7, 44}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {37, -44}})}));
  end Seilwinde;

  model Rollensystem
    parameter Real n = 4;
      Flaschenzug_V3.Port1 Port_Zug annotation(
      Placement(visible = true, transformation(origin = {0, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    Flaschenzug_V3.Port2 Port_Last annotation(
      Placement(visible = true, transformation(origin = {0, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ////////////////////////////////////////////////////////
    Flaschenzug_V3.Port1 port_fix annotation(
      Placement(visible = true, transformation(origin = {0, 88}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ////////////////////////////////////////////////////////
  equation
    Port_Zug.F = Port_Last.F / n;
    Port_Last.s = Port_Zug.s / n;
////////////////////////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(lineThickness = 1, extent = {{-80, 80}, {80, -80}}), Ellipse(origin = {0, 39}, lineThickness = 2, extent = {{-18, 19}, {18, -17}}, endAngle = 360), Ellipse(origin = {-1, 41}, fillPattern = FillPattern.Solid, extent = {{-5, 5}, {7, -7}}, endAngle = 360), Line(origin = {0, 40}, points = {{0, 24}, {0, -24}}, thickness = 2), Ellipse(origin = {0, -41}, lineThickness = 2, extent = {{-18, 19}, {18, -17}}, endAngle = 360), Line(origin = {0.0241639, -40.6258}, points = {{0, 24}, {0, -24}}, thickness = 2), Line(origin = {-49, 21}, points = {{37, 33}, {-7, -19}}, thickness = 1), Line(origin = {13.403, 5.76893}, points = {{5, 35}, {5, -45}}, thickness = 1), Line(origin = {-23.1774, 3.73566}, points = {{5, 35}, {5, -45}}, thickness = 1), Line(origin = {-18.7797, 2.88865}, points = {{19, 9}, {1, -37}}, thickness = 1), Ellipse(origin = {-1, -39}, fillPattern = FillPattern.Solid, extent = {{-5, 5}, {7, -7}}, endAngle = 360), Rectangle(origin = {0, 14}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {0, -14}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Line(origin = {-0.850407, 25.2231}, points = {{19, 9}, {1, -37}}, thickness = 1), Rectangle(origin = {0, 66}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {0, -66}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {-58, 0}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}})}));
  end Rollensystem;

  model Rolle_oben
    Flaschenzug_V3.Port1 port_oben annotation(
      Placement(visible = true, transformation(origin = {-6, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port2 port_unten annotation(
      Placement(visible = true, transformation(origin = {-4, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_links annotation(
      Placement(visible = true, transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-63, -67}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_rechts annotation(
      Placement(visible = true, transformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {63, -67}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  ////////////////////////////////////////////////////////////
    parameter Modelica.SIunits.Mass m = 0           "Masse Rolle";
    constant Real g = Modelica.Constants.g_n        "Erdbeschleunigung";
    Modelica.SIunits.Force F_g                      "Gewichtskraft";
  ////////////////////////////////////////////////////////////
  equation
    F_g = m * g;
    port_rechts.F = port_links.F;
    port_oben.F = port_rechts.F + port_links.F + port_unten.F + F_g;
    port_links.s = -port_rechts.s;
    port_oben.s = port_unten.s;
///////////////////////////////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Ellipse(origin = {1, -1}, fillColor = {252, 252, 252}, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-61, 61}, {59, -59}}, endAngle = 360), Rectangle(extent = {{-10, 80}, {-10, 80}}), Rectangle(extent = {{-8, 82}, {-8, 82}}), Rectangle(origin = {-4, 21}, lineColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{10, 61}, {-2, -103}}), Ellipse(origin = {1, -3}, fillPattern = FillPattern.Solid, extent = {{-21, 23}, {19, -17}}, endAngle = 360), Rectangle(origin = {-63, -31}, fillPattern = FillPattern.Solid, extent = {{-1, 31}, {1, -31}}), Rectangle(origin = {65, -31}, fillPattern = FillPattern.Solid, extent = {{-1, 31}, {-3, -31}})}));
  end Rolle_oben;

  model Rolle_unten
    Flaschenzug_V3.Port2 port_unten annotation(
      Placement(visible = true, transformation(origin = {-4, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_links annotation(
      Placement(visible = true, transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-63, 55}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_rechts annotation(
      Placement(visible = true, transformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {63, 55}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    Flaschenzug_V3.Port1 port_oben annotation(
      Placement(visible = true, transformation(origin = {-10, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //////////////////////////////////////////////////////////////////
    parameter Modelica.SIunits.Mass m = 0           "Masse Rolle";
    constant Real g = Modelica.Constants.g_n        "Erdbeschleunigung";
    Modelica.SIunits.Force F_g                      "Gewichtskraft";
    Modelica.SIunits.Acceleration a                 "Beschleunigung Rolle trans.";
    Modelica.SIunits.Velocity v                     "Geschwindigkeit Rolle trans.";
    Modelica.SIunits.Length s                       "Weg Rolle trans.";
    ////////////////////////////////////////////////////////////////
  equation
    F_g = m * g;
    port_rechts.F = port_links.F;
    port_rechts.F + port_links.F + port_oben.F = -port_unten.F;
    (port_rechts.s + port_links.s) / 2 = s;
    
    s = port_oben.s;
    s = port_unten.s;
    
    
    
    der(v) = a;
    der(s) = v;
//////////////////////////////////////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Ellipse(origin = {1, -9}, fillColor = {252, 252, 252}, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-61, 61}, {59, -59}}, endAngle = 360), Rectangle(extent = {{-10, 80}, {-10, 80}}), Rectangle(extent = {{-8, 82}, {-8, 82}}), Rectangle(origin = {-4, 13}, lineColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{10, 61}, {-2, -103}}), Ellipse(origin = {1, -11}, fillPattern = FillPattern.Solid, extent = {{-21, 23}, {19, -17}}, endAngle = 360), Rectangle(origin = {-55, 41}, fillPattern = FillPattern.Solid, extent = {{-7, 11}, {-9, -49}}), Rectangle(origin = {63, 21}, fillPattern = FillPattern.Solid, extent = {{-1, 31}, {1, -31}}), Rectangle(origin = {31, -8}, fillPattern = FillPattern.Solid, extent = {{-1, 20}, {3, -20}}), Polygon(origin = {0, -8}, points = {{-78, -48}, {-78, -48}, {-78, -48}}), Polygon(origin = {38, 22}, fillPattern = FillPattern.Solid, points = {{-6, 6}, {-12, -10}, {0, -10}, {-6, 6}}), Polygon(origin = {38, -16}, fillPattern = FillPattern.Solid, points = {{-6, -26}, {-12, -10}, {0, -10}, {-6, -26}})}),
      experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Rolle_unten;

  model Masse
  /////////////////////////////////////////////////////////
    constant Real g = Modelica.Constants.g_n        "Erdbeschleunigung";
    Modelica.SIunits.Length s_masse=PortMasse.s     "Von der Masse zurückgelegter Weg";
    Modelica.SIunits.Force F_g                      "Gewichtskraft";
    Modelica.SIunits.Force F_t                      "Trägheitskraft";                                       
    Modelica.SIunits.Force F_ges = PortMasse.F      "Gesamtkraft an der Masse";
    Modelica.SIunits.Acceleration a                 "Beschleunigung Masse";
    Modelica.SIunits.Velocity v                     "Geschwindigkeit Masse";
  /////////////////////////////////////////////////////////
    parameter Modelica.SIunits.Mass m = 12          "Masse";
  /////////////////////////////////////////////////////////
    Flaschenzug_V3.Port1 PortMasse annotation(
      Placement(visible = true, transformation(origin = {0, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ///////////////////////////////////////////////////////
  equation
    F_g = m * g;
    PortMasse.F = F_g + F_t;
    F_t=m*a;
    der(v) = a;
    der(s_masse) = v;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  annotation(
      Icon(graphics = {Rectangle(origin = {0, -21}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{-60, 41}, {60, -39}})}));end Masse;

  model Flaschenzugsystem
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {0, -75}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
    Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {-70, 1}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
    Flaschenzug_V3.Rollensystem rollensystem1(n = 4) annotation(
      Placement(visible = true, transformation(origin = {1.77636e-15, 1}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {0, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(fixpoint1.portFix, rollensystem1.port_fix) annotation(
      Line(points = {{0, 58}, {0, 58}, {0, 20}, {0, 20}}, color = {255, 0, 0}));
    connect(motor1.Port_Motor, rollensystem1.Port_Zug) annotation(
      Line(points = {{-50, 0}, {-18, 0}, {-18, 0}, {-18, 0}}, color = {255, 0, 0}));
    connect(rollensystem1.Port_Last, masse1.PortMasse) annotation(
      Line(points = {{0, -18}, {0, -68}}, color = {255, 0, 0}));
    annotation(
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02));
  end Flaschenzugsystem;

  model Test_einzelRollen
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {-1, 28}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {14, -26}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-1, 83}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
  Flaschenzug_V3.Masse masse2 annotation(
      Placement(visible = true, transformation(origin = {0, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {-64, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(fixpoint2.portFix, rolle_oben.port_links) annotation(
      Line(points = {{-64, 44}, {-64, 44}, {-64, 12}, {-16, 12}, {-16, 12}}, color = {255, 0, 0}));
    connect(masse2.PortMasse, rolle_oben.port_unten) annotation(
      Line(points = {{0, -48}, {-2, -48}, {-2, 6}, {0, 6}}, color = {0, 170, 0}));
    connect(masse1.PortMasse, rolle_oben.port_rechts) annotation(
      Line(points = {{14, -22}, {14, -22}, {14, 12}, {14, 12}}, color = {0, 170, 0}));
    connect(rolle_oben.port_oben, fixpoint1.portFix) annotation(
      Line(points = {{-1, 50}, {-1, 79}}, color = {0, 170, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Test_einzelRollen;

  model Test_2Rollen
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {-1, 28}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {0, -76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten1 annotation(
      Placement(visible = true, transformation(origin = {0, -28}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-1, 83}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
  Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {-62, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(fixpoint2.portFix, rolle_oben.port_links) annotation(
      Line(points = {{-62, 30}, {-62, 30}, {-62, 12}, {-16, 12}, {-16, 12}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_unten, masse1.PortMasse) annotation(
      Line(points = {{0, -51}, {0, -71}}, color = {255, 0, 0}));
    connect(rolle_oben.port_rechts, rolle_unten1.port_rechts) annotation(
      Line(points = {{14, 12}, {14, -1}, {16, -1}, {16, -14}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_links, rolle_oben.port_unten) annotation(
      Line(points = {{-16, -14}, {-16, 6}, {0, 6}}, color = {255, 0, 0}));
    connect(rolle_oben.port_oben, fixpoint1.portFix) annotation(
      Line(points = {{-1, 50}, {-1, 79}}, color = {0, 170, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Test_2Rollen;

  model Test_3Rollen
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {1, 93}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {2, 62}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {-4, 10}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {4, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten2 annotation(
      Placement(visible = true, transformation(origin = {5, -53}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {-64, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(fixpoint2.portFix, rolle_oben.port_links) annotation(
      Line(points = {{-64, 56}, {-64, 56}, {-64, 46}, {-12, 46}, {-12, 48}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_links, rolle_oben1.port_links) annotation(
      Line(points = {{-8, -41}, {-8, -18}, {-13, -18}, {-13, 1}}, color = {255, 0, 0}));
    connect(masse1.PortMasse, rolle_unten2.port_unten) annotation(
      Line(points = {{4, -90}, {5, -90}, {5, -72}}, color = {0, 170, 0}));
    connect(rolle_unten2.port_rechts, rolle_oben.port_rechts) annotation(
      Line(points = {{18, -41}, {18, 3}, {16, 3}, {16, 47}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_rechts, rolle_unten2.port_oben) annotation(
      Line(points = {{5, 1}, {5, -36}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_oben, rolle_oben.port_unten) annotation(
      Line(points = {{-4, 23}, {-4, 38.5}, {2, 38.5}, {2, 42}}, color = {0, 170, 0}));
    connect(fixpoint1.portFix, rolle_oben.port_oben) annotation(
      Line(points = {{1, 90}, {1, 85}, {2, 85}, {2, 82}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_3Rollen;

  model Test_4Rollen
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {1, 93}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {1, 61}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {1, 19}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {2, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten2 annotation(
      Placement(visible = true, transformation(origin = {3, -53}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  Flaschenzug_V3.Rolle_unten rolle_unten1 annotation(
      Placement(visible = true, transformation(origin = {4, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {-58, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(fixpoint2.portFix, rolle_oben.port_links) annotation(
      Line(points = {{-58, 48}, {-58, 48}, {-58, 40}, {-14, 40}, {-14, 46}, {-14, 46}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_rechts, rolle_oben.port_rechts) annotation(
      Line(points = {{17, -40}, {17, 3}, {15, 3}, {15, 46}}, color = {255, 0, 0}));
    connect(masse1.PortMasse, rolle_unten2.port_unten) annotation(
      Line(points = {{2, -85}, {3, -85}, {3, -74}}, color = {0, 170, 0}));
    connect(rolle_unten2.port_links, rolle_oben1.port_links) annotation(
      Line(points = {{-11, -40}, {-11, -18}, {-8, -18}, {-8, 9}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_unten, rolle_unten2.port_oben) annotation(
      Line(points = {{4, -30}, {2.5, -30}, {2.5, -34}, {3, -34}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_links, rolle_oben1.port_unten) annotation(
      Line(points = {{-2, -14}, {-2, -14}, {-2, 0}, {0, 0}, {0, 6}, {2, 6}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_rechts, rolle_unten1.port_rechts) annotation(
      Line(points = {{10, 8}, {10, -14}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_oben, rolle_oben.port_unten) annotation(
      Line(points = {{1, 32.5}, {1, 40}}, color = {0, 170, 0}));
    connect(fixpoint1.portFix, rolle_oben.port_oben) annotation(
      Line(points = {{1, 90}, {1, 82}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_4Rollen;
end Flaschenzug_V3;
