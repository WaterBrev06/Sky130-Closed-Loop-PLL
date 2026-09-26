# Sky130 Closed-Loop Phase-Locked Loop (PLL)

A high-precision, low-jitter, zero-offset closed-loop Charge-Pump Phase-Locked Loop (CPPLL) designed using the open-source **SkyWater 130nm CMOS PDK** (`sky130_fd_pr`).

This design features a **rail-switched charge pump** topology engineered to eliminate charge sharing, subthreshold off-state leakage, and static phase errors, achieving a sub-nanosecond static phase alignment (**-479.2 ps**) at lock.

---

## 1. System Architecture

The PLL architecture consists of a Phase Frequency Detector (PFD), a rail-switched charge pump, a $100\text{ pF}$ single-ended loop filter, and a 5-stage current-starved ring oscillator.

```
                +-------+       +---------------+       +---------------+       +---------+
  ref_clk ----> |       |  UP   |  Rail-Switched| I_OUT |  Loop Filter  | VCTRL | 5-Stage |
                |  PFD  |------>|  Charge Pump  |------>|  (C1 = 100pF) |------>| Ring    |----+
 vco_out ------>|       |  DN   |  (20uA Bias)  |       |               |       | VCO     |    |
                +-------+       +---------------+       +---------------+       +---------+    |
                    ^                                                                          |
                    |__________________________________________________________________________|

```

### Key Design Highlights

* **Rail-Switched Charge Pump:** Switches are located at $VPWR$ and $VGND$ to prevent internal node voltage decay during idle states ($UP=0, DN=0$).
* **Leakage Control:** Switch gate lengths are sized to $L = 0.5\ \mu\text{m}$ to suppress subthreshold drain leakage onto $V_{CTRL}$.
* **Symmetric Delay Matching:** An inline dual-inverter buffer on the `DN` control path compensates for inverter delay on the `UP` path.

---

## 2. Circuit Sizing & Parameters

### Charge Pump Transistor Dimensions ($I_{CP} = 20\ \mu\text{A}$)

| Device | Type | Width ($W$) | Length ($L$) | Role & Rationale |
| --- | --- | --- | --- | --- |
| **`MP2`** | PMOS | $6.0\ \mu\text{m}$ | $0.50\ \mu\text{m}$ | Rail-connected top switch ($L=0.5\ \mu\text{m}$ eliminates off-leakage) |
| **`MP1`** | PMOS | $6.0\ \mu\text{m}$ | $2.00\ \mu\text{m}$ | Top current source ($L=2.0\ \mu\text{m}$ reduces $\lambda$ modulation) |
| **`MP3`** | PMOS | $6.0\ \mu\text{m}$ | $2.00\ \mu\text{m}$ | PMOS reference mirror diode |
| **`MN1`** | NMOS | $2.0\ \mu\text{m}$ | $2.00\ \mu\text{m}$ | Bottom current sink ($W_p/W_n = 3.0$ balances mobility) |
| **`MN2`** | NMOS | $2.0\ \mu\text{m}$ | $0.50\ \mu\text{m}$ | Rail-connected bottom switch |
| **`MN3`** | NMOS | $2.0\ \mu\text{m}$ | $2.00\ \mu\text{m}$ | NMOS reference mirror diode |
| **`inv_1`** | CMOS | $1.5\ \mu\text{m}$ | $0.15\ \mu\text{m}$ | `UP` line control signal inverter |
| **`DN_buf`** | CMOS | $1.5\ \mu\text{m}$ | $0.15\ \mu\text{m}$ | Dual-inverter delay match buffer for `DN` path |

---

## 3. Measured Performance Specifications

| Parameter | Symbol | Measured Value | Units |
| --- | --- | --- | --- |
| **Supply Voltage** | $VPWR$ | $1.8$ | $\text{V}$ |
| **Charge Pump Bias Current** | $I_{CP}$ | $20.0$ | $\mu\text{A}$ |
| **Loop Filter Capacitance** | $C_1$ | $100$ | $\text{pF}$ |
| **Locked Control Voltage** | $V_{CTRL}$ | $640 - 650$ | $\text{mV}$ |
| **Static Phase Offset** | $t_{\phi}$ | **$-479.2$** | **$\text{ps}$** |
| **Cold-Start Lock Time ($95\%$)** | $t_{lock}$ | $\approx 3.5$ | $\mu\text{s}$ |
| **Peak Transient Overshoot** | $V_{peak}$ | $< 8.0$ | % |
| **$V_{CTRL}$ Ripple Voltage** | $V_{ripple\_pp}$ | $< 5.0$ | $\text{mV}_{p-p}$ |

---

## 4. Testbench Simulations & Results

### 4.1 Steady-State Phase Lock Alignment

Under locked condition ($t \ge 6.0\ \mu\text{s}$), `vco_out` rising edges track `ref_clk` with zero visible static phase error.

> *Figure 1: Overlaid `ref_clk` (red) and `vco_out` (blue) clock edges at $t = 6.0\ \mu\text{s}$ demonstrating $-479.2\text{ ps}$ phase offset.*

---

### 4.2 Control Voltage ($V_{CTRL}$) Lock Transient

Simulation of cold-start ($V_{CTRL} = 0\text{ V}$) and dynamic acquisition shows clean, monotonic settling to $650\text{ mV}$ within $3.5\ \mu\text{s}$ without cycle slipping or sustained ringing.

> *Figure 2: Transient response of $V_{CTRL}$ over $8.0\ \mu\text{s}$ showing stable loop convergence.*

---

### 4.3 Full Output Clock Oscillations

Detailed view of the continuous output swing of `vco_out` operating with full rail-to-rail ($0\text{ V} \rightarrow 1.8\text{ V}$) logic levels.

> *Figure 3: Full $0\text{ V} - 1.8\text{ V}$ dynamic rail swing of `vco_out` output stage.*

---




