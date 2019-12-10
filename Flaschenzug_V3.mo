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

  model Test_Motor
    //////////////////////////////////////////////////
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    constant Real pi = Modelica.Constants.pi "Pi";
    Modelica.SIunits.Force F_z "Motorkraft";
    Modelica.SIunits.Acceleration a "Beschleunigung";
    Modelica.SIunits.Velocity v "Geschwindigkeit";
    Modelica.SIunits.Length s_Motor = Port_Motor.s "Weg des Seils, das durch den Motor läuft";
    Modelica.SIunits.Torque M = port_Drehmoment_und_Drehzahl1.T       "Lastmoment in Nm";
    Modelica.SIunits.Frequency f = port_Drehmoment_und_Drehzahl1.n    "Drehzahl in 1/s";
    
    parameter Real D = 0.318                     "Durchmesser Seilwinde";
    /////////////////////////////////////////////////
    Flaschenzug_V3.Port2 Port_Motor annotation(
      Placement(visible = true, transformation(origin = {2, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88, 0}, extent = {{-8, -8}, {8, 8}}, rotation = 90)));
      Flaschenzug_V3.Port_Drehmoment_und_Drehzahl port_Drehmoment_und_Drehzahl1 annotation(
      Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-88, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    /////////////////////////////////////////////////
  equation
    Port_Motor.F = F_z;
    der(v) = a;
    der(Port_Motor.s) = v;
    
    f=der(Port_Motor.s)/(pi*D);
//  Port_Motor.s = sin(time);
//  Port_Motor.s=12;
//  Port_Motor.s= 0.68*atan(2*time);
//  Port_Motor.s = 3*(sin(0.1*time))^2;
    Port_Motor.s=1*time;
////////////////////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {0, 27}, fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {52, 0}, fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {104, -1}, fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {-26, -3}}), Polygon(origin = {-52, 0}, rotation = 180, fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {0, -27}, fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {0, -42}, rotation = 90, fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {2, -47}, fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-52, 3}, {50, -3}}), Text(origin = { 4, 6}, extent = {{20, 62}, {-30, -72}}, textString = "TEST"), Rectangle(origin = {-38, -1}, fillColor = {255, 85, 0}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {-26, -3}})}));
  end Test_Motor;

  model EMotor
    //////////////////////////////////////////////////
    //Konstanten
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    constant Real pi = Modelica.Constants.pi "Pi";
    //Parameter
    /*
            parameter Modelica.SIunits.Inductance L_a = 1.6e-3                           "Ankerinduktivität";
            parameter Modelica.SIunits.Resistance R_a = 7.19                              "Ankerwiderstand";
            parameter Modelica.SIunits.VoltageSecond ke = 79e-2                           "Spannungskonstante";
            parameter Modelica.SIunits.Inertia J_tot = 10e-2         "resultierende Trägheit am Motor in kg/m^2";
            parameter Modelica.SIunits.Voltage U_a = 48                                   "Ankerspannung";
            */
    parameter Modelica.SIunits.Inductance L_a = 6.2e-4 "Ankerinduktivität";
    parameter Modelica.SIunits.Resistance R_a = 0.62 "Ankerwiderstand";
    parameter Modelica.SIunits.VoltageSecond ke = 8 "Spannungskonstante";
    parameter Modelica.SIunits.Inertia J_tot = 2.16e-2 "resultierende Trägheit am Motor in kg/m^2";
    parameter Modelica.SIunits.Voltage U_a = 48 "Ankerspannung";
    //Variablen
    Modelica.SIunits.Current I_a(start = 1) "Ankerstrom";
    Modelica.SIunits.Voltage U_g "induzierte Spannung";
    Modelica.SIunits.Torque M_e "elektrisches Drehmoment";
    Modelica.SIunits.Torque M_L = port_Drehmoment_und_Drehzahl1.T "Lastmoment in Nm";
    Modelica.SIunits.Frequency f = -port_Drehmoment_und_Drehzahl1.n "Drehzahl in 1/s";
    Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm n "Drehzahl in 1/min";
    Modelica.SIunits.Frequency omega "Rotorkreisfrequenz";
    Modelica.SIunits.ElectricalTorqueConstant kt "Drehmomentenkonstante";
    Flaschenzug_V3.Port_Drehmoment_und_Drehzahl port_Drehmoment_und_Drehzahl1 annotation(
      Placement(visible = true, transformation(origin = {60, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {66, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    n = f * 60;
//in 1/min
    omega = 2 * pi * f;
    kt = ke / (2 * pi);
    U_a = R_a * I_a + L_a * der(I_a) + U_g;
    U_g = ke * f;
    M_e = kt * I_a;
    M_e = J_tot * der(omega) + M_L;
////////////////////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {-20, 41}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {32, 14}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {84, 13}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {-26, -3}}), Polygon(origin = {-52, 0}, rotation = 180, fillPattern = FillPattern.Solid, points = {{12, 16}, {12, -44}, {18, -44}, {28, -34}, {28, 6}, {18, 16}, {12, 16}}), Rectangle(origin = {-20, 31}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, 9}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, -3}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, -13}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, 19}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {-20, -28}, rotation = 90, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {-18, -33}, fillPattern = FillPattern.Solid, extent = {{-52, 3}, {50, -3}})}));
  end EMotor;
  class Getriebe
    parameter Real i = 20;      //Übersetzung
    Real X;                                    
      Flaschenzug_V3.Port_Drehmoment_und_Drehzahl Port_in annotation(
      Placement(visible = true, transformation(origin = {-72, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Flaschenzug_V3.Port_Drehmoment_und_Drehzahl Port_out annotation(
      Placement(visible = true, transformation(origin = {64, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));                                           //Moment Motor
  equation
  
  X=1/i;
  /*
    i = Port_in.n  / Port_out.n;
    i = Port_out.T / Port_in.T;
    */
    
    Port_out.n=Port_in.n*X;
    Port_out.T = Port_in.T*i;
    
    
    annotation(
      Icon(graphics = {Ellipse(origin = {-20, -12}, fillPattern = FillPattern.Solid, extent = {{-16, 16}, {16, -16}}, endAngle = 360), Ellipse(origin = {-20, -12}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {-18, 5}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-18, -31}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-1, -10}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-37, -10}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-27, 4}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-34, -2}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-36, -18}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-8, -28}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-31, -26}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-12, 6}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-4, 0}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-2, -20}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {9, -12}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {2, -4}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {22, 4}, fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}, endAngle = 360), Rectangle(origin = {43, -6}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {36, -14}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {1, 6}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {45, 6}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {24, -19}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {22, 4}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {40, 18}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {4, 16}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {45, 35}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{2, 14}, {6, 20}}), Rectangle(origin = {13, 24}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {24, 25}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-6, 5}, lineThickness = 1, extent = {{-54, 35}, {66, -45}}), Line(origin = {-33, 28}, points = {{-11, 0}, {11, 0}}, thickness = 2), Polygon(origin = {-17, 28}, fillPattern = FillPattern.Solid, points = {{-5, 4}, {-5, -4}, {5, 0}, {-5, 4}, {-5, 4}})}, coordinateSystem(initialScale = 0.1)));
  end Getriebe;

  model Rollensystem
    parameter Real n = 4;
    Flaschenzug_V3.Port1 Port_Zug annotation(
      Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    Flaschenzug_V3.Port2 Port_Last annotation(
      Placement(visible = true, transformation(origin = {0, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port1 port_fix annotation(
      Placement(visible = true, transformation(origin = {0, 88}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////
  equation
    Port_Zug.F = Port_Last.F / n;
    Port_Last.s = (Port_Zug.s / n) + port_fix.s;
    port_fix.F = Port_Zug.F + Port_Last.F; ////////////////////////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(lineThickness = 1, extent = {{-80, 80}, {80, -80}}), Ellipse(origin = {0, 39}, lineThickness = 2, extent = {{-18, 19}, {18, -17}}, endAngle = 360), Ellipse(origin = {-1, 41}, fillPattern = FillPattern.Solid, extent = {{-5, 5}, {7, -7}}, endAngle = 360), Line(origin = {0, 40}, points = {{0, 24}, {0, -24}}, thickness = 2), Ellipse(origin = {0, -41}, lineThickness = 2, extent = {{-18, 19}, {18, -17}}, endAngle = 360), Line(origin = {0.0241639, -40.6258}, points = {{0, 24}, {0, -24}}, thickness = 2), Line(origin = {-49, 21}, points = {{37, 33}, {-7, -19}}, thickness = 1), Line(origin = {13.403, 5.76893}, points = {{5, 35}, {5, -45}}, thickness = 1), Line(origin = {-23.1774, 3.73566}, points = {{5, 35}, {5, -45}}, thickness = 1), Line(origin = {-18.7797, 2.88865}, points = {{19, 9}, {1, -37}}, thickness = 1), Ellipse(origin = {-1, -39}, fillPattern = FillPattern.Solid, extent = {{-5, 5}, {7, -7}}, endAngle = 360), Rectangle(origin = {0, 14}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {0, -14}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Line(origin = {-0.850407, 25.2231}, points = {{19, 9}, {1, -37}}, thickness = 1), Rectangle(origin = {0, 66}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {0, -66}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {-58, 0}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}})}));
  end Rollensystem;

  model Rolle_oben
    Flaschenzug_V3.Port2 port_unten annotation(
      Placement(visible = true, transformation(origin = {-4, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_links annotation(
      Placement(visible = true, transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-63, -63}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_rechts annotation(
      Placement(visible = true, transformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {63, -65}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    Flaschenzug_V3.Port1 port_oben annotation(
      Placement(visible = true, transformation(origin = {-10, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    //////////////////////////////////////////////////////////////////
    parameter Modelica.SIunits.Mass m = 0 "Masse Rolle";
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    Modelica.SIunits.Force F_g "Gewichtskraft";
    Modelica.SIunits.Force F_t "Trägheitskraft";
    Modelica.SIunits.Force F_ges "Gesamtkraft durch Masse";
    Modelica.SIunits.Acceleration a "Beschleunigung Rolle trans.";
    Modelica.SIunits.Velocity v "Geschwindigkeit Rolle trans.";
    Modelica.SIunits.Length s "Weg Rolle trans.";
    ////////////////////////////////////////////////////////////////
  equation
    F_ges = F_t + F_g;
    F_g = m * g;
    F_t = m * a;
    port_rechts.F = port_links.F;
    port_rechts.F + port_links.F + port_oben.F - F_ges = -port_unten.F;
    (port_rechts.s + port_links.s) / 2 = s;
    s = port_oben.s;
    s = port_unten.s;
    der(v) = a;
    der(s) = v;
//////////////////////////////////////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Ellipse(origin = {1, -9}, fillColor = {252, 252, 252}, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-61, 61}, {59, -59}}, endAngle = 360), Rectangle(extent = {{-10, 80}, {-10, 80}}), Rectangle(extent = {{-8, 82}, {-8, 82}}), Rectangle(origin = {-4, 13}, lineColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{10, 61}, {-2, -103}}), Ellipse(origin = {1, -11}, fillPattern = FillPattern.Solid, extent = {{-21, 23}, {19, -17}}, endAngle = 360), Rectangle(origin = {-55, -13}, fillPattern = FillPattern.Solid, extent = {{-7, 11}, {-9, -49}}), Rectangle(origin = {63, -31}, fillPattern = FillPattern.Solid, extent = {{-1, 31}, {1, -31}}), Rectangle(origin = {31, -8}, fillPattern = FillPattern.Solid, extent = {{-1, 20}, {3, -20}}), Polygon(origin = {0, -8}, points = {{-78, -48}, {-78, -48}, {-78, -48}}), Polygon(origin = {38, 22}, fillPattern = FillPattern.Solid, points = {{-6, 6}, {-12, -10}, {0, -10}, {-6, 6}}), Polygon(origin = {38, -16}, fillPattern = FillPattern.Solid, points = {{-6, -26}, {-12, -10}, {0, -10}, {-6, -26}})}),
      experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
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
    parameter Modelica.SIunits.Mass m = 10 "Masse Rolle";
    constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
    Modelica.SIunits.Force F_g "Gewichtskraft";
    Modelica.SIunits.Force F_t "Trägheitskraft";
    Modelica.SIunits.Force F_ges "Gesamtkraft durch Masse";
    Modelica.SIunits.Acceleration a "Beschleunigung Rolle trans.";
    Modelica.SIunits.Velocity v "Geschwindigkeit Rolle trans.";
    Modelica.SIunits.Length s "Weg Rolle trans.";
    ////////////////////////////////////////////////////////////////
  equation
    F_ges = F_t + F_g;
    F_g = m * g;
    F_t = m * a;
    port_rechts.F = port_links.F;
    port_rechts.F + port_links.F + port_oben.F - F_ges = -port_unten.F;
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

  class Seilwinde
    constant Real pi = Modelica.Constants.pi "Pi";
    Modelica.SIunits.Frequency f = port_rot.n "Drehzahl in 1/s";
    Modelica.SIunits.Torque M = port_rot.T "Lastmoment in Nm";
    parameter Real D = 0.1 "Durchmesser Seilwinde";
    Flaschenzug_V3.Port1 port_trans annotation(
      Placement(visible = true, transformation(origin = {38, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {37, 75}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
    Port_Drehmoment_und_Drehzahl port_rot annotation(
      Placement(visible = true, transformation(origin = {-70, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    f = der(port_trans.s) / (pi * D);
    M = port_trans.F * (D / 2);
    annotation(
      Icon(graphics = {Rectangle(origin = {-61, -10}, fillPattern = FillPattern.Solid, extent = {{-3, 36}, {3, -44}}), Rectangle(origin = {65, -10}, fillPattern = FillPattern.Solid, extent = {{-3, 36}, {3, -44}}), Rectangle(origin = {31, 50}, fillPattern = FillPattern.Solid, extent = {{-89, -36}, {31, -44}}), Rectangle(origin = {31, 2}, fillPattern = FillPattern.Solid, extent = {{-89, -36}, {31, -44}}), Rectangle(origin = {9, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {21, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {33, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {45, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {57, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {69, -46}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {-5, 30}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {37, -44}})}, coordinateSystem(initialScale = 0.1)));
  end Seilwinde;

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
    PortMasse.F = F_g + F_t;
    F_t = m * a;
    der(v) = a;
    der(s_masse) = v;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    annotation(
      Icon(graphics = {Rectangle(origin = {0, -21}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{-60, 41}, {60, -39}})}));
  end Masse;

  model Flaschenzugsystem
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {0, -75}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
    Flaschenzug_V3.Rollensystem rollensystem1(n = 4) annotation(
      Placement(visible = true, transformation(origin = {1.77636e-15, 1}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {0, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {-65, 1}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  equation
    connect(test_Motor1.Port_Motor, rollensystem1.Port_Zug) annotation(
      Line(points = {{-45, 1}, {-18, 1}, {-18, 2}}, color = {255, 0, 0}));
    connect(fixpoint1.portFix, rollensystem1.port_fix) annotation(
      Line(points = {{0, 58}, {0, 58}, {0, 20}, {0, 20}}, color = {255, 0, 0}));
    connect(rollensystem1.Port_Last, masse1.PortMasse) annotation(
      Line(points = {{0, -18}, {0, -68}}, color = {255, 0, 0}));
    annotation(
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02));
  end Flaschenzugsystem;

  model Test_1Rollen
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {-1, 28}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1(m = 10) annotation(
      Placement(visible = true, transformation(origin = {14, -26}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-1, 81}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
    Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.Masse masse2(m = 10) annotation(
      Placement(visible = true, transformation(origin = {0, -48}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  equation
    connect(rolle_oben.port_unten, masse2.PortMasse) annotation(
      Line(points = {{0, 6}, {0, 6}, {0, -44}, {0, -44}}, color = {255, 0, 0}));
    connect(test_Motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-41, 0}, {-16, 0}, {-16, 12}}, color = {255, 0, 0}));
    connect(rolle_oben.port_oben, fixpoint1.portFix) annotation(
      Line(points = {{-1, 50}, {-1, 78}}, color = {0, 170, 0}));
    connect(masse1.PortMasse, rolle_oben.port_rechts) annotation(
      Line(points = {{14, -22}, {14, -22}, {14, 12}, {14, 12}}, color = {0, 170, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Test_1Rollen;

  model Test_2Rollen
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {-1, 40}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {-1, -83}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten1(m = 0)  annotation(
      Placement(visible = true, transformation(origin = {-1, -29}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-1, 83}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
  Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {-74, 10}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
  equation
    connect(rolle_unten1.port_unten, masse1.PortMasse) annotation(
      Line(points = {{-1, -51.5}, {-1, -78}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_links, rolle_oben.port_unten) annotation(
      Line(points = {{-16, -16}, {-16, -16}, {-16, 4}, {0, 4}, {0, 16}, {0, 16}}, color = {255, 0, 0}));
    connect(rolle_oben.port_oben, fixpoint1.portFix) annotation(
      Line(points = {{-1, 61}, {-1, 79}}, color = {0, 170, 0}));
    connect(rolle_oben.port_rechts, rolle_unten1.port_rechts) annotation(
      Line(points = {{15, 23}, {15, -15}}, color = {255, 0, 0}));
    connect(test_Motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-56, 10}, {-17, 10}, {-17, 24}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Test_2Rollen;

  model Test_3Rollen
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {2, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {2, 62}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {2, 20}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {6, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten2(m = 0)  annotation(
      Placement(visible = true, transformation(origin = {6, -46}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {-69, 45}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  equation
    connect(test_Motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-49, 45}, {-48, 45}, {-48, 46}, {-12, 46}, {-12, 48}}, color = {255, 0, 0}));
    connect(fixpoint1.portFix, rolle_oben.port_oben) annotation(
      Line(points = {{2, 88}, {2, 82}}, color = {255, 0, 0}));
  connect(masse1.PortMasse, rolle_unten2.port_unten) annotation(
      Line(points = {{6, -79}, {6, -62}}, color = {0, 170, 0}));
  connect(rolle_unten2.port_rechts, rolle_oben.port_rechts) annotation(
      Line(points = {{17, -36}, {17, 7}, {16, 7}, {16, 47}}, color = {255, 0, 0}));
  connect(rolle_unten2.port_links, rolle_oben1.port_links) annotation(
      Line(points = {{-5, -36}, {-5, -20.5}, {-8, -20.5}, {-8, 10}}, color = {255, 0, 0}));
  connect(rolle_oben1.port_rechts, rolle_unten2.port_oben) annotation(
      Line(points = {{12, 10}, {12, -17.5}, {6, -17.5}, {6, -31}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_oben, rolle_oben.port_unten) annotation(
      Line(points = {{2, 33}, {2, 42}}, color = {0, 170, 0}));
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
      Placement(visible = true, transformation(origin = {2, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten2(m = 0)  annotation(
      Placement(visible = true, transformation(origin = {3, -55}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  Flaschenzug_V3.Rolle_unten rolle_unten1(m = 0)  annotation(
      Placement(visible = true, transformation(origin = {4, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {-75, 33}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  equation
    connect(rolle_unten1.port_unten, rolle_unten2.port_oben) annotation(
      Line(points = {{4, -30}, {2.5, -30}, {2.5, -36}, {3, -36}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_links, rolle_oben1.port_links) annotation(
      Line(points = {{-11, -42}, {-11, -18}, {-8, -18}, {-8, 9}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_rechts, rolle_oben.port_rechts) annotation(
      Line(points = {{17, -42}, {17, 3}, {15, 3}, {15, 46}}, color = {255, 0, 0}));
    connect(masse1.PortMasse, rolle_unten2.port_unten) annotation(
      Line(points = {{2, -87}, {3, -87}, {3, -76}}, color = {0, 170, 0}));
    connect(test_Motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-55, 33}, {-14, 33}, {-14, 46}}, color = {255, 0, 0}));
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

  model Test_Rollen_Mischung1
    Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {-52, 12}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-1, 91}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {2, 0}, extent = {{-12, -12}, {12, 12}}, rotation = 180)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {18, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {-1, 61}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben2 annotation(
      Placement(visible = true, transformation(origin = {10, 26}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  equation
    connect(fixpoint1.portFix, rolle_oben1.port_oben) annotation(
      Line(points = {{-1, 89}, {-1, 75}}, color = {255, 0, 0}));
    connect(test_Motor1.Port_Motor, rolle_oben1.port_links) annotation(
      Line(points = {{-30, 12}, {-12, 12}, {-12, 50}}, color = {255, 0, 0}));
    connect(rolle_oben2.port_oben, rolle_oben1.port_rechts) annotation(
      Line(points = {{10, 36}, {10, 50}}, color = {0, 170, 0}));
    connect(masse1.PortMasse, rolle_oben2.port_rechts) annotation(
      Line(points = {{18, -27}, {18, 18}}, color = {0, 170, 0}));
    connect(fixpoint2.portFix, rolle_oben2.port_links) annotation(
      Line(points = {{2, 1}, {2, 18}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_Rollen_Mischung1;

  model Test_Rollen_Mischung2
    Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {-60, 12}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-21, 79}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {24, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {23, 79}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Flaschenzug_V3.Rolle_unten rolle_unten1(m = 0)  annotation(
      Placement(visible = true, transformation(origin = {1, -7}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  Flaschenzug_V3.Rolle_unten rolle_unten2(m = 0)  annotation(
      Placement(visible = true, transformation(origin = {45, -9}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint3 annotation(
      Placement(visible = true, transformation(origin = {55, 79}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {-21, 51}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben2 annotation(
      Placement(visible = true, transformation(origin = {23, 51}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  equation
    connect(fixpoint2.portFix, rolle_oben2.port_oben) annotation(
      Line(points = {{24, 78}, {24, 78}, {24, 64}, {24, 64}}, color = {255, 0, 0}));
    connect(fixpoint1.portFix, rolle_oben1.port_oben) annotation(
      Line(points = {{-21, 77}, {-21, 65}}, color = {255, 0, 0}));
    connect(test_Motor1.Port_Motor, rolle_oben1.port_links) annotation(
      Line(points = {{-38, 12}, {-32, 12}, {-32, 40}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_links, rolle_oben1.port_rechts) annotation(
      Line(points = {{-10, 2}, {-10, 40}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_links, rolle_oben2.port_rechts) annotation(
      Line(points = {{34, 0}, {34, 40}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_rechts, rolle_oben2.port_links) annotation(
      Line(points = {{12, 2}, {12, 40}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_unten, masse1.PortMasse) annotation(
      Line(points = {{1, -22.3}, {1, -32.3}, {24, -32.3}, {24, -59}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_unten, masse1.PortMasse) annotation(
      Line(points = {{45, -24.3}, {45, -32.6}, {24, -32.6}, {24, -59}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_rechts, fixpoint3.portFix) annotation(
      Line(points = {{55.71, 0.35}, {55.21, 0.35}, {55.21, 0.35}, {54.71, 0.35}, {54.71, 37.85}, {54.71, 37.85}, {54.71, 77.35}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_Rollen_Mischung2;

  model Test_Rollen_Mischung3
    Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {52, -78}, extent = {{26, -26}, {-26, 26}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-19, 91}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {-20, -22}, extent = {{-12, -12}, {12, 12}}, rotation = 180)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {-30, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint3 annotation(
      Placement(visible = true, transformation(origin = {-10, -88}, extent = {{-12, -12}, {12, 12}}, rotation = 180)));
  Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {-19, 67}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben2 annotation(
      Placement(visible = true, transformation(origin = {-9, 17}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben3 annotation(
      Placement(visible = true, transformation(origin = {1, -37}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  equation
    connect(rolle_oben3.port_rechts, test_Motor1.Port_Motor) annotation(
      Line(points = {{12, -48}, {12, -48}, {12, -78}, {30, -78}, {30, -78}}, color = {255, 0, 0}));
    connect(fixpoint3.portFix, rolle_oben3.port_links) annotation(
      Line(points = {{-10, -87}, {-10, -48}}, color = {255, 0, 0}));
    connect(rolle_oben2.port_rechts, rolle_oben3.port_oben) annotation(
      Line(points = {{2, 6}, {2, 6}, {2, -24}, {2, -24}}, color = {255, 0, 0}));
    connect(rolle_oben2.port_links, fixpoint2.portFix) annotation(
      Line(points = {{-20, 6}, {-20, 6}, {-20, -20}, {-20, -20}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_rechts, rolle_oben2.port_oben) annotation(
      Line(points = {{-8, 56}, {-8, 56}, {-8, 30}, {-8, 30}}, color = {255, 0, 0}));
    connect(fixpoint1.portFix, rolle_oben1.port_oben) annotation(
      Line(points = {{-18, 90}, {-20, 90}, {-20, 80}, {-20, 80}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_links, masse1.PortMasse) annotation(
      Line(points = {{-30, 56}, {-30, 30}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_Rollen_Mischung3;

  model Test_Rollen_Mischung4
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-50, 88}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {10, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {-80, 10}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {-10, 88}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint3 annotation(
      Placement(visible = true, transformation(origin = {30, 88}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint4 annotation(
      Placement(visible = true, transformation(origin = {70, 88}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  Flaschenzug_V3.Rolle_unten rolle_unten1 annotation(
      Placement(visible = true, transformation(origin = {-30, -8}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug_V3.Rolle_unten rolle_unten2 annotation(
      Placement(visible = true, transformation(origin = {10, -8}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug_V3.Rolle_unten rolle_unten3 annotation(
      Placement(visible = true, transformation(origin = {50, -8}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug_V3.Fixpoint fixpoint5 annotation(
      Placement(visible = true, transformation(origin = {80, -60}, extent = {{-14, 14}, {14, -14}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben2 annotation(
      Placement(visible = true, transformation(origin = {30, 60}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben3 annotation(
      Placement(visible = true, transformation(origin = {70, 60}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug_V3.Rolle_oben rolle_oben4 annotation(
      Placement(visible = true, transformation(origin = {-50, 60}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  equation
    connect(test_Motor1.Port_Motor, rolle_oben4.port_links) annotation(
      Line(points = {{-62, 10}, {-60, 10}, {-60, 50}}, color = {255, 0, 0}));
    connect(rolle_oben3.port_rechts, fixpoint5.portFix) annotation(
      Line(points = {{80, 50}, {80, 50}, {80, -58}, {80, -58}}, color = {255, 0, 0}));
    connect(rolle_unten3.port_rechts, rolle_oben3.port_links) annotation(
      Line(points = {{60, 0}, {60, 0}, {60, 50}, {60, 50}}, color = {255, 0, 0}));
    connect(rolle_unten3.port_links, rolle_oben2.port_rechts) annotation(
      Line(points = {{40, 0}, {40, 0}, {40, 50}, {40, 50}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_rechts, rolle_oben2.port_links) annotation(
      Line(points = {{20, 0}, {20, 0}, {20, 50}, {20, 50}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_links, rolle_oben4.port_rechts) annotation(
      Line(points = {{-40, 0}, {-40, 0}, {-40, 50}, {-40, 50}}, color = {255, 0, 0}));
    connect(fixpoint4.portFix, rolle_oben3.port_oben) annotation(
      Line(points = {{70, 86}, {70, 86}, {70, 74}, {70, 74}}, color = {255, 0, 0}));
    connect(fixpoint3.portFix, rolle_oben2.port_oben) annotation(
      Line(points = {{30, 86}, {30, 86}, {30, 74}, {30, 74}}, color = {255, 0, 0}));
    connect(fixpoint1.portFix, rolle_oben4.port_oben) annotation(
      Line(points = {{-50, 86}, {-50, 86}, {-50, 74}, {-50, 74}}, color = {255, 0, 0}));
    connect(fixpoint2.portFix, rolle_oben1.port_oben) annotation(
      Line(points = {{-10, 86}, {-10, 86}, {-10, 74}, {-10, 74}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_links, rolle_unten1.port_rechts) annotation(
      Line(points = {{-20, 50}, {-20, 50}, {-20, 0}, {-20, 0}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_rechts, rolle_unten2.port_links) annotation(
      Line(points = {{0, 50}, {0, 50}, {0, 0}, {0, 0}}, color = {255, 0, 0}));
    connect(rolle_unten3.port_unten, masse1.PortMasse) annotation(
      Line(points = {{50, -22}, {50, -22}, {50, -40}, {10, -40}, {10, -60}, {10, -60}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_unten, masse1.PortMasse) annotation(
      Line(points = {{-30, -22}, {-30, -22}, {-30, -40}, {10, -40}, {10, -60}, {10, -60}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_unten, masse1.PortMasse) annotation(
      Line(points = {{10, -22}, {10, -22}, {10, -60}, {10, -60}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_Rollen_Mischung4;

  model Test_Rollen_Mischung5
    Flaschenzug_V3.Test_Motor test_Motor1 annotation(
      Placement(visible = true, transformation(origin = {-60, -62}, extent = {{28, -28}, {-28, 28}}, rotation = -90)));
    Flaschenzug_V3.Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {-30, -76}, extent = {{16, 16}, {-16, -16}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1(m = 12) annotation(
      Placement(visible = true, transformation(origin = {40, -58}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint3 annotation(
      Placement(visible = true, transformation(origin = {-50, 78}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten1(m = 10) annotation(
      Placement(visible = true, transformation(origin = {-30, -34}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-10, 78}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint5 annotation(
      Placement(visible = true, transformation(origin = {30, 78}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten2(m = 10) annotation(
      Placement(visible = true, transformation(origin = {10, -34}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint4 annotation(
      Placement(visible = true, transformation(origin = {10, -76}, extent = {{16, 16}, {-16, -16}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1(m = 10) annotation(
      Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben2(m = 10) annotation(
      Placement(visible = true, transformation(origin = {30, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben3(m = 10) annotation(
      Placement(visible = true, transformation(origin = {-50, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  equation
    connect(fixpoint3.portFix, rolle_oben3.port_oben) annotation(
      Line(points = {{-50, 76}, {-50, 76}, {-50, 64}, {-50, 64}}, color = {255, 0, 0}));
    connect(fixpoint1.portFix, rolle_oben1.port_oben) annotation(
      Line(points = {{-10, 76}, {-10, 76}, {-10, 64}, {-10, 64}}, color = {255, 0, 0}));
    connect(fixpoint5.portFix, rolle_oben2.port_oben) annotation(
      Line(points = {{30, 76}, {30, 76}, {30, 64}, {30, 64}}, color = {255, 0, 0}));
    connect(rolle_oben2.port_rechts, masse1.PortMasse) annotation(
      Line(points = {{40, 40}, {40, 40}, {40, -54}, {40, -54}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_rechts, rolle_oben2.port_links) annotation(
      Line(points = {{20, -26}, {20, -26}, {20, 40}, {20, 40}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_links, rolle_oben1.port_rechts) annotation(
      Line(points = {{0, -26}, {0, -26}, {0, 40}, {0, 40}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_rechts, rolle_oben1.port_links) annotation(
      Line(points = {{-20, -26}, {-20, -26}, {-20, 40}, {-20, 40}}, color = {255, 0, 0}));
    connect(rolle_oben3.port_rechts, rolle_unten1.port_links) annotation(
      Line(points = {{-40, 40}, {-40, 40}, {-40, -26}, {-40, -26}}, color = {255, 0, 0}));
    connect(test_Motor1.Port_Motor, rolle_oben3.port_links) annotation(
      Line(points = {{-60, -38}, {-60, -38}, {-60, 40}, {-60, 40}}, color = {255, 0, 0}));
    connect(rolle_unten2.port_unten, fixpoint4.portFix) annotation(
      Line(points = {{10, -48}, {10, -74}}, color = {255, 0, 0}));
    connect(fixpoint2.portFix, rolle_unten1.port_unten) annotation(
      Line(points = {{-30, -74}, {-30, -48}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_Rollen_Mischung5;

  model Test_Getriebe1
    Flaschenzug_V3.Test_Motor test_Motor1(D = 0.1) annotation(
      Placement(visible = true, transformation(origin = {-51, -75}, extent = {{29, -29}, {-29, 29}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1(m = 1) annotation(
      Placement(visible = true, transformation(origin = {-9, 1}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {6, 78}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.Seilwinde seilwinde1 annotation(
      Placement(visible = true, transformation(origin = {66, -72}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Seilwinde seilwinde2 annotation(
      Placement(visible = true, transformation(origin = {12, -42}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Getriebe getriebe1(i = 10) annotation(
      Placement(visible = true, transformation(origin = {17, -75}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
    Flaschenzug_V3.Test_Motor test_Motor2(D = 0.1) annotation(
      Placement(visible = true, transformation(origin = {-51, -47}, extent = {{29, -29}, {-29, 29}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {6, 44}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben2 annotation(
      Placement(visible = true, transformation(origin = {62, 44}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint2 annotation(
      Placement(visible = true, transformation(origin = {62, 78}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.Masse masse2 annotation(
      Placement(visible = true, transformation(origin = {47, 1}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  equation
    connect(seilwinde2.port_trans, rolle_oben1.port_rechts) annotation(
      Line(points = {{20, -24}, {22, -24}, {22, 28}, {22, 28}}, color = {0, 170, 0}));
    connect(rolle_oben2.port_oben, fixpoint2.portFix) annotation(
      Line(points = {{62, 64}, {62, 64}, {62, 76}, {62, 76}}, color = {0, 170, 0}));
    connect(rolle_oben2.port_rechts, seilwinde1.port_trans) annotation(
      Line(points = {{78, 28}, {76, 28}, {76, -54}, {74, -54}}, color = {255, 0, 0}));
    connect(masse2.PortMasse, rolle_oben2.port_links) annotation(
      Line(points = {{48, 4}, {48, 4}, {48, 28}, {46, 28}}, color = {0, 170, 0}));
    connect(rolle_oben1.port_links, masse1.PortMasse) annotation(
      Line(points = {{-9, 29}, {-9, 5}}, color = {255, 0, 0}));
    connect(fixpoint1.portFix, rolle_oben1.port_oben) annotation(
      Line(points = {{6, 76}, {6, 64}}, color = {255, 0, 0}));
    connect(getriebe1.Port_out, seilwinde1.port_rot) annotation(
      Line(points = {{32, -74}, {48, -74}, {48, -76}, {50, -76}}, color = {0, 85, 255}));
    connect(seilwinde2.port_rot, test_Motor2.port_Drehmoment_und_Drehzahl1) annotation(
      Line(points = {{-4, -46}, {-26, -46}, {-26, -46}, {-26, -46}}, color = {0, 85, 255}));
    connect(test_Motor2.port_Drehmoment_und_Drehzahl1, seilwinde2.port_T_n) annotation(
      Line(points = {{-26, -46}, {-6, -46}, {-6, -46}, {-4, -46}}, color = {0, 85, 255}));
    connect(seilwinde2.port_F_s, rolle_oben21.port_rechts) annotation(
      Line(points = {{22, -24}, {22, -24}, {22, 22}, {22, 22}}, color = {255, 0, 0}));
    connect(getriebe1.Port_out, seilwinde1.port_T_n) annotation(
      Line(points = {{32, -75}, {49, -75}}, color = {0, 85, 255}));
    connect(seilwinde1.port_F_s, rolle_oben22.port_rechts) annotation(
      Line(points = {{75, -54}, {76, -54}, {76, 22}}, color = {255, 0, 0}));
    connect(test_Motor1.port_Drehmoment_und_Drehzahl1, getriebe1.Port_in) annotation(
      Line(points = {{-25, -75}, {2, -75}}, color = {0, 85, 255}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_Getriebe1;

  model Test_EMotor1
    Flaschenzug_V3.Masse masse2(m = 1) annotation(
      Placement(visible = true, transformation(origin = {44, -2}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint3 annotation(
      Placement(visible = true, transformation(origin = {60, 78}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.Seilwinde seilwinde1 annotation(
      Placement(visible = true, transformation(origin = {66, -72}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Getriebe getriebe1 annotation(
      Placement(visible = true, transformation(origin = {10, -76}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.EMotor eMotor1 annotation(
      Placement(visible = true, transformation(origin = {-63, -79}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {60, 38}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
  equation
    connect(masse2.PortMasse, rolle_oben1.port_links) annotation(
      Line(points = {{44, 2}, {44, 2}, {44, 22}, {44, 22}}, color = {0, 170, 0}));
    connect(rolle_oben1.port_rechts, seilwinde1.port_trans) annotation(
      Line(points = {{76, 22}, {76, 22}, {76, -54}, {74, -54}}, color = {255, 0, 0}));
    connect(fixpoint3.portFix, rolle_oben1.port_oben) annotation(
      Line(points = {{60, 76}, {60, 76}, {60, 60}, {60, 60}}, color = {255, 0, 0}));
    connect(getriebe1.Port_out, seilwinde1.port_rot) annotation(
      Line(points = {{24, -76}, {48, -76}, {48, -76}, {50, -76}}, color = {0, 85, 255}));
    connect(eMotor1.port_Drehmoment_und_Drehzahl1, getriebe1.Port_in) annotation(
      Line(points = {{-52, -76}, {-6, -76}, {-6, -76}, {-4, -76}}, color = {0, 85, 255}));
    connect(getriebe1.Port_out, seilwinde1.port_T_n) annotation(
      Line(points = {{25, -76}, {50, -76}}, color = {0, 85, 255}));
    connect(seilwinde1.port_F_s, rolle_oben22.port_rechts) annotation(
      Line(points = {{76, -54}, {78, -54}, {78, 22}, {76, 22}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_EMotor1;

  model Test_EMotor2
    Flaschenzug_V3.Masse masse1(m = 5) annotation(
      Placement(visible = true, transformation(origin = {-10, 0}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {6, 78}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.Masse masse2(m = 5) annotation(
      Placement(visible = true, transformation(origin = {44, -2}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint3 annotation(
      Placement(visible = true, transformation(origin = {60, 78}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
    Flaschenzug_V3.Seilwinde seilwinde1 annotation(
      Placement(visible = true, transformation(origin = {66, -72}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Seilwinde seilwinde2 annotation(
      Placement(visible = true, transformation(origin = {12, -42}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Getriebe getriebe1(i = 10) annotation(
      Placement(visible = true, transformation(origin = {11, -75}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {6, 44}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben2 annotation(
      Placement(visible = true, transformation(origin = {60, 44}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.EMotor eMotor1 annotation(
      Placement(visible = true, transformation(origin = {-65, -49}, extent = {{-27, -27}, {27, 27}}, rotation = 0)));
    Flaschenzug_V3.EMotor eMotor2 annotation(
      Placement(visible = true, transformation(origin = {-65, -79}, extent = {{-27, -27}, {27, 27}}, rotation = 0)));
  equation
    connect(eMotor2.port_Drehmoment_und_Drehzahl1, getriebe1.Port_in) annotation(
      Line(points = {{-49, -75}, {-6, -75}, {-6, -74}, {-4, -74}}, color = {0, 85, 255}));
    connect(eMotor1.port_Drehmoment_und_Drehzahl1, seilwinde2.port_rot) annotation(
      Line(points = {{-49, -45}, {-4, -45}, {-4, -46}}, color = {0, 85, 255}));
    connect(getriebe1.Port_out, seilwinde1.port_rot) annotation(
      Line(points = {{26, -74}, {50, -74}, {50, -76}, {50, -76}}, color = {0, 85, 255}));
    connect(rolle_oben2.port_rechts, seilwinde1.port_trans) annotation(
      Line(points = {{76, 28}, {74, 28}, {74, -54}, {74, -54}}, color = {255, 0, 0}));
    connect(rolle_oben2.port_links, masse2.PortMasse) annotation(
      Line(points = {{44, 28}, {44, 28}, {44, 2}, {44, 2}}, color = {255, 0, 0}));
    connect(rolle_oben2.port_oben, fixpoint3.portFix) annotation(
      Line(points = {{60, 64}, {60, 64}, {60, 76}, {60, 76}}, color = {0, 170, 0}));
    connect(seilwinde2.port_trans, rolle_oben1.port_rechts) annotation(
      Line(points = {{20, -24}, {22, -24}, {22, 28}, {22, 28}}, color = {0, 170, 0}));
    connect(fixpoint1.portFix, rolle_oben1.port_oben) annotation(
      Line(points = {{6, 76}, {6, 76}, {6, 64}, {6, 64}}, color = {255, 0, 0}));
    connect(masse1.PortMasse, rolle_oben1.port_links) annotation(
      Line(points = {{-10, 4}, {-10, 4}, {-10, 28}, {-10, 28}}, color = {0, 170, 0}));
    connect(getriebe1.Port_out, seilwinde1.port_T_n) annotation(
      Line(points = {{26, -75}, {49, -75}}, color = {0, 85, 255}));
    connect(eMotor21.port_Drehmoment_und_Drehzahl1, seilwinde2.port_T_n) annotation(
      Line(points = {{-50, -46}, {-6, -46}, {-6, -46}, {-4, -46}}, color = {0, 85, 255}));
    connect(seilwinde2.port_F_s, rolle_oben21.port_rechts) annotation(
      Line(points = {{22, -24}, {22, -24}, {22, 22}, {22, 22}}, color = {255, 0, 0}));
    connect(seilwinde1.port_F_s, rolle_oben22.port_rechts) annotation(
      Line(points = {{75, -54}, {76, -54}, {76, 22}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
      Diagram);
  end Test_EMotor2;
end Flaschenzug_V3;
