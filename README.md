# Superdense Coding

> **Category**: fundamentals &nbsp;|&nbsp; **Difficulty**: beginner &nbsp;|&nbsp; **Qubits**: 2 &nbsp;|&nbsp; **Gates**: 6 &nbsp;|&nbsp; **Depth**: 6

Superdense coding is the 'dual' of teleportation: it uses a shared entangled pair and a single qubit transmission to communicate 2 classical bits. Alice applies local Pauli operations to encode her 2-bit message, then sends her qubit to Bob. Bob performs a Bell measurement to decode the message. This circuit encodes '11'.

## Expected Output

c[0]=1, c[1]=1 (message '11' decoded)

## Circuit

The OpenQASM 2.0 circuit is in [`circuit.qasm`](./circuit.qasm).

```
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
```

## Tags

`superdense-coding` `fundamentals` `entanglement` `communication`

## References

- [Bennett & Wiesner (1992). Communication via One- and Two-Particle Operators. PRL 69, 2881](https://doi.org/10.1103/PhysRevLett.69.2881)

## License

MIT — part of the [OpenQC Algorithm Catalog](https://github.com/openqc-algorithms).
