# Mixer Specs

## Baseline Simulation Results

### Test Conditions

| Parameter | Value |
|-----------|------:|
| VDD | 3.3 V |
| RF Frequency | 100 MHz |
| LO Frequency | 75 MHz |
| IF Frequency | 25 MHz |
| RF Input | 10 mVpk2pk, differential |
| LO Input | 0-3.3 V differential square wave |
| Load Resistance | 2 kOhm |
| Tail Current | 500 uA (ideal) |

### Operating Point

| Metric | Value |
|--------|------:|
| RF Pair ID | 250 uA |
| RF Pair gm | 2.48 mS |
| RF Pair VGS | 0.787 V |
| RF Pair VDS | 1.87 V |
| RF Pair VDSAT | 0.149 V |
| LO Switch gm (ON) | 1.87 mS |
| LO Switch VGS (ON) | 1.11 V |
| LO Switch VDS (ON) | 0.618 V |
| LO Switch VDSAT (ON) | 0.208 V |

### Performance

| Metric | Value |
|--------|------:|
| Conversion Gain | 9 dB |
| Core Power | 1.65 mW |
| RF Feedthrough | TBD |
| LO Feedthrough | TBD |

## Tail Current Sweep

| Tail Current | Conversion Gain | RF Pair gm | RF Pair VDS | RF Pair VDSAT | LO Switch gm | LO Switch VDS | LO Switch VDSAT | Notes |
|-------------:|----------------:|-----------:|------------:|--------------:|-------------:|--------------:|----------------:|-------|
| 250 uA | 5 dB | 1.6 mS | 1.9 V | 0.11 V | 1.3 mS | 0.8 V | 0.15 V | saturation |
| 350 uA | 7 dB | 2 mS | 1.9 V | 0.128 V | 1.57 mS | 0.7 V | 0.18 V | saturation |
| 500 uA | 9 dB | 2.48 mS | 1.87 V | 0.15 V | 1.87 mS | 0.618 V | 0.2 V | saturation |
| 750 uA | 10.5 dB | 3 mS | 1.8 V | 0.18 V | 2.2 mS | 0.4 V | 0.25 V | saturation | 
| 1 mA | 11 dB | 3.6 mS | 1.8 V | 0.2 V | 2 mS | 0.265 V | 0.3 V | drop out of sat|

## Next Steps
- [ ] Replace ideal tail current source with ...
- [ ] Replace load res with GF180 poly
- [ ] Add RF input biasing/signal conditioning
- [ ] Measure RF/LO feedthrough and IIP3
- [ ] Try different receiver topologies
- [ ] Integration with divider 
