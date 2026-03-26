# Zed extension for PDDL and friends

This extension aims at providing minimal support for working on PDDL files (and HDDL files). It currently provides

 - syntax highlighting
 - outline, enabling symbol navigation (limited)
 - parsing (through [*Aries Planning Engine (ape)*](https://github.com/plaans/aries/tree/master/planning/engine))
 - solving (through [`unified-planning`](https://github.com/aiplan4eu/unified-planning))

A number of tasks are provided in [`tasks.json`](language/pddl/tasks.json) and should be available when a PDDL/HDDL file is focused.

## Tasks:

 - parse a problem or domain file (ape)
 - solving a problem (unified-planning)
 - opening the domain file for a current problem, based on naming conventions (ape)


## Setup

The tasks assume the presence of two commands in the path:

 - `ape`: CLI for aries planning engine
 - `up`: CLI for `unified-planning` (with engines installed)

These can be installed with the following commands
 
```sh
# Install Aries Planning Engine (ape)
# this assumes that you have a rust toolchain installed: https://rust-lang.org/tools/install/
cargo install --bin ape --git https://github.com/plaans/aries aries-plan-engine

# Install unified-planning library and engines 
# In addition to the python modules, it will install the 'up' executable on the path
pip install --upgrade unified-planning[engines]
```
