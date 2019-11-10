package Flaschenzug_V3
  connector Port1
    /////////////////////////////////
    Real s;
    //Weg
    flow Real F;
    //Kraft
    /////////////////////////////////
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {0, 170, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Solid, points = {{0, 100}, {-100, -100}, {100, -100}, {0, 100}, {0, 100}})}));
  end Port1;

  connector Port2
    /////////////////////////////////
    Real s;
    //Weg
    flow Real F;
    //Kraft
    /////////////////////////////////
    annotation(
      Diagram,
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 100}, {100, 100}, {0, -100}, {0, -100}, {-100, 100}})}));
  end Port2;

  connector Port_Rolle_Seilanschluss
    /////////////////////////////////
    Real s;
    //Weg
    flow Real F;
    //Kraft
    /////////////////////////////////
    annotation(
      Diagram,
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Polygon(lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-100, 40}, {0, 100}, {100, 40}, {100, 40}, {-100, 40}}), Polygon(origin = {-40, -70}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, points = {{-60, 30}, {40, -30}, {140, 30}, {140, 30}, {-60, 30}}), Rectangle(origin = {-10, 0}, lineColor = {255, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-90, 40}, {110, -40}})}));
  end Port_Rolle_Seilanschluss;

  model Fixpoint
    Flaschenzug_V3.Port2 portFix annotation(
      Placement(visible = true, transformation(origin = {0, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    /////////////////////////////////
  equation
    portFix.s = 0;
// Weg gleich 0
/////////////////////////////////
/*  annotation(
      Icon(graphics = {Rectangle(origin = {2, 26}, fillPattern = FillPattern.Solid, extent = {{-76, 18}, {76, -18}})}));
  */
    annotation(
      Icon(graphics = {Rectangle(origin = {4, 14}, fillPattern = FillPattern.Solid, extent = {{-84, -12}, {76, -16}}), Polygon(origin = {-65, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {-25, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {-39, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {-53, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {-11, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {29, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {1, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {15, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {71, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {57, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {43, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}}), Polygon(origin = {85, 16}, fillPattern = FillPattern.Solid, points = {{-7, -10}, {13, 10}, {7, 10}, {-13, -10}, {-7, -10}})}, coordinateSystem(initialScale = 0.1)));
  end Fixpoint;

  model Motor
    //////////////////////////////////////////////////
    constant Real g = Modelica.Constants.g_n;
    //Erdbeschleunigung
    constant Real pi = Modelica.Constants.pi;
    // Pi
    Real F_z "Motorkraft";
    Modelica.SIunits.Acceleration a;
    //Beschleunigung
    Modelica.SIunits.Velocity v;
    //Geschwindigkeit
    Real s_Motor = Port_Motor.s;
    parameter Modelica.SIunits.Frequency n = 50;
    //Drehzahl in Hertz
    parameter Modelica.SIunits.Voltage U = 230;
    //Spannung in Volt
    Modelica.SIunits.Length r = 0.01;
    //Radius Motorwelle in m
    Modelica.SIunits.Torque M_L;
    //Lastmoment
    Modelica.SIunits.Power P;
    //elektrische Leistung in Watt
    Modelica.SIunits.Current I;
    //Strom in Ampere
    /////////////////////////////////////////////////
    Flaschenzug_V3.Port2 Port_Motor annotation(
      Placement(visible = true, transformation(origin = {2, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {86, 0}, extent = {{-8, -8}, {8, 8}}, rotation = 90)));
    /////////////////////////////////////////////////
  equation
    Port_Motor.F = F_z;
    Port_Motor.s = sin(time);
    der(v) = a;
    der(Port_Motor.s) = v;
    M_L = F_z * r;
    P = M_L * 2 * pi * n;
    P = U * I;
////////////////////////////////////////////////
/* annotation(
      Icon(graphics = {Ellipse(origin = {0, 22}, lineColor = {0, 0, 255}, lineThickness = 1, extent = {{-60, 60}, {60, -60}}, endAngle = 360), Text(origin = {-1, 23}, lineColor = {0, 0, 255}, extent = {{39, 35}, {-39, -35}}, textString = "M")}));
  */
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {0, 27}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {52, 0}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {104, -1}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {-26, -3}}), Polygon(origin = {-52, 0}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {0, 17}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, -5}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, -17}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, -27}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, 5}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {0, -42}, rotation = 90, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {2, -47}, fillPattern = FillPattern.Solid, extent = {{-52, 3}, {50, -3}})}));
  end Motor;

  model Rollensystem
    parameter Real n = 4;
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

  model Masse
    constant Real g = 9.81;
    //Erdbeschleunigung
    parameter Real m = 5;
    //Masse
    Real s_masse;
    //Weg Masse
    Real F_g;
    //Gewichtskraft
    Real F_t;
    //Trägheitskraft
    Real F_ges = PortMasse.F;
    //Gesamtkraft
    Modelica.SIunits.Acceleration a;
    //Beschleunigung
    Modelica.SIunits.Velocity v;
    //Geschwindigkeit
    Flaschenzug_V3.Port1 PortMasse annotation(
      Placement(visible = true, transformation(origin = {0, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    /////////////////////////////////////////////////////////
  equation
    F_g = m * g;
    PortMasse.F = -(F_g + F_t);
    PortMasse.s = s_masse;
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
////////////////////////////////////////////////////////
    annotation(
      experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Masse;

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

  model Rolle_oben
    Flaschenzug_V3.Port1 port_oben annotation(
      Placement(visible = true, transformation(origin = {-6, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port2 port_unten annotation(
      Placement(visible = true, transformation(origin = {-4, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_links annotation(
      Placement(visible = true, transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-63, -67}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_rechts annotation(
      Placement(visible = true, transformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {63, -67}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    parameter Real m = 1;
    constant Real g = 9.81;
    Real F_g;
    //Real F_Rolle;
  equation
    F_g = m * g;
    port_rechts.F = port_links.F;
    port_oben.F = port_rechts.F + port_links.F + port_unten.F + F_g;
    port_links.s = port_rechts.s;
    port_oben.s = port_unten.s;
/* annotation(
      Icon(graphics = {Ellipse(fillColor = {85, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 80}, {80, -80}}, endAngle = 360), Text(origin = {1, 6}, extent = {{-35, 32}, {35, -32}}, textString = "Rolle")}));
  */
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Ellipse(origin = {1, -1}, fillColor = {252, 252, 252}, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-61, 61}, {59, -59}}, endAngle = 360), Rectangle(extent = {{-10, 80}, {-10, 80}}), Rectangle(extent = {{-8, 82}, {-8, 82}}), Rectangle(origin = {-4, 21}, lineColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{10, 61}, {-2, -103}}), Ellipse(origin = {1, -3}, fillPattern = FillPattern.Solid, extent = {{-21, 23}, {19, -17}}, endAngle = 360), Rectangle(origin = {-63, -31}, fillPattern = FillPattern.Solid, extent = {{-1, 31}, {1, -31}}), Rectangle(origin = {65, -31}, fillPattern = FillPattern.Solid, extent = {{-1, 31}, {-3, -31}})}));
  end Rolle_oben;

  model Test_einzelRollen
    Flaschenzug_V3.Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {-1, 28}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {-4, -92}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {-78, -50}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Flaschenzug_V3.Rolle_unten rolle_unten1 annotation(
      Placement(visible = true, transformation(origin = {0, -46}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {-1, 83}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
  equation
    connect(rolle_unten1.port_unten, masse1.PortMasse) annotation(
      Line(points = {{0, -70}, {0, -78.5}, {-4, -78.5}, {-4, -87}}, color = {255, 0, 0}));
    connect(rolle_unten1.port_links, rolle_oben.port_unten) annotation(
      Line(points = {{-16, -32}, {-12, -32}, {-12, 6}, {0, 6}, {0, 6}}, color = {255, 0, 0}));
    connect(rolle_oben.port_rechts, rolle_unten1.port_rechts) annotation(
      Line(points = {{14, 12}, {16, 12}, {16, -32}, {16, -32}}, color = {255, 0, 0}));
    connect(rolle_oben.port_oben, fixpoint1.portFix) annotation(
      Line(points = {{-1, 50}, {-1, 79}}, color = {0, 170, 0}));
    connect(motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-58, -50}, {-36, -50}, {-36, 12}, {-16, 12}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Test_einzelRollen;

  model Rolle_unten
    Flaschenzug_V3.Port2 port_unten annotation(
      Placement(visible = true, transformation(origin = {-4, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_links annotation(
      Placement(visible = true, transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-63, 55}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    Flaschenzug_V3.Port_Rolle_Seilanschluss port_rechts annotation(
      Placement(visible = true, transformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {63, 55}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
    Flaschenzug_V3.Port1 port_oben annotation(
      Placement(visible = true, transformation(origin = {-10, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    parameter Real m = 1;
    constant Real g = 9.81;
    Real F_g;
    ////////////////////////////////////////////////////////////////
  equation
    F_g = m * g;
    port_rechts.F = port_links.F;
    port_rechts.F + port_links.F = port_unten.F;
    port_rechts.s / 2 = port_unten.s;
//  port_oben.F = port_unten.F;
    port_oben.s = port_unten.s;
///////////////////////////////////////////////////////////////
/* annotation(
      Icon(graphics = {Ellipse(fillColor = {85, 85, 255}, fillPattern = FillPattern.Solid, extent = {{-80, 80}, {80, -80}}, endAngle = 360), Text(origin = {1, 6}, extent = {{-35, 32}, {35, -32}}, textString = "Rolle")}));
  */
    annotation(
      Icon(coordinateSystem(initialScale = 0.1), graphics = {Ellipse(origin = {1, -9}, fillColor = {252, 252, 252}, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-61, 61}, {59, -59}}, endAngle = 360), Rectangle(extent = {{-10, 80}, {-10, 80}}), Rectangle(extent = {{-8, 82}, {-8, 82}}), Rectangle(origin = {-4, 13}, lineColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 1, extent = {{10, 61}, {-2, -103}}), Ellipse(origin = {1, -11}, fillPattern = FillPattern.Solid, extent = {{-21, 23}, {19, -17}}, endAngle = 360), Rectangle(origin = {-55, 41}, fillPattern = FillPattern.Solid, extent = {{-7, 11}, {-9, -49}}), Rectangle(origin = {63, 21}, fillPattern = FillPattern.Solid, extent = {{-1, 31}, {1, -31}}), Rectangle(origin = {31, -8}, fillPattern = FillPattern.Solid, extent = {{-1, 20}, {3, -20}}), Polygon(origin = {0, -8}, points = {{-78, -48}, {-78, -48}, {-78, -48}}), Polygon(origin = {38, 22}, fillPattern = FillPattern.Solid, points = {{-6, 6}, {-12, -10}, {0, -10}, {-6, 6}}), Polygon(origin = {38, -16}, fillPattern = FillPattern.Solid, points = {{-6, -26}, {-12, -10}, {0, -10}, {-6, -26}})}),
      experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Rolle_unten;

  model Test_3Rollen
    Flaschenzug_V3.Fixpoint fixpoint1 annotation(
      Placement(visible = true, transformation(origin = {1, 77}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
    Flaschenzug_V3.Masse masse1 annotation(
      Placement(visible = true, transformation(origin = {2, -84}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Flaschenzug_V3.Motor motor1 annotation(
      Placement(visible = true, transformation(origin = {-78, 52}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
    Rolle_oben rolle_oben annotation(
      Placement(visible = true, transformation(origin = {1, 41}, extent = {{-27, -27}, {27, 27}}, rotation = 0)));
    Flaschenzug_V3.Rolle_oben rolle_oben1 annotation(
      Placement(visible = true, transformation(origin = {2, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Rolle_oben rolle_unten annotation(
      Placement(visible = true, transformation(origin = {2, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(rolle_unten.port_unten, masse1.PortMasse) annotation(
      Line(points = {{2, -58}, {2, -79}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_rechts, rolle_unten.port_oben) annotation(
      Line(points = {{12, -14}, {16, -14}, {16, -32}, {2, -32}, {2, -38}, {2, -38}}, color = {255, 0, 0}));
    connect(rolle_unten.port_links, rolle_oben1.port_links) annotation(
      Line(points = {{-8, -48}, {-6, -48}, {-6, -14}, {-8, -14}}, color = {255, 0, 0}));
    connect(rolle_oben1.port_oben, rolle_oben.port_unten) annotation(
      Line(points = {{2, -5}, {2, 16}}, color = {0, 170, 0}));
    connect(rolle_oben.port_rechts, rolle_unten.port_rechts) annotation(
      Line(points = {{26, 42}, {36, 42}, {36, -48}, {12, -48}, {12, -48}}, color = {255, 0, 0}));
    connect(fixpoint1.portFix, rolle_oben.port_oben) annotation(
      Line(points = {{2, 76}, {0, 76}, {0, 65}, {1, 65}}, color = {255, 0, 0}));
    connect(motor1.Port_Motor, rolle_oben.port_links) annotation(
      Line(points = {{-78, 40}, {-78, 41}, {-23, 41}}, color = {255, 0, 0}));
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
      __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
  end Test_3Rollen;

  class Getriebe
    Real i = 20;  //Übersetzung
    Real n_M;     //Drehzahl Motor
    Real n_ab;    //Drehzahl nach Getriebe
    Real T_ab;    //Moment nach Getriebe
    Real T_M;     //Moment Motor
  
  equation
  
    i = n_M / n_ab;
    i = T_ab / T_M;
    
    annotation(
      Icon(graphics = {Ellipse(origin = {-18, -14}, fillPattern = FillPattern.Solid, extent = {{-16, 16}, {16, -16}}, endAngle = 360), Ellipse(origin = {-18, -14}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {-16, 3}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-16, -33}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {1, -12}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-35, -12}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-25, 2}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-32, -4}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-34, -20}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-6, -30}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-29, -28}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-10, 4}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-2, -2}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {0, -22}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {7, -2}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {1.77636e-15, 6}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {20, 14}, fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}, endAngle = 360), Rectangle(origin = {41, 4}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {34, -4}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-1, 16}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {43, 16}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {22, -9}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {20, 14}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {38, 28}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {2, 26}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {43, 45}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{2, 14}, {6, 20}}), Rectangle(origin = {11, 34}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {22, 35}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}})}));
  end Getriebe;

  class Seilwinde
    Real M_SW;        //Moment vom Getriebe
    Real F_SW;        //Kraft vom Seil
    Real D_SW = 0.1;  //Durchmesser Seilwinde
    Real n_SW;        //Drehzahl vom Getriebe
    Real s_SW;        //Weg vom Seil
    Real U_SW;        //Umfang Seilwinde
    Real AnzU;        //Anzahl der Umdrehungen
  
  equation
    M_SW = F_SW * (D_SW / 2);   //Moment = Kraft * Hebelarm
    U_SW = 3.14 * D_SW;         //Berechnung Umfang der Seilwinde
    AnzU = n_SW * time;         //Anzahl der Umdrehungen = Drehzahl * Zeit
    s_SW = AnzU * U_SW;         //Weg vom Seil = Anzahl der Umdrehungen * Umfang der Seilwinde
    
  
    annotation(
      Icon(graphics = {Rectangle(origin = {-63, 4}, fillPattern = FillPattern.Solid, extent = {{-3, 36}, {3, -44}}), Rectangle(origin = {63, 4}, fillPattern = FillPattern.Solid, extent = {{-3, 36}, {3, -44}}), Rectangle(origin = {29, 64}, fillPattern = FillPattern.Solid, extent = {{-89, -36}, {31, -44}}), Rectangle(origin = {29, 16}, fillPattern = FillPattern.Solid, extent = {{-89, -36}, {31, -44}}), Rectangle(origin = {7, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {19, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {31, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {43, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {55, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {67, -32}, rotation = -75, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {-9, -44}}), Rectangle(origin = {-7, 44}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-79, -40}, {37, -44}})}));
  end Seilwinde;
end Flaschenzug_V3;
