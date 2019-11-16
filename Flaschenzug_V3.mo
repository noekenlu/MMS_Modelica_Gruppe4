package Flaschenzug_V3
  connector Port1
    /////////////////////////////////
    Modelica.SIunits.Length s "Weg";
    flow Modelica.SIunits.Force F "Kraft";
    /////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {0, 170, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Solid, points = {{0, 100}, {-100, -100}, {100, -100}, {0, 100}, {0, 100}})}));
  end Port1;

  connector Port2
    /////////////////////////////////
    Modelica.SIunits.Length s "Weg";
    flow Modelica.SIunits.Force F "Kraft";
    /////////////////////////////////
    annotation(
      Diagram,
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 100}, {100, 100}, {0, -100}, {0, -100}, {-100, 100}})}));
  end Port2;

  connector Port_Rolle_Seilanschluss
    /////////////////////////////////
    Modelica.SIunits.Length s "Weg";
    flow Modelica.SIunits.Force F "Kraft";
    /////////////////////////////////
    annotation(
      Diagram,
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 40}, {0, 100}, {100, 40}, {100, 40}, {-100, 40}}), Polygon(origin = {-40, -70}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-60, 30}, {40, -30}, {140, 30}, {140, 30}, {-60, 30}}), Rectangle(origin = {-10, 0}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-90, 40}, {110, -40}})}));
  end Port_Rolle_Seilanschluss;

  connector Port_Drehmoment_und_Drehzahl
    /////////////////////////////////////////
    flow Modelica.SIunits.Torque T "Drehmoment";
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
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    constant Real pi = Modelica.Constants.pi "Pi";
    Modelica.SIunits.Force F_z "Motorkraft";
    Modelica.SIunits.Acceleration a "Beschleunigung";
    Modelica.SIunits.Velocity v "Geschwindigkeit";
    Modelica.SIunits.Length s_Motor = Port_Motor.s "Weg des Seils, das durch den Motor läuft";
    Modelica.SIunits.Power P "elektrische Leistung in Watt";
    Modelica.SIunits.Current I "Strom in Ampere";
    Modelica.SIunits.Current I_a "Ankerstrom";
    Modelica.SIunits.Voltage U_a "Ankerspannung";
    Modelica.SIunits.Voltage U_g "induzierte Spannung";
    parameter Modelica.SIunits.Inductance L_a = 1.6e-3 "Ankerinduktivität";
    parameter Modelica.SIunits.Resistance R_a = 7.19 "Ankerwiderstand";
    parameter Real kt = 126e-3 "Drehmomentenkonstante";
    parameter Real ke = 79e-2 "Spannungskonstante";
    Modelica.SIunits.Torque M_e "elektrisches Drehmoment";
    Modelica.SIunits.Torque M_L "Lastmoment";
    parameter Modelica.SIunits.Frequency n "Drehzahl in 1/s";
    parameter Modelica.SIunits.Voltage U = 230 "Spannung in Volt";
    parameter Modelica.SIunits.Length r = 0.01 "Radius Motorwelle in m";
    /////////////////////////////////////////////////
    Flaschenzug_V3.Port2 Port_Motor annotation(
      Placement(visible = true, transformation(origin = {2, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86, 0}, extent = {{-8, -8}, {8, 8}}, rotation = 90)));
    /////////////////////////////////////////////////
  equation
    U_a = 48 * sin(time);
