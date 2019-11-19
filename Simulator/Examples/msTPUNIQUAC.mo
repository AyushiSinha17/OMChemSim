within Simulator.Examples;

model msTPUNIQUAC
  import data = Simulator.Files.ChemsepDatabase;
  parameter data.Ethanol eth;
  parameter data.Water wat;
  extends Simulator.Streams.MaterialStream(Nc = 2, C = {eth, wat}, Pbubl(start = 101325), Pdew(start = 101325), x_pc(each start = 0.33), xvap(start = 0.68));
  extends Simulator.Files.ThermodynamicPackages.UNIQUAC;
equation
  x_pc[1, :] = {0.5, 0.5};
  F_p[1] = 50;
  P = 101325;
  T = 354;
end msTPUNIQUAC;