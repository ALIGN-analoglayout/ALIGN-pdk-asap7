# ALIGN-pdk-asap7
## We are working to support [ASAP7](https://github.com/The-OpenROAD-Project/asap7) with [ALIGN](https://github.com/ALIGN-analoglayout/ALIGN-public)

## Getting started

### Step 1: Install ALIGN
Install ALIGN following instructions on [ALIGN GitHub Repository](https://github.com/ALIGN-analoglayout/ALIGN-public)

### Step 2: Clone the ALIGN PDK ASAP7 source code to your local environment
```console
$ git clone https://github.com/ALIGN-analoglayout/ALIGN-pdk-asap7
```

### Step 3: Run ALIGN with ASAP7
You may run the align tool using a simple command line tool named `schematic2layout.py`
For most common cases, you will simply run:
```console
$ schematic2layout.py <NETLIST_DIR> -p <PDK_DIR> 
```

For instance, to build the layout for five_transistor_ota. First make a directory in ALIGN-public (in this example `work`), thereafter, use `schematic2layout.py`: 
```console
$ cd ALIGN-public
$ mkdir work && cd work
$ schematic2layout.py ../ALIGN-pdk-asap7/examples/five_transistor_ota -p ../ALIGN-pdk-asap7/ASAP7_PDK/
```

