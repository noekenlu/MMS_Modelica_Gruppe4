package Flaschenzug

  package Ports
  
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
  annotation (Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {4, -3}, lineColor = {255, 255, 255}, fillColor = {185, 185, 185}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-104, 103}, {96, -97}}), Polygon(origin = {-38, 0}, fillPattern = FillPattern.Solid, points = {{-22, -22}, {0, 22}, {22, -22}, {22, -22}, {-22, -22}}), Polygon(origin = {44, 2}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-22, -22}, {0, 22}, {22, -22}, {22, -22}, {-22, -22}}), Rectangle(origin = {3, -1}, extent = {{-77, 77}, {77, -77}})}));  
  end Ports;
  

 


  package Modelle
  
  
    model Fixpoint
      Ports.Port2 portFix annotation(
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
      Ports.Port2 Port_Motor annotation(
        Placement(visible = true, transformation(origin = {2, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {88, 0}, extent = {{-8, -8}, {8, 8}}, rotation = 90)));
        Ports.Port_Drehmoment_und_Drehzahl port_Drehmoment_und_Drehzahl1 annotation(
        Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-88, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      /////////////////////////////////////////////////
    equation
      Port_Motor.F = F_z;
      der(v) = a;
      der(Port_Motor.s) = v;
      
      f=der(Port_Motor.s)/(pi*D);
//  Port_Motor.s = sin(time);
//  Port_Motor.s=12;
// Port_Motor.s= 0.68*atan(2*time);
//Port_Motor.s = 3*(sin(0.1*time))^2;
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
      parameter Modelica.SIunits.VoltageSecond ke = 0.48 "Spannungskonstante";
      parameter Modelica.SIunits.Inertia J_tot = 108e-6 "resultierende Trägheit am Motor in kg*m^2";
      parameter Modelica.SIunits.Voltage U_a = 48 "Ankerspannung";
      parameter Modelica.SIunits.RotationalDampingConstant cf = 4.5e-4 "Reibungsverlustkonstante";
      //Variablen
      Modelica.SIunits.Current I_a(start = 0) "Ankerstrom";
      Modelica.SIunits.Voltage U_g "induzierte Spannung";
      Modelica.SIunits.Torque M_e "elektrisches Drehmoment";
      Modelica.SIunits.Torque M_L = port_Drehmoment_und_Drehzahl1.T "Lastmoment in Nm";
      Modelica.SIunits.Torque M_f "Reibungsverlustmoment in Nm";
      Modelica.SIunits.Frequency f = -port_Drehmoment_und_Drehzahl1.n "Drehzahl in 1/s";
      Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm n "Drehzahl in 1/min";
      Modelica.SIunits.Frequency omega "Rotorkreisfrequenz";
      Modelica.SIunits.ElectricalTorqueConstant kt "Drehmomentenkonstante";
      Ports.Port_Drehmoment_und_Drehzahl port_Drehmoment_und_Drehzahl1 annotation(
        Placement(visible = true, transformation(origin = {60, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {66, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      n = f * 60;
//in 1/min
      omega = 2 * pi * f;
      kt = ke / (2 * pi);
      U_a = R_a * I_a + L_a * der(I_a) + U_g;
      U_g = ke * f;
      M_e = kt * I_a;
      M_e = J_tot * der(omega) + M_L + M_f;
      M_f = cf * f;
////////////////////////////////////////////////
      annotation(
        Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {-20, 41}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {32, 14}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {84, 13}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {-26, -3}}), Polygon(origin = {-52, 0}, rotation = 180, fillPattern = FillPattern.Solid, points = {{12, 16}, {12, -44}, {18, -44}, {28, -34}, {28, 6}, {18, 16}, {12, 16}}), Rectangle(origin = {-20, 31}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, 9}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, -3}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, -13}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, 19}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {-20, -28}, rotation = 90, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {-18, -33}, fillPattern = FillPattern.Solid, extent = {{-52, 3}, {50, -3}})}));
    end EMotor;
class Getriebe
  parameter Real i = 20      "Übersetzung";
  parameter Real Wirkungsgrad = 1 "Getriebe-Wirkungsgrad";
  Real X;                                    
    Ports.Port_Drehmoment_und_Drehzahl Port_in annotation(
    Placement(visible = true, transformation(origin = {-72, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Ports.Port_Drehmoment_und_Drehzahl Port_out annotation(
    Placement(visible = true, transformation(origin = {64, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));                                                               //Moment Motor
    equation

X=1/i;
/*
  i = Port_in.n  / Port_out.n;
  i = Port_out.T / Port_in.T;
  */
  
  Port_out.n=Port_in.n*X;
  Port_out.T = Port_in.T*i*Wirkungsgrad;
  
  
  annotation(
    Icon(graphics = {Ellipse(origin = {-20, -12}, fillPattern = FillPattern.Solid, extent = {{-16, 16}, {16, -16}}, endAngle = 360), Ellipse(origin = {-20, -12}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {-18, 5}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-18, -31}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-1, -10}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-37, -10}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-27, 4}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-34, -2}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-36, -18}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-8, -28}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-31, -26}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-12, 6}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-4, 0}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-2, -20}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {9, -12}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {2, -4}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {22, 4}, fillPattern = FillPattern.Solid, extent = {{-20, 20}, {20, -20}}, endAngle = 360), Rectangle(origin = {43, -6}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {36, -14}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {1, 6}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {45, 6}, rotation = 90, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {24, -19}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Ellipse(origin = {22, 4}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-3, 3}, {3, -3}}, endAngle = 360), Rectangle(origin = {40, 18}, rotation = 120, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {4, 16}, rotation = 60, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {45, 35}, rotation = 150, fillPattern = FillPattern.Solid, extent = {{2, 14}, {6, 20}}), Rectangle(origin = {13, 24}, rotation = 30, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {24, 25}, fillPattern = FillPattern.Solid, extent = {{-4, -2}, {0, 4}}), Rectangle(origin = {-6, 5}, lineThickness = 1, extent = {{-54, 35}, {66, -45}}), Line(origin = {-33, 28}, points = {{-11, 0}, {11, 0}}, thickness = 2), Polygon(origin = {-17, 28}, fillPattern = FillPattern.Solid, points = {{-5, 4}, {-5, -4}, {5, 0}, {-5, 4}, {-5, 4}})}, coordinateSystem(initialScale = 0.1)));
