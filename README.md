# NYCMOS Chipathon 2026

## Overview

Reconfigurable RF downconversion educational IC for visualizing and comparing receiver architectures.

The platform enables experimentation with:

- Homodyne (direct-conversion) receivers

- Heterodyne receivers

- Sliding IF

- Two-stage downconversion architectures

Observable RF, IF, and baseband nodes allow measurement using oscilloscopes, FFT analysis, and external filtering networks.

## Architecture
![NYCMOS System Architecture](docs/images/NYCMOS_block_diag_v4.jpeg)

The platform consists of:

- Quadrature first-stage mixer pair (I/Q)
- Quadrature second-stage mixer pair (I/Q)
- On-chip LO divider for quadrature generation
- Exposed IF and baseband outputs
- External student-designed BPF/LPF networks

## Team
 | Member | Background |
 |--------|------------------|
 | Demian | RF front-end design in Cadence Virtuoso |
 | Lei | RF/Analog design in cadence virtuoso. Amplifiers/LO design |
 | Charbel | Former EE @ Amogy, MSEE @ NYU Tandon, RF front-end design |

## Repository Structure

- `docs/` -  proposal materials, images, and notes
- `notebooks/` - Jupyter notebooks for post-processing
- `designs/` - circuit blocks, including schematics, layouts, and testbenches
  - `mixer/`
  - `divider/`
  - `digital/`
  - `mirrors/`
  - `input_buffer/`
  - `output_buffer/`
  - `mode_decoder/`
  - `top_level/`

## Resources

### Project Links

- [Proposal Presentation](https://docs.google.com/presentation/d/1ySrDNINa8G7hdXDCi9I0f6ue9poP8fiGctQKzkyGpoE/edit?usp=sharing)
- [Task Tracker](https://docs.google.com/spreadsheets/d/1Od1J7DOz2SekQrFCoG0DU00RiTUWZIC1DUhUMYMRFoQ/edit?usp=sharing)
- [Schematic Review](https://docs.google.com/presentation/d/1cAe4NSLdh8lAJEL3O53wrl0M-dmPTIBj-l6jvWuCRDw/edit?slide=id.g3efc99ab0d8_0_47#slide=id.g3efc99ab0d8_0_47)
