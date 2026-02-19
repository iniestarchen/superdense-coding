OPENQASM 2.0;
include "qelib1.inc";
// Superdense coding — encodes classical message "11"
qreg q[2];
creg c[2];
// Preparation: create Bell pair
h q[0];
cx q[0],q[1];
// Alice encodes "11": apply X then Z to her qubit q[0]
x q[0];
z q[0];
// Bob decodes: reverse Bell circuit
cx q[0],q[1];
h q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