//Hier eventuell stattdessen aus PWM auslesen
    M_e = kt * I_a;
    U_g = ke * n;
    M_e = M_L;
    U_a = R_a * I_a + L_a * der(I_a) + U_g;
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
    parameter Real i = 20                         "Übersetzung";
    Modelica.SIunits.Frequency n_M = port_an.n    "Drehzahl Motor";
    Modelica.SIunits.Frequency n_ab = port_ab.n   "Drehzahl nach Getriebe";
    Modelica.SIunits.Torque T_ab = port_ab.T      "Moment nach Getriebe";
    Modelica.SIunits.Torque T_M = port_an.T       "Moment Motor";
    
      Port_Drehmoment_und_Drehzahl port_an annotation(
      Placement(visible = true, transformation(origin = {-18, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-18, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Port_Drehmoment_und_Drehzahl port_ab annotation(
      Placement(visible = true, transformation(origin = {20, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {20, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  equation
    i = n_M / n_ab;
    i = T_ab / T_M;
    annotation(
      Icon(graphics = {Ellipse(origin = {-18, -14}, fillPattern = FillPattern.Solid, extent = {{-16, 16}, {16, -16}}, endAngle = 360), Ellipse(origin = {-18, -14}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {-16, 3}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-16, -33}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {1, -12}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-35, -12}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-25, 2}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-32, -4}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-34, -20}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-6, -30}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-29, -28}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-10, 4}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-2, -2}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {0, -22}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {7, -2}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {1.77636e-15, 6}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {20, 14}, fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}, endAngle = 360), Rectangle(origin = {41, 4}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {34, -4}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-1, 16}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {43, 16}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {22, -9}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {20, 14}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {38, 28}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {2, 26}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {43, 45}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{2, 14}, {6, 20}}), Rectangle(origin = {11, 34}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {22, 35}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}})}, coordinateSystem(initialScale = 0.1)));
  end Getriebe;

  class Seilwinde
    Modelica.SIunits.Torque M_G = port_T_n.T      "Moment vom Getriebe";
    Modelica.SIunits.Frequency n_G = port_T_n.n   "Drehzahl vom Getriebe";
    Modelica.SIunits.Frequency omega_G            "Winkelgeschwindigkeit vom Getriebe";
    
    Modelica.SIunits.Force F_S = port_F_s.F       "Kraft vom Seil";
    Modelica.SIunits.Length s_S = port_F_s.s      "Weg vom Seil";
    Modelica.SIunits.Velocity v_S                 "Geschwindigkeit vom Seil";
    
    parameter Real D_SW = 0.1                     "Durchmesser Seilwinde";
    
    
      Flaschenzug_V3.Port2 port_F_s annotation(
      Placement(visible = true, transformation(origin = {36, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {38, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
      Flaschenzug_V3.Port_Drehmoment_und_Drehzahl port_T_n annotation(
      Placement(visible = true, transformation(origin = {-68, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  equation
    M_G = F_S * (D_SW / 2);                       //Moment = Kraft * Hebelarm
    v_S = omega_G * (D_SW / 2);                   //Geschwindigkeit = Winkelgeschwindigkeit * Radius
    der(s_S) = v_S;                               //Geschwindigkeit = abgeleiteter Weg
    
   
    annotation(
      Icon(graphics = {Rectangle(origin = {-61, -10}, fillPattern = FillPattern.Solid, extent = {{-3, 36}, {3, -44}}), Rectangle(origin = {65, -10}, fillPattern = FillPattern.Solid, extent = {{-3, 36}, {3, -44}}), Rectangle(origin = {31, 50}, fillPattern = FillPattern.Solid, extent = {{-89, -36}, {31, -44}}), Rectangle(origin = {31, 2}, fillPattern = FillPattern.Solid, extent = {{-89, -36}, {31, -44}}), Rectangle(origin = {9, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {21, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {33, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {45, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {57, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {69, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {-5, 30}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {37, -44}})}, coordinateSystem(initialScale = 0.1)));
  end Seilwinde;

  model Rollensystem
    parameter Real n = 2;
    ////////////////////////////////////////////////////////
    Flaschenzug_V3.Port1 Port_Zug annotation(
      Placement(visible = true, transformation(origin = {0, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port2 Port_Last annotation(
      Placement(visible = true, transformation(origin = {0, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ////////////////////////////////////////////////////////
  equation
    Port_Zug.F = Port_Last.F / n;
    Port_Last.s = Port_Zug.s / n;
////////////////////////////////////////////////////
    annotation(
      Icon(graphics = {Ellipse(fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-80, 80}, {80, -80}}, endAngle = 360), Text(origin = {2, 4}, extent = {{-56, 38}, {56, -38}}, textString = "Rollensystem")}, coordinateSystem(initialScale = 0.1)));
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
    parameter Modelica.SIunits.Mass m = 0 "Masse Rolle";
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    Modelica.SIunits.Force F_g "Gewichtskraft";
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
    parameter Modelica.SIunits.Mass m = 0 "Masse Rolle";
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    Modelica.SIunits.Force F_g "Gewichtskraft";
    ////////////////////////////////////////////////////////////////
  equation
    F_g = m * g;
    port_rechts.F = port_links.F;
    port_rechts.F + port_links.F + port_oben.F = port_unten.F;
    (port_rechts.s + port_links.s) / 2 = port_unten.s;
//port_links.s=....!
//  port_oben.F = port_unten.F;
    port_oben.s = port_unten.s;
//////////////////////////////////////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Ellipse(origin = {1, -9}, fillColor = {252, 252, 252}, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-61, 61}, {59, -59}}, endAngle = 360), Rectangle(extent = {{-10, 80}, {-10, 80}}), Rectangle(extent = {{-8, 82}, {-8, 82}}), Rectangle(origin = {-4, 13}, lineColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{10, 61}, {-2, -103}}), Ellipse(origin = {1, -11}, fillPattern = FillPattern.Solid, extent = {{-21, 23}, {19, -17}}, endAngle = 360), Rectangle(origin = {-55, 41}, fillPattern = FillPattern.Solid, extent = {{-7, 11}, {-9, -49}}), Rectangle(origin = {63, 21}, fillPattern = FillPattern.Solid, extent = {{-1, 31}, {1, -31}}), Rectangle(origin = {31, -8}, fillPattern = FillPattern.Solid, extent = {{-1, 20}, {3, -20}}), Polygon(origin = {0, -8}, points = {{-78, -48}, {-78, -48}, {-78, -48}}), Polygon(origin = {38, 22}, fillPattern = FillPattern.Solid, points = {{-6, 6}, {-12, -10}, {0, -10}, {-6, 6}}), Polygon(origin = {38, -16}, fillPattern = FillPattern.Solid, points = {{-6, -26}, {-12, -10}, {0, -10}, {-6, -26}})}),
      experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Rolle_unten;

  model Masse
    /////////////////////////////////////////////////////////
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    Modelica.SIunits.Length s_masse = PortMasse.s "Von der Masse zurückgelegter Weg";
    Modelica.SIunits.Force F_g "Gewichtskraft";
    Modelica.SIunits.Force F_t "Trägheitskraft";
    Modelica.SIunits.Force F_ges = PortMasse.F "Gesamtkraft an der Masse";
    Modelica.SIunits.Acceleration a "Beschleunigung Masse";
    Modelica.SIunits.Velocity v "Geschwindigkeit Masse";
    /////////////////////////////////////////////////////////
    parameter Modelica.SIunits.Mass m = 12 "Masse";
    /////////////////////////////////////////////////////////
    Flaschenzug_V3.Port1 PortMasse annotation(
      Placement(visible = true, transformation(origin = {0, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ///////////////////////////////////////////////////////
  equation
    F_g = m * g;
    PortMasse.F = -(F_g + F_t);
    PortMasse.s = sin(time);
    der(v) = a;
    der(s_masse) = v;
    if a > 0 then
      F_t = m * a;
    else
      F_t = m * a;
    end if annotation(
      Icon(graphics = {Polygon(origin = {0, -20}, fillColor = {154, 154, 154}, fillPattern = FillPattern.Solid, points = {{-40, 40}, {40, 40}, {60, -40}, {-60, -40}, {-40, 40}}), Text(origin = {1, -16}, extent = {{-29, 22}, {29, -22}}, textString = "m")}, coordinateSystem(initialScale = 0.1)),
      experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
  annotation(
      Icon(graphics = {Rectangle(origin = {3, -20}, fillColor = {176, 176, 176}, fillPattern = FillPattern.Solid, extent = {{-43, 40}, {37, -40}}), Text(origin = {1, -18}, extent = {{35, 12}, {-35, -12}}, textString = "m")}));end Masse;

  model Flaschenzugsystem
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {0, -75}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
    Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {-26, 65}, extent = {{-33, -33}, {33, 33}}, rotation = 0)));
    Flaschenzug_V3.Rollensystem rollensystem1(n = 4) annotation(
      Placement(visible = true, transformation(origin = {0, -9}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  equation
    connect(rollensystem1.Port_Zug, motor1.Port_Motor) annotation(
      Line(points = {{0, 10}, {0, 38.5}, {2, 38.5}, {2, 65}}, color = {0, 170, 0}));
    connect(rollensystem1.Port_Last, masse1.PortMasse) annotation(
      Line(points = {{0, -28}, {0, -68}}, color = {255, 0, 0}));
    annotation(
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02));
  end Flaschenzugsystem;

  model Test_einzelRollen
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {-1, 28}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {0, -76}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {-78, -50}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten1 annotation(
      Placement(visible = true, transformation(origin = {0, -28}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-1, 83}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
  equation
    connect(rolle_unten1.port_unten, masse1.PortMasse) annotation(
      Line(points = {{0, -51}, {0, -71}}, color = {255, 0, 0}));
    connect(rolle_oben.port_rechts, rolle_unten1.port_rechts) annotation(
      Line(points = {{14, 12}, {14, -1}, {16, -1}, {16, -14}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_links, rolle_oben.port_unten) annotation(
      Line(points = {{-16, -14}, {-16, 6}, {0, 6}}, color = {255, 0, 0}));
    connect(rolle_oben.port_oben, fixpoint1.portFix) annotation(
      Line(points = {{-1, 50}, {-1, 79}}, color = {0, 170, 0}));
    connect(motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-58, -50}, {-36, -50}, {-36, 12}, {-16, 12}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Test_einzelRollen;

  model Test_3Rollen
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {1, 93}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {-68, 28}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {2, 62}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {-4, 10}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {4, -94}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten2 annotation(
      Placement(visible = true, transformation(origin = {5, -53}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  equation
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
    connect(motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-47, 28}, {-12, 28}, {-12, 47}}, color = {255, 0, 0}));
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
    Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {-68, 28}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
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
  equation
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
    connect(motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-47, 28}, {-13, 28}, {-13, 46}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_4Rollen;

  model EMotor
    //////////////////////////////////////////////////
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    constant Real pi = Modelica.Constants.pi "Pi";
    
    Modelica.SIunits.Current I_a                                      "Ankerstrom";
    Modelica.SIunits.Voltage U_a                                      "Ankerspannung";
    Modelica.SIunits.Voltage U_g                                      "induzierte Spannung";
    parameter Modelica.SIunits.Inductance L_a = 1.6e-3                "Ankerinduktivität";
    parameter Modelica.SIunits.Resistance R_a = 7.19                  "Ankerwiderstand";
    parameter Real kt = 126e-3                                        "Drehmomentenkonstante";
    parameter Real ke = 79e-2                                         "Spannungskonstante";
    Modelica.SIunits.Torque M_e                                       "elektrisches Drehmoment";
    Modelica.SIunits.Torque M_L = port_Drehmoment_und_Drehzahl1.T     "Lastmoment in Nm";
    Modelica.SIunits.Frequency n = port_Drehmoment_und_Drehzahl1.n    "Drehzahl in 1/s";
    parameter Modelica.SIunits.Inertia J_tot = 202e-7                 "resultierende Trägheit am Motor in kg/m^2";
    Modelica.SIunits.Frequency omega                                  "Rotorkreisfrequenz";
    
  
    
    /////////////////////////////////////////////////
    Flaschenzug_V3.Port_Drehmoment_und_Drehzahl port_Drehmoment_und_Drehzahl1 annotation(
      Placement(visible = true, transformation(origin = {82, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {64, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    /////////////////////////////////////////////////
  
  equation
    U_a = 48 * sin(time);     //Hier eventuell stattdessen aus PWM auslesen
    M_e = kt * I_a;
    U_g = ke * n;
    omega = 2*pi*n;
    M_e = J_tot*der(omega) + M_L;
    U_a = R_a * I_a + L_a * der(I_a) + U_g;
    
////////////////////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {-20, 41}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {32, 14}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {84, 13}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {-26, -3}}), Polygon(origin = {-52, 0}, rotation = 180, fillPattern = FillPattern.Solid, points = {{12, 16}, {12, -44}, {18, -44}, {28, -34}, {28, 6}, {18, 16}, {12, 16}}), Rectangle(origin = {-20, 31}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, 9}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, -3}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, -13}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, 19}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {-20, -28}, rotation = 90, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {-18, -33}, fillPattern = FillPattern.Solid, extent = {{-52, 3}, {50, -3}})}));
  end EMotor;

  model Test_EMotor
  Flaschenzug_V3.EMotor eMotor1 annotation(
      Placement(visible = true, transformation(origin = {-73, -1}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  Flaschenzug_V3.Getriebe getriebe1 annotation(
      Placement(visible = true, transformation(origin = {-39, 3}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  Flaschenzug_V3.Seilwinde seilwinde1 annotation(
      Placement(visible = true, transformation(origin = {-7, 9}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {20, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {10, 48}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {10, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(rolle_oben1.port_oben, fixpoint1.portFix) annotation(
      Line(points = {{10, 61}, {10, 75}}, color = {0, 170, 0}));
    connect(seilwinde1.port_F_s, rolle_oben1.port_links) annotation(
      Line(points = {{0, 24}, {1, 24}, {1, 39}}, color = {255, 0, 0}));
    connect(masse1.PortMasse, rolle_oben1.port_rechts) annotation(
      Line(points = {{20, -12}, {20, 20}, {19, 20}, {19, 39}}, color = {0, 170, 0}));
    connect(seilwinde1.port_T_n, getriebe1.port_ab) annotation(
      Line(points = {{-20, 6}, {-28, 6}, {-28, 7}, {-34, 7}}, color = {0, 85, 255}));
    connect(eMotor1.port_Drehmoment_und_Drehzahl1, getriebe1.port_an) annotation(
      Line(points = {{-58, -2}, {-44, -2}, {-44, -1}}, color = {0, 85, 255}));
  end Test_EMotor;

  model Test_EMotor_Rollensystem
  Flaschenzug_V3.EMotor eMotor1 annotation(
      Placement(visible = true, transformation(origin = {-68, -10}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
  Flaschenzug_V3.Getriebe getriebe1 annotation(
      Placement(visible = true, transformation(origin = {-33, -3}, extent = {{-27, -27}, {27, 27}}, rotation = 0)));
  Flaschenzug_V3.Seilwinde seilwinde1 annotation(
      Placement(visible = true, transformation(origin = {3, 5}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  Flaschenzug_V3.Rollensystem rollensystem1 annotation(
      Placement(visible = true, transformation(origin = {56, -2}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {55, -55}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  equation
    connect(rollensystem1.Port_Last, masse1.PortMasse) annotation(
      Line(points = {{56, -24}, {56, -24}, {56, -48}, {56, -48}}, color = {255, 0, 0}));
    connect(seilwinde1.port_F_s, rollensystem1.Port_Zug) annotation(
      Line(points = {{10, 20}, {56, 20}}, color = {255, 0, 0}));
    connect(seilwinde1.port_T_n, getriebe1.port_ab) annotation(
      Line(points = {{-12, 2}, {-28, 2}, {-28, 0}, {-28, 0}}, color = {0, 85, 255}));
    connect(eMotor1.port_Drehmoment_und_Drehzahl1, getriebe1.port_an) annotation(
      Line(points = {{-54, -6}, {-40, -6}, {-40, -6}, {-38, -6}}, color = {0, 85, 255}));
  end Test_EMotor_Rollensystem;
end Flaschenzug_V3;
