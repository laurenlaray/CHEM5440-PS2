## CHEME7770 *E.coli* Core Network Example Modified

This repository holds the modified flux balance analysis problem (FBA) for the *E.coli* network example from [Palsson laboratory](http://systemsbiology.ucsd.edu/Downloads/EcoliCore) and is described in [EcoSal Chapter 10.2.1 - Reconstruction and Use of Microbial Metabolic Networks: the Core Escherichia coli Metabolic Model as an Educational Guide by Orth, Fleming, and Palsson (2010)](http://www.asmscience.org/content/journal/ecosalplus/10.1128/ecosalplus.10.2.1#backarticlefulltext).

### Installation and Requirements

You can download this repository as a zip file, or clone or pull it by using the command (from the command-line):

        $ git pull https://github.com/laurenlaray/CHEM5440-PS2.git

or

        $ git clone https://github.com/laurenlaray/CHEM5440-PS2.git

The intial constraints are encoded the [DataDictionary.jl](https://github.com/laurenlaray/CHEM5440-PS2/blob/master/src/DataDictionary.jl) file, a basic driver to perform the flux balance analysis calculation is given in [Solve.jl](https://github.com/varnerlab/CHEME7770-Ecoli-Core-Network-Example/blob/master/src/Solve.jl). A function was added to DataDictionary.jl in order to estimate the growth rate and fluxes for anaerobic growth. The upper bounds in the default_flux_bounds_array were modified for lactate, formate, ethanol, and acetate for anaerobic growth to account for byproduct formation. Regulatory constraints were encoded in Constraints.jl according to the Palsson paper. In order to run the code, go to Solve.jl and remove the comment from the function you would like to run. The last value in the function represents the regulatory constraints. If you want to run the function without the constraints, change the one to a zero. If you wish to run the function with the regulatory constraints, make sure that the last value is a 1.


### Requirements

The flux balance analysis problem is solved as a [Linear Programming (LP)](https://www.math.ucla.edu/~tom/LP.pdf) problem using the [GLPK solver](https://www.gnu.org/software/glpk/). You can install the [GLPK package for Julia](https://github.com/JuliaOpt/GLPK.jl) using the ``Pkg.add`` command from the REPL:


        julia> Pkg.add("GLPK")
​### Results
After running all four cases, you should notice that the aerobic growth produces the same flux array regardless of whether the constraints are applied. This is because the reactions that the constraints shut off are not important for aerobic growth. There is a slight change in the growth rate for the anaerobic cases when run with additional constraints versus without. Additionally, the growth rate for aerobic growth overall is larger than the growth rate for anaerobic growth.

### Biography
The initial code and readme were provided by Professor Varner and were then modified for this assignment.

​