end Getriebe;
  
    model Rollensystem
      parameter Real n = 4;
      Ports.Port1 Port_Zug annotation(
        Placement(visible = true, transformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
      Ports.Port2 Port_Last annotation(
        Placement(visible = true, transformation(origin = {0, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Ports.Port1 port_fix annotation(
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
      Ports.Port2 port_unten annotation(
        Placement(visible = true, transformation(origin = {-4, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Ports.Port_Rolle_Seilanschluss port_links annotation(
        Placement(visible = true, transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-63, -63}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
      Ports.Port_Rolle_Seilanschluss port_rechts annotation(
        Placement(visible = true, transformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {63, -65}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
      Ports.Port1 port_oben annotation(
        Placement(visible = true, transformation(origin = {-10, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      //////////////////////////////////////////////////////////////////
      parameter Modelica.SIunits.Mass m = 0 "Masse Rolle";
      constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
      Modelica.SIunits.Force F_g "Gewichtskraft";
      Modelica.SIunits.Force F_t "Trägheitskraft";
      Modelica.SIunits.Force F_tm "Resultierende Trägheitskraft Durch trägheitsmoment";
      Modelica.SIunits.Force F_ges "Gesamtkraft durch Masse";
      Modelica.SIunits.Acceleration a "Beschleunigung Rolle trans.";
      Modelica.SIunits.Velocity v "Geschwindigkeit Rolle trans.";
      Modelica.SIunits.Length s "Weg Rolle trans.";
      ////////////////////////////////////////////////////////////////
    equation
      F_ges = F_t + F_g +F_tm;
      F_g = m * g;
      F_t = m * a;
      F_tm= m/2*a;
      port_rechts.F = port_links.F;
      port_rechts.F + port_links.F + port_oben.F + F_ges = -port_unten.F;
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
    Ports.Port2 port_unten annotation(
        Placement(visible = true, transformation(origin = {-4, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Ports.Port_Rolle_Seilanschluss port_links annotation(
        Placement(visible = true, transformation(origin = {-80, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-63, 55}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
      Ports.Port_Rolle_Seilanschluss port_rechts annotation(
        Placement(visible = true, transformation(origin = {66, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {63, 55}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
      Ports.Port1 port_oben annotation(
        Placement(visible = true, transformation(origin = {-10, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      //////////////////////////////////////////////////////////////////
      parameter Modelica.SIunits.Mass m = 10 "Masse Rolle";
      constant Real g = Modelica.Constants.g_n "Erdbeschleunigung";
      Modelica.SIunits.Force F_g "Gewichtskraft";
      Modelica.SIunits.Force F_t "Trägheitskraft";
      Modelica.SIunits.Force F_tm "Resultierende Trägheitskraft Durch trägheitsmoment";
      Modelica.SIunits.Force F_ges "Gesamtkraft durch Masse";
      Modelica.SIunits.Acceleration a "Beschleunigung Rolle trans.";
      Modelica.SIunits.Velocity v "Geschwindigkeit Rolle trans.";
      Modelica.SIunits.Length s "Weg Rolle trans.";
      ////////////////////////////////////////////////////////////////
    equation
      F_ges = F_t + F_g + F_tm;
      F_g = m * g;
      F_t = m * a;
      F_tm= m/2*a;
      port_rechts.F = port_links.F;
      port_rechts.F + port_links.F + port_oben.F + F_ges = -port_unten.F;
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
      Modelica.SIunits.Torque M_G = port_T_n.T      "Moment vom Getriebe";
      Modelica.SIunits.Frequency n_G = port_T_n.n   "Drehzahl vom Getriebe";
      Modelica.SIunits.Frequency omega_G            "Winkelgeschwindigkeit vom Getriebe";
      
      Modelica.SIunits.Force F_S = port_F_s.F       "Kraft vom Seil";
      Modelica.SIunits.Length s_S = port_F_s.s      "Weg vom Seil";
      Modelica.SIunits.Velocity v_S                 "Geschwindigkeit vom Seil";
      
      parameter Real D_SW = 0.1                     "Durchmesser Seilwinde";
      
      
        Ports.Port2 port_F_s annotation(
        Placement(visible = true, transformation(origin = {36, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {38, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
        Ports.Port_Drehmoment_und_Drehzahl port_T_n annotation(
        Placement(visible = true, transformation(origin = {-68, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-70, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    
    equation
      M_G = F_S * (D_SW / 2);
//Moment = Kraft * Hebelarm
      v_S = omega_G * (D_SW / 2);
      omega_G = 2 * pi * n_G;
//Geschwindigkeit = Winkelgeschwindigkeit * Radius
      der(s_S) = v_S;                               //Geschwindigkeit = abgeleiteter Weg
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
      Ports.Port1 PortMasse annotation(
        Placement(visible = true, transformation(origin = {0, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ///////////////////////////////////////////////////////
    equation
      F_g = m * g;
      PortMasse.F = -(F_g + F_t);
      F_t = m * a;
      der(v) = a;
      der(s_masse) = v;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
      annotation(
        Icon(graphics = {Rectangle(origin = {0, -21}, fillColor = {143, 143, 143}, fillPattern = FillPattern.Solid, extent = {{-60, 41}, {60, -39}})}));
    end Masse;

    model EMotor2
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
      parameter Modelica.SIunits.VoltageSecond ke = 0.48 "Spannungskonstante";
      parameter Modelica.SIunits.Inertia J_tot = 108e-6 "resultierende Trägheit am Motor in kg*m^2";
      parameter Modelica.SIunits.Voltage U_a = 48 "Ankerspannung";
      parameter Modelica.SIunits.RotationalDampingConstant cf = 4.5e-4 "Reibungsverlustkonstante";
      parameter Real Drehrichtung = 2 "1: vorwärts, 2: rückwärts, 3: Stillstand";
      //Variablen
      Modelica.SIunits.Current I_a(start = 0) "Ankerstrom";
      Modelica.SIunits.Voltage U_g "induzierte Spannung";
      Modelica.SIunits.Torque M_e "elektrisches Drehmoment";
      Modelica.SIunits.Torque M_L = port_Drehmoment_und_Drehzahl1.T "Lastmoment in Nm";
      Modelica.SIunits.Torque M_f "Reibungsverlustmoment in Nm";
      Modelica.SIunits.Frequency f = -port_Drehmoment_und_Drehzahl1.n "Drehzahl in 1/s";
      Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm n "Drehzahl in 1/min";
      Modelica.SIunits.Frequency omega "Rotorkreisfrequenz";
      Modelica.SIunits.ElectricalTorqueConstant kt "Drehmomentenkonstante";
      Ports.Port_Drehmoment_und_Drehzahl port_Drehmoment_und_Drehzahl1 annotation(
        Placement(visible = true, transformation(origin = {60, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {66, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      if (Drehrichtung == 1) then
        n = f * 60;
//in 1/min
        omega = 2 * pi * f;
        kt = ke / (2 * pi);
        U_a = R_a * I_a + L_a * der(I_a) + U_g;
        U_g = ke * f;
        M_e = kt * I_a;
        M_e = J_tot * der(omega) + M_L + M_f;
        M_f = cf * f;
      elseif (Drehrichtung == 2) then   
        n = f * 60;
//in 1/min
        omega = 2 * pi * f;
        kt = ke / (2 * pi);
        -U_a = R_a * I_a + L_a * der(I_a) + U_g;
        U_g = ke * f;
        M_e = kt * I_a;
        M_e = J_tot * der(omega) + M_L + M_f;
        M_f = cf * f;
      elseif (Drehrichtung == 3) then
        n = f * 60;
//in 1/min
        omega = 2 * pi * f;
        kt = ke / (2 * pi);
        0 = R_a * I_a + L_a * der(I_a) + U_g;
        0 = ke * f;
        M_e = kt * I_a;
        M_e = J_tot * der(omega) + M_L + M_f;
        M_f = cf * f;
      end if;
////////////////////////////////////////////////
      annotation(
        Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {-20, 41}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {32, 14}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {84, 13}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {-26, -3}}), Polygon(origin = {-52, 0}, rotation = 180, fillPattern = FillPattern.Solid, points = {{12, 16}, {12, -44}, {18, -44}, {28, -34}, {28, 6}, {18, 16}, {12, 16}}), Rectangle(origin = {-20, 31}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, 9}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, -3}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, -13}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {-20, 19}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {-20, -28}, rotation = 90, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {-18, -33}, fillPattern = FillPattern.Solid, extent = {{-52, 3}, {50, -3}})}));
    end EMotor2;
  annotation(    Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {4, -3}, lineColor = {255, 255, 255}, fillColor = {185, 185, 185}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-104, 103}, {96, -97}}),  Rectangle(origin = {0, 29}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {52, 2}, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {104, 1}, fillPattern = FillPattern.Solid, extent = {{-40, 5}, {-26, -3}}), Polygon(origin = {-52, 2}, rotation = 180, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {0, 19}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, -3}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, -15}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, -25}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Rectangle(origin = {0, 7}, fillPattern = FillPattern.Solid, extent = {{-40, 3}, {40, -3}}), Polygon(origin = {0, -40}, rotation = 90, fillPattern = FillPattern.Solid, points = {{-8, 30}, {-8, -30}, {-2, -30}, {8, -20}, {8, 20}, {-2, 30}, {-8, 30}}), Rectangle(origin = {2, -45}, fillPattern = FillPattern.Solid, extent = {{-52, 3}, {50, -3}}), Rectangle(origin = {4, 2}, extent = {{-82, 78}, {82, -78}})}));
  
  
  end Modelle;

  package Beispiele
    model Flaschenzugsystem
      Modelle.Masse masse1 annotation(
        Placement(visible = true, transformation(origin = {0, -75}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
      Modelle.Rollensystem rollensystem1(n = 4) annotation(
        Placement(visible = true, transformation(origin = {1.77636e-15, 1}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {0, 60}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelle.Test_Motor test_Motor1 annotation(
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
      Modelle.Rolle_oben rolle_oben annotation(
        Placement(visible = true, transformation(origin = {-1, 28}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
      Modelle.Masse masse1(m = 10) annotation(
        Placement(visible = true, transformation(origin = {14, -26}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {-1, 81}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
      Modelle.Test_Motor test_Motor1 annotation(
        Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
      Modelle.Masse masse2(m = 10) annotation(
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
      Modelle.Rolle_oben rolle_oben annotation(
        Placement(visible = true, transformation(origin = {-1, 40}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
      Modelle.Masse masse1 annotation(
        Placement(visible = true, transformation(origin = {-1, -83}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
      Modelle.Rolle_unten rolle_unten1(m = 0)  annotation(
        Placement(visible = true, transformation(origin = {-1, -29}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {-1, 83}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
    Modelle.Test_Motor test_Motor1 annotation(
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
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {2, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben annotation(
        Placement(visible = true, transformation(origin = {2, 62}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben1 annotation(
        Placement(visible = true, transformation(origin = {2, 20}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelle.Masse masse1 annotation(
        Placement(visible = true, transformation(origin = {6, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelle.Rolle_unten rolle_unten2(m = 0)  annotation(
        Placement(visible = true, transformation(origin = {6, -46}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    Modelle.Test_Motor test_Motor1 annotation(
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
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {1, 93}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben annotation(
        Placement(visible = true, transformation(origin = {1, 61}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben1(m = 0)  annotation(
        Placement(visible = true, transformation(origin = {1, 19}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
      Modelle.Masse masse1 annotation(
        Placement(visible = true, transformation(origin = {2, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelle.Rolle_unten rolle_unten2(m = 0)  annotation(
        Placement(visible = true, transformation(origin = {3, -55}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
    Modelle.Rolle_unten rolle_unten1(m = 0)  annotation(
        Placement(visible = true, transformation(origin = {4, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelle.Test_Motor test_Motor1 annotation(
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
      Modelle.Test_Motor test_Motor1 annotation(
        Placement(visible = true, transformation(origin = {-52, 12}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {-1, 91}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelle.Fixpoint fixpoint2 annotation(
        Placement(visible = true, transformation(origin = {2, 0}, extent = {{-12, -12}, {12, 12}}, rotation = 180)));
      Modelle.Masse masse1 annotation(
        Placement(visible = true, transformation(origin = {18, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben1 annotation(
        Placement(visible = true, transformation(origin = {-1, 61}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben2 annotation(
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
      Modelle.Test_Motor test_Motor1 annotation(
        Placement(visible = true, transformation(origin = {-60, 12}, extent = {{-26, -26}, {26, 26}}, rotation = 0)));
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {-21, 79}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelle.Masse masse1 annotation(
        Placement(visible = true, transformation(origin = {24, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelle.Fixpoint fixpoint2 annotation(
        Placement(visible = true, transformation(origin = {23, 79}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
    Modelle.Rolle_unten rolle_unten1(m = 0)  annotation(
        Placement(visible = true, transformation(origin = {1, -7}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
    Modelle.Rolle_unten rolle_unten2(m = 0)  annotation(
        Placement(visible = true, transformation(origin = {45, -9}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
    Modelle.Fixpoint fixpoint3 annotation(
        Placement(visible = true, transformation(origin = {55, 79}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
    Modelle.Rolle_oben rolle_oben1 annotation(
        Placement(visible = true, transformation(origin = {-21, 51}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
    Modelle.Rolle_oben rolle_oben2 annotation(
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
      Modelle.Test_Motor test_Motor1 annotation(
        Placement(visible = true, transformation(origin = {52, -78}, extent = {{26, -26}, {-26, 26}}, rotation = 0)));
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {-19, 91}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelle.Fixpoint fixpoint2 annotation(
        Placement(visible = true, transformation(origin = {-20, -22}, extent = {{-12, -12}, {12, 12}}, rotation = 180)));
      Modelle.Masse masse1 annotation(
        Placement(visible = true, transformation(origin = {-30, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelle.Fixpoint fixpoint3 annotation(
        Placement(visible = true, transformation(origin = {-10, -88}, extent = {{-12, -12}, {12, 12}}, rotation = 180)));
    Modelle.Rolle_oben rolle_oben1 annotation(
        Placement(visible = true, transformation(origin = {-19, 67}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
    Modelle.Rolle_oben rolle_oben2 annotation(
        Placement(visible = true, transformation(origin = {-9, 17}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
    Modelle.Rolle_oben rolle_oben3 annotation(
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
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {-50, 88}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      Modelle.Masse masse1 annotation(
        Placement(visible = true, transformation(origin = {10, -64}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelle.Test_Motor test_Motor1 annotation(
        Placement(visible = true, transformation(origin = {-80, 10}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelle.Fixpoint fixpoint2 annotation(
        Placement(visible = true, transformation(origin = {-10, 88}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Modelle.Fixpoint fixpoint3 annotation(
        Placement(visible = true, transformation(origin = {30, 88}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Modelle.Fixpoint fixpoint4 annotation(
        Placement(visible = true, transformation(origin = {70, 88}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
    Modelle.Rolle_unten rolle_unten1 annotation(
        Placement(visible = true, transformation(origin = {-30, -8}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelle.Rolle_unten rolle_unten2 annotation(
        Placement(visible = true, transformation(origin = {10, -8}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelle.Rolle_unten rolle_unten3 annotation(
        Placement(visible = true, transformation(origin = {50, -8}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelle.Fixpoint fixpoint5 annotation(
        Placement(visible = true, transformation(origin = {80, -60}, extent = {{-14, 14}, {14, -14}}, rotation = 0)));
    Modelle.Rolle_oben rolle_oben1 annotation(
        Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelle.Rolle_oben rolle_oben2 annotation(
        Placement(visible = true, transformation(origin = {30, 60}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelle.Rolle_oben rolle_oben3 annotation(
        Placement(visible = true, transformation(origin = {70, 60}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    Modelle.Rolle_oben rolle_oben4 annotation(
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
      Modelle.Test_Motor test_Motor1 annotation(
        Placement(visible = true, transformation(origin = {-60, -62}, extent = {{28, -28}, {-28, 28}}, rotation = -90)));
      Modelle.Fixpoint fixpoint2 annotation(
        Placement(visible = true, transformation(origin = {-30, -76}, extent = {{16, 16}, {-16, -16}}, rotation = 0)));
      Modelle.Masse masse1(m = 12) annotation(
        Placement(visible = true, transformation(origin = {40, -58}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
      Modelle.Fixpoint fixpoint3 annotation(
        Placement(visible = true, transformation(origin = {-50, 78}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelle.Rolle_unten rolle_unten1(m = 10) annotation(
        Placement(visible = true, transformation(origin = {-30, -34}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {-10, 78}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelle.Fixpoint fixpoint5 annotation(
        Placement(visible = true, transformation(origin = {30, 78}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelle.Rolle_unten rolle_unten2(m = 10) annotation(
        Placement(visible = true, transformation(origin = {10, -34}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelle.Fixpoint fixpoint4 annotation(
        Placement(visible = true, transformation(origin = {10, -76}, extent = {{16, 16}, {-16, -16}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben1(m = 10) annotation(
        Placement(visible = true, transformation(origin = {-10, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben2(m = 10) annotation(
        Placement(visible = true, transformation(origin = {30, 50}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben3(m = 10) annotation(
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
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {11, 59}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelle.Fixpoint fixpoint2 annotation(
        Placement(visible = true, transformation(origin = {51, 59}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben1 annotation(
        Placement(visible = true, transformation(origin = {11, 31}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben2 annotation(
        Placement(visible = true, transformation(origin = { 51, 31}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
    Modelle.Masse masse1(m = 7)  annotation(
        Placement(visible = true, transformation(origin = {0, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelle.Masse masse2(m = 5)  annotation(
        Placement(visible = true, transformation(origin = {40, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelle.Seilwinde seilwinde1 annotation(
        Placement(visible = true, transformation(origin = {14, -46}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelle.Getriebe getriebe1(i = 10)  annotation(
        Placement(visible = true, transformation(origin = {8, -76}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    Modelle.EMotor eMotor1(U_a = 12)  annotation(
        Placement(visible = true, transformation(origin = {-66, -52}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    Modelle.EMotor eMotor2 annotation(
        Placement(visible = true, transformation(origin = {-66, -78}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    Modelle.Seilwinde seilwinde2 annotation(
        Placement(visible = true, transformation(origin = {55, -73}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
    equation
      connect(eMotor1.port_Drehmoment_und_Drehzahl1, seilwinde1.port_T_n) annotation(
        Line(points = {{-54, -49}, {0, -49}}, color = {0, 85, 255}));
      connect(seilwinde1.port_F_s, rolle_oben1.port_rechts) annotation(
        Line(points = {{22, -31}, {22, 20}}, color = {255, 0, 0}));
      connect(getriebe1.Port_out, seilwinde2.port_T_n) annotation(
        Line(points = {{20, -76}, {42, -76}}, color = {0, 85, 255}));
      connect(seilwinde2.port_F_s, rolle_oben2.port_rechts) annotation(
        Line(points = {{62, -59}, {62, 20}}, color = {255, 0, 0}));
      connect(eMotor2.port_Drehmoment_und_Drehzahl1, getriebe1.Port_in) annotation(
        Line(points = {{-54, -75}, {-4, -75}, {-4, -76}}, color = {0, 85, 255}));
      connect(rolle_oben2.port_links, masse2.PortMasse) annotation(
        Line(points = {{40, 20}, {40, 20}, {40, -10}, {40, -10}}, color = {255, 0, 0}));
      connect(rolle_oben1.port_links, masse1.PortMasse) annotation(
        Line(points = {{0, 20}, {0, 20}, {0, -10}, {0, -10}}, color = {255, 0, 0}));
      connect(fixpoint1.portFix, rolle_oben1.port_oben) annotation(
        Line(points = {{11, 57.44}, {11, 45.44}}, color = {255, 0, 0}));
      connect(fixpoint2.portFix, rolle_oben2.port_oben) annotation(
        Line(points = {{51, 57.44}, {52, 57.44}, {52, 59.44}, {51, 59.44}, {51, 45.44}, {52, 45.44}, {52, 43.44}, {51, 43.44}}, color = {255, 0, 0}));
      annotation(
        experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
        __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
        Diagram);
    end Test_Getriebe1;

    model Test_Getriebe2
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {11, 59}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelle.Fixpoint fixpoint2 annotation(
        Placement(visible = true, transformation(origin = {51, 59}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben1 annotation(
        Placement(visible = true, transformation(origin = {11, 31}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben2 annotation(
        Placement(visible = true, transformation(origin = {51, 31}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
      Modelle.Masse masse1(m = 0) annotation(
        Placement(visible = true, transformation(origin = {0, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelle.Masse masse2(m = 0.5) annotation(
        Placement(visible = true, transformation(origin = {40, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelle.Seilwinde seilwinde1 annotation(
        Placement(visible = true, transformation(origin = {14, -46}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelle.EMotor eMotor1(U_a = 48) annotation(
        Placement(visible = true, transformation(origin = {-66, -52}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
      Modelle.EMotor eMotor2 annotation(
        Placement(visible = true, transformation(origin = {-66, -78}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
      Modelle.Seilwinde seilwinde2 annotation(
        Placement(visible = true, transformation(origin = {55, -73}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
    equation
      connect(eMotor2.port_Drehmoment_und_Drehzahl1, seilwinde2.port_T_n) annotation(
        Line(points = {{-54, -76}, {42, -76}, {42, -76}, {42, -76}}, color = {0, 85, 255}));
      connect(eMotor1.port_Drehmoment_und_Drehzahl1, seilwinde1.port_T_n) annotation(
        Line(points = {{-54, -49}, {0, -49}}, color = {0, 85, 255}));
      connect(seilwinde1.port_F_s, rolle_oben1.port_rechts) annotation(
        Line(points = {{22, -31}, {22, 20}}, color = {255, 0, 0}));
      connect(seilwinde2.port_F_s, rolle_oben2.port_rechts) annotation(
        Line(points = {{62, -59}, {62, 20}}, color = {255, 0, 0}));
      connect(rolle_oben2.port_links, masse2.PortMasse) annotation(
        Line(points = {{40, 20}, {40, 20}, {40, -10}, {40, -10}}, color = {255, 0, 0}));
      connect(rolle_oben1.port_links, masse1.PortMasse) annotation(
        Line(points = {{0, 20}, {0, 20}, {0, -10}, {0, -10}}, color = {255, 0, 0}));
      connect(fixpoint1.portFix, rolle_oben1.port_oben) annotation(
        Line(points = {{11, 57.44}, {11, 45.44}}, color = {255, 0, 0}));
      connect(fixpoint2.portFix, rolle_oben2.port_oben) annotation(
        Line(points = {{51, 57.44}, {52, 57.44}, {52, 59.44}, {51, 59.44}, {51, 45.44}, {52, 45.44}, {52, 43.44}, {51, 43.44}}, color = {255, 0, 0}));
      annotation(
        experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
        __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
        Diagram);
    end Test_Getriebe2;

    model Test_Rollen
      Modelle.Rolle_oben rolle_oben(m = 10)  annotation(
        Placement(visible = true, transformation(origin = {-1, 28}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {-1, 81}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
      Modelle.Test_Motor test_Motor1 annotation(
        Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
      Flaschenzug.Modelle.Masse masse2(m = 10) annotation(
        Placement(visible = true, transformation(origin = {0, -68}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Flaschenzug.Modelle.Rolle_unten rolle_unten1 annotation(
        Placement(visible = true, transformation(origin = {14, -32}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    equation
      connect(rolle_unten1.port_links, rolle_unten1.port_rechts) annotation(
        Line(points = {{4, -24}, {4, -24}, {4, -10}, {24, -10}, {24, -24}, {24, -24}}, color = {255, 0, 0}));
      connect(rolle_unten1.port_oben, rolle_oben.port_rechts) annotation(
        Line(points = {{14, -19}, {14, 12}}, color = {0, 170, 0}));
      connect(rolle_oben.port_unten, masse2.PortMasse) annotation(
        Line(points = {{0, 6}, {0, -63}}, color = {255, 0, 0}));
      connect(test_Motor1.Port_Motor, rolle_oben.port_links) annotation(
        Line(points = {{-41, 0}, {-16, 0}, {-16, 12}}, color = {255, 0, 0}));
      connect(rolle_oben.port_oben, fixpoint1.portFix) annotation(
        Line(points = {{-1, 50}, {-1, 78}}, color = {0, 170, 0}));
      annotation(
        experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02),
        __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
    end Test_Rollen;

    model Test_Getriebe3
      Modelle.Fixpoint fixpoint1 annotation(
        Placement(visible = true, transformation(origin = {11, 59}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelle.Fixpoint fixpoint2 annotation(
        Placement(visible = true, transformation(origin = {51, 59}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben1 annotation(
        Placement(visible = true, transformation(origin = {11, 31}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
      Modelle.Rolle_oben rolle_oben2 annotation(
        Placement(visible = true, transformation(origin = {51, 31}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
      Modelle.Masse masse1(m = 0.5) annotation(
        Placement(visible = true, transformation(origin = {0, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelle.Masse masse2(m = 10) annotation(
        Placement(visible = true, transformation(origin = {40, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelle.Seilwinde seilwinde1 annotation(
        Placement(visible = true, transformation(origin = {14, -46}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
      Modelle.Seilwinde seilwinde2 annotation(
        Placement(visible = true, transformation(origin = {55, -73}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  Flaschenzug.Modelle.EMotor2 eMotor21 annotation(
        Placement(visible = true, transformation(origin = {-61, -51}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  Flaschenzug.Modelle.EMotor2 eMotor22 annotation(
        Placement(visible = true, transformation(origin = {-59, -79}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    equation
      connect(eMotor22.port_Drehmoment_und_Drehzahl1, seilwinde2.port_T_n) annotation(
        Line(points = {{-45, -76}, {42, -76}}, color = {0, 85, 255}));
      connect(eMotor21.port_Drehmoment_und_Drehzahl1, seilwinde1.port_T_n) annotation(
        Line(points = {{-48, -48}, {0, -48}, {0, -48}, {0, -48}}, color = {0, 85, 255}));
      connect(seilwinde1.port_F_s, rolle_oben1.port_rechts) annotation(
        Line(points = {{22, -31}, {22, 20}}, color = {255, 0, 0}));
      connect(seilwinde2.port_F_s, rolle_oben2.port_rechts) annotation(
        Line(points = {{62, -59}, {62, 20}}, color = {255, 0, 0}));
      connect(rolle_oben2.port_links, masse2.PortMasse) annotation(
        Line(points = {{40, 20}, {40, 20}, {40, -10}, {40, -10}}, color = {255, 0, 0}));
      connect(rolle_oben1.port_links, masse1.PortMasse) annotation(
        Line(points = {{0, 20}, {0, 20}, {0, -10}, {0, -10}}, color = {255, 0, 0}));
      connect(fixpoint1.portFix, rolle_oben1.port_oben) annotation(
        Line(points = {{11, 57.44}, {11, 45.44}}, color = {255, 0, 0}));
      connect(fixpoint2.portFix, rolle_oben2.port_oben) annotation(
        Line(points = {{51, 57.44}, {52, 57.44}, {52, 59.44}, {51, 59.44}, {51, 45.44}, {52, 45.44}, {52, 43.44}, {51, 43.44}}, color = {255, 0, 0}));
      annotation(
        experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
        __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"),
        Diagram);
    end Test_Getriebe3;
  annotation (Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {4, -3}, lineColor = {255, 255, 255}, fillColor = {185, 185, 185}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-104, 103}, {96, -97}}), Rectangle(origin = {0, 1}, extent = {{-80, 83}, {80, -83}}), Rectangle(origin = {-47, 7}, fillPattern = FillPattern.Solid, extent = {{-5, -51}, {3, 51}}), Rectangle(origin = {45, 7}, fillPattern = FillPattern.Solid, extent = {{-3, -51}, {5, 51}}), Polygon(origin = {22, 7}, fillPattern = FillPattern.Solid, points = {{20, 51}, {26, 45}, {-16, -25}, {-24, -23}, {-26, -25}, {20, 51}}), Polygon(origin = {-23, 7}, fillPattern = FillPattern.Solid, points = {{-27, 51}, {-21, 51}, {-27, 43}, {19, -25}, {29, -25}, {-21, 51}, {-27, 51}})}));  
  end Beispiele;

annotation (Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {4, -3}, lineColor = {255, 255, 255}, fillColor = {185, 185, 185}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-104, 103}, {96, -97}}), Ellipse(origin = {0, 39}, lineThickness = 2, extent = {{-18, 19}, {18, -17}}, endAngle = 360), Ellipse(origin = {-1, 41}, fillPattern = FillPattern.Solid, extent = {{-5, 5}, {7, -7}}, endAngle = 360), Line(origin = {0, 40}, points = {{0, 24}, {0, -24}}, thickness = 2), Ellipse(origin = {0, -41}, lineThickness = 2, extent = {{-18, 19}, {18, -17}}, endAngle = 360), Line(origin = {-0.293057, -40.6258}, points = {{0, 24}, {0, -24}}, thickness = 2), Line(origin = {-49, 21}, points = {{37, 33}, {-7, -19}}, thickness = 1), Line(origin = {13.403, 5.76893}, points = {{5, 35}, {5, -45}}, thickness = 1), Line(origin = {-23.1774, 3.73566}, points = {{5, 35}, {5, -45}}, thickness = 1), Line(origin = {-18.7797, 2.88865}, points = {{19, 9}, {1, -37}}, thickness = 1), Ellipse(origin = {-1, -39}, fillPattern = FillPattern.Solid, extent = {{-5, 5}, {7, -7}}, endAngle = 360), Rectangle(origin = {0, 14}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {0, -14}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Line(origin = {-0.533186, 23.637}, points = {{19, 9}, {1, -37}}, thickness = 1), Rectangle(origin = {0, 66}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {0, -66}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {-58, 0}, fillPattern = FillPattern.Solid, extent = {{-2, 2}, {2, -2}}), Rectangle(origin = {0, -1}, extent = {{-82, 85}, {82, -85}})}),
    Documentation(info = "<html><head></head><body>





<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><!--[if gte mso 9]><xml>
 <o:OfficeDocumentSettings>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]-->


<!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Normal</w:View>
  <w:Zoom>0</w:Zoom>
  <w:TrackMoves>false</w:TrackMoves>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>DE</w:LidThemeOther>
  <w:LidThemeAsian>EN-GB</w:LidThemeAsian>
  <w:LidThemeComplexScript>AR-SA</w:LidThemeComplexScript>
  <w:Compatibility>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:EnableOpenTypeKerning/>
   <w:DontFlipMirrorIndents/>
   <w:OverrideTableStyleHps/>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val=\"Cambria Math\"/>
   <m:brkBin m:val=\"before\"/>
   <m:brkBinSub m:val=\"&#45;-\"/>
   <m:smallFrac m:val=\"off\"/>
   <m:dispDef/>
   <m:lMargin m:val=\"0\"/>
   <m:rMargin m:val=\"0\"/>
   <m:defJc m:val=\"centerGroup\"/>
   <m:wrapIndent m:val=\"1440\"/>
   <m:intLim m:val=\"subSup\"/>
   <m:naryLim m:val=\"undOvr\"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"
  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"
  LatentStyleCount=\"376\">
  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>
  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 6\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 7\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 8\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index 9\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Normal Indent\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"footnote text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"annotation text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"header\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"footer\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"index heading\"/>
  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"table of figures\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"envelope address\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"envelope return\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"footnote reference\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"annotation reference\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"line number\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"page number\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"endnote reference\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"endnote text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"table of authorities\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"macro\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"toa heading\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Bullet 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Number 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Closing\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Signature\"/>
  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text Indent\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"List Continue 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Message Header\"/>
  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Salutation\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Date\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text First Indent\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text First Indent 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Note Heading\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text Indent 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Body Text Indent 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Block Text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Hyperlink\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"FollowedHyperlink\"/>
  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>
  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Document Map\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Plain Text\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"E-mail Signature\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Top of Form\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Bottom of Form\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Normal (Web)\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Acronym\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Address\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Cite\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Code\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Definition\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Keyboard\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Preformatted\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Sample\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Typewriter\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"HTML Variable\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Normal Table\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"annotation subject\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"No List\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Outline List 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Outline List 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Outline List 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Simple 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Simple 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Simple 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Classic 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Classic 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Classic 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Classic 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Colorful 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Colorful 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Colorful 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Columns 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 6\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 7\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Grid 8\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 4\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 5\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 6\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 7\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table List 8\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table 3D effects 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table 3D effects 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table 3D effects 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Contemporary\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Elegant\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Professional\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Subtle 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Subtle 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Web 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Web 2\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Web 3\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Balloon Text\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Table Theme\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>
  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>
  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"
   Name=\"List Paragraph\"/>
  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>
  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"
   Name=\"Intense Quote\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"
   Name=\"Subtle Emphasis\"/>
  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"
   Name=\"Intense Emphasis\"/>
  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"
   Name=\"Subtle Reference\"/>
  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"
   Name=\"Intense Reference\"/>
  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>
  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>
  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"
   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>
  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"Grid Table 1 Light Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"Grid Table 6 Colorful Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"Grid Table 7 Colorful Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 1\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 2\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 3\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 4\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 5\"/>
  <w:LsdException Locked=\"false\" Priority=\"46\"
   Name=\"List Table 1 Light Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"51\"
   Name=\"List Table 6 Colorful Accent 6\"/>
  <w:LsdException Locked=\"false\" Priority=\"52\"
   Name=\"List Table 7 Colorful Accent 6\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Mention\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Smart Hyperlink\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Hashtag\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Unresolved Mention\"/>
  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"
   Name=\"Smart Link\"/>
 </w:LatentStyles>
</xml><![endif]-->

<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:\"Normale Tabelle\";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:\"\";
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:8.0pt;
	mso-para-margin-left:0cm;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:\"Calibri\",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;
	mso-fareast-language:EN-US;}
</style>
<![endif]-->



<!--StartFragment-->

<p class=\"MsoNormal\"><b><span lang=\"DE\" style=\"font-size: 18pt; font-family: 'MS Shell Dlg 2', sans-serif;\">Flaschenzug
Bibliothek Überblick<o:p></o:p></span></b></p>

<p class=\"MsoNormal\"><b><span lang=\"DE\" style=\"font-size: 9pt; font-family: 'MS Shell Dlg 2', sans-serif;\">Information</span></b><span lang=\"DE\" style=\"font-size: 9pt; font-family: 'MS Shell Dlg 2', sans-serif;\"><o:p></o:p></span></p>

<p class=\"MsoNormal\"><span lang=\"DE\" style=\"font-size: 13.5pt; font-family: 'MS Shell Dlg 2', sans-serif;\">Die Flaschenzug Bibliothek besteht aus folgenden
Bauteilen<o:p></o:p></span></p>

<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">
 <tbody><tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><b><span lang=\"DE\" style=\"font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\">Bibliothek <o:p></o:p></span></b></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><b><span lang=\"DE\" style=\"font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\">Beschreibung<o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shapetype id=\"_x0000_t75\"
   coordsize=\"21600,21600\" o:spt=\"75\" o:preferrelative=\"t\" path=\"m@4@5l@4@11@9@11@9@5xe\"
   filled=\"f\" stroked=\"f\">
   <v:stroke joinstyle=\"miter\"/>
   <v:formulas>
    <v:f eqn=\"if lineDrawn pixelLineWidth 0\"/>
    <v:f eqn=\"sum @0 1 0\"/>
    <v:f eqn=\"sum 0 0 @1\"/>
    <v:f eqn=\"prod @2 1 2\"/>
    <v:f eqn=\"prod @3 21600 pixelWidth\"/>
    <v:f eqn=\"prod @3 21600 pixelHeight\"/>
    <v:f eqn=\"sum @0 0 1\"/>
    <v:f eqn=\"prod @6 1 2\"/>
    <v:f eqn=\"prod @7 21600 pixelWidth\"/>
    <v:f eqn=\"sum @8 21600 0\"/>
    <v:f eqn=\"prod @7 21600 pixelHeight\"/>
    <v:f eqn=\"sum @10 21600 0\"/>
   </v:formulas>
   <v:path o:extrusionok=\"f\" gradientshapeok=\"t\" o:connecttype=\"rect\"/>
   <o:lock v:ext=\"edit\" aspectratio=\"t\"/>
  </v:shapetype><v:shape id=\"Grafik_x0020_15\" o:spid=\"_x0000_i1038\" type=\"#_x0000_t75\"
   style='width:57pt;height:57pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image001.png\"
    o:title=\"\" cropright=\"-7f\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"76\" height=\"76\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.jpg\" v:shapes=\"Grafik_x0020_15\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">F-s- Connector: Port1:<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Der Port1 Kraft Weg Connector dient dazu Bauteile zu verbinden und
  Kräfte und Wege zu übertragen. <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Er zeigt ein grünes Dreieck, das nach oben zeigt.<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_16\" o:spid=\"_x0000_i1037\"
   type=\"#_x0000_t75\" style='width:56.25pt;height:56.25pt;visibility:visible;
   mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image003.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"75\" height=\"75\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.jpg\" v:shapes=\"Grafik_x0020_16\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">F-s- Connector: Port2:<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Der Port1 Kraft Weg Connector dient dazu Bauteile zu verbinden und
  Kräfte und Wege zu übertragen. <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Er zeigt ein rotes Dreieck, das nach unten zeigt.<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_17\" o:spid=\"_x0000_i1036\"
   type=\"#_x0000_t75\" style='width:56.25pt;height:56.25pt;visibility:visible;
   mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image005.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"75\" height=\"75\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.jpg\" v:shapes=\"Grafik_x0020_17\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">F-s- Connector: Port_Rolle_Seilanschluss:<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Der Port1 Kraft Weg Connector dient dazu Rollen zu verbinden und
  Kräfte und Wege zu übertragen. <o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_19\" o:spid=\"_x0000_i1035\"
   type=\"#_x0000_t75\" style='width:56.25pt;height:56.25pt;visibility:visible;
   mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image007.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"75\" height=\"75\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.jpg\" v:shapes=\"Grafik_x0020_19\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">M-n Connector: Port_Drehmoment_und_Drehzahl:<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Der Port_Drehmoment_und_Drehzahl Connector dient dazu Bauteile mit
  In/Output von Drehmomenten und Drehzahlen zu verbinden und diese zu
  übertragen.<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_20\" o:spid=\"_x0000_i1034\"
   type=\"#_x0000_t75\" style='width:120.75pt;height:42.75pt;visibility:visible;
   mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image009.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"161\" height=\"57\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.jpg\" v:shapes=\"Grafik_x0020_20\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Fixpunkt:<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Zur statischen Befestigung von Rollensystemen wurde ein Fixpunkt
  implementiert, der den Weg auf 0 setzt und die wirkende Kraft darstellen
  kann. <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Keine Parameter<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_21\" o:spid=\"_x0000_i1033\"
   type=\"#_x0000_t75\" style='width:90.75pt;height:57pt;visibility:visible;
   mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image011.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"121\" height=\"76\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.jpg\" v:shapes=\"Grafik_x0020_21\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Motor:<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Dieser Motor gibt eine Kraft und den Weg den das durchlaufende Seil
  zurücklegt vor. <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Parameter:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Ankerinduktivität L_a<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Ankerwiderstand R_a<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Drehmomentkonstante k_t<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Spannungskonstante k_e <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- elektrisches Drehmoment M_e<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Lastmoment M_L<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Drehzahl n<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Spannung U <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Radius der Motorwelle r<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width=\"256\" style=\"width:192.0pt;padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\" style=\"font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><br>
  </span><span lang=\"DE\"><!--[if gte vml 1]><v:shape
   id=\"Grafik_x0020_22\" o:spid=\"_x0000_i1032\" type=\"#_x0000_t75\" style='width:112.5pt;
   height:70.5pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image013.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"150\" height=\"94\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image014.jpg\" v:shapes=\"Grafik_x0020_22\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">EMotor:<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Dieser Motor gibt ein Drehmoment und die Drehzahl der Welle vor.<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Parameter: <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Ankerinduktivität L_a<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Ankerwiderstand R_a<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Drehmomentkonstante k_t<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Spannungskonstante k_e <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Trägheit am Motor J_tot<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_23\" o:spid=\"_x0000_i1031\"
   type=\"#_x0000_t75\" style='width:112.5pt;height:70.5pt;visibility:visible;
   mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image015.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"150\" height=\"94\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image016.jpg\" v:shapes=\"Grafik_x0020_23\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">TestMotor:<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Der Testmotor dient dazu eine Kraft oder einen Weg vorzugeben. Ohne
  einen reelen Motor zu verwenden.<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Keine Parameter.<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_24\" o:spid=\"_x0000_i1030\"
   type=\"#_x0000_t75\" style='width:93.75pt;height:70.5pt;visibility:visible;
   mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image017.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"125\" height=\"94\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image018.jpg\" v:shapes=\"Grafik_x0020_24\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Getriebe:<br>
  Das Getriebe übersetzt das eingehende Drehmoment und die eingehende Drehzahl
  mit dem Übersetzungsfaktor i.<br>
  - Übersetzung i<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_25\" o:spid=\"_x0000_i1029\"
   type=\"#_x0000_t75\" style='width:70.5pt;height:70.5pt;visibility:visible;
   mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image019.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"94\" height=\"94\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image020.jpg\" v:shapes=\"Grafik_x0020_25\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Seilwinde:<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Errechnet aus eingehendem Drehmoment durch den parametrierbaren
  Durchmesser der Seilwinde.<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Parameter: <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Durchmesser Seilwinde D_SW<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><span lang=\"DE\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_26\" o:spid=\"_x0000_i1028\"
   type=\"#_x0000_t75\" style='width:84.75pt;height:84.75pt;visibility:visible;
   mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image021.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"113\" height=\"113\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image022.jpg\" v:shapes=\"Grafik_x0020_26\"><!--[endif]--></span><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><br>
  <!--[if !supportLineBreakNewLine]--><br>
  <!--[endif]--><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Rollensystem: <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Das Rollensystem stellt ein Rollensystem dar und verändert die eingehenden
  und ausgehenden Kräfte gemäß der parametrierbaren Rollenanzahl.<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Parameter: <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Rollenanzahl n<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><!--[if gte vml 1]><v:shape
   id=\"Grafik_x0020_1\" o:spid=\"_x0000_i1027\" type=\"#_x0000_t75\" style='width:70.5pt;
   height:70.5pt;visibility:visible;mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image023.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"94\" height=\"94\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image024.jpg\" v:shapes=\"Grafik_x0020_1\"><!--[endif]--><span lang=\"DE\" style=\"font-size:
  12.0pt;font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Rolle Oben: <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Die Rolle oben fungiert als Universalrolle. Sie kann beliebig oft hintereinander
  gesetzt werde, solange entsprechend viele Rolle Unten ergänzt werden und der
  Anschluss, wie vorgegeben erfolgt. In jeder Rolle wird die Trägheit der Rolle
  berechnet und abgezogen.<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Parameter: <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Masse der Rolle<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_2\"
   o:spid=\"_x0000_i1026\" type=\"#_x0000_t75\" style='width:70.5pt;height:70.5pt;
   visibility:visible;mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image025.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"94\" height=\"94\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image026.jpg\" v:shapes=\"Grafik_x0020_2\"><!--[endif]--><span lang=\"DE\" style=\"font-size:
  10.0pt;font-family:&quot;Courier New&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
  mso-ansi-language:DE;mso-fareast-language:EN-GB\"><o:p></o:p></span></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Rolle Unten: <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Die Rolle unten fungiert als Universalrolle. Sie kann beliebig oft hintereinander
  gesetzt werde, solange entsprechend viele Rolle Oben ergänzt werden und der Anschluss,
  wie vorgegeben erfolgt. In jeder Rolle wird die Trägheitskraft der Rolle
  berechnet und von der durchgereichten Kraft abgezogen.<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Parameter: <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">- Masse der Rolle m<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\"><!--[if gte vml 1]><v:shape id=\"Grafik_x0020_3\"
   o:spid=\"_x0000_i1025\" type=\"#_x0000_t75\" style='width:71.25pt;height:70.5pt;
   visibility:visible;mso-wrap-style:square'>
   <v:imagedata src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image027.png\"
    o:title=\"\"/>
  </v:shape><![endif]--><!--[if !vml]--><img width=\"95\" height=\"94\" src=\"file:///C:/Users/JANNIS~1/AppData/Local/Temp/msohtmlclip1/01/clip_image028.jpg\" v:shapes=\"Grafik_x0020_3\"><!--[endif]--><o:p></o:p></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Masse: <o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Der Modellblock Masse fungiert als Last des Systems. Die Trägheit der
  Masse wird in der Berechnung berücksichtigt.<o:p></o:p></span></p>
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">Parameter:&nbsp; - Masse m<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;\">Beispielmodelle<o:p></o:p></p>
  </td>
  <td style=\"padding:1.5pt 1.5pt 1.5pt 1.5pt\">
  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"DE\" style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;
  mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:DE;mso-fareast-language:
  EN-GB\">In der Kategorie Beispielmodelle, können Beispiele für verschiedene denkbare
  Kombinationen in der korrekten Verbindungsweise gesichtet werden.<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class=\"MsoNormal\"><span lang=\"DE\">&nbsp;</span></p>

<!--EndFragment--></body></html>"));
end Flaschenzug;
