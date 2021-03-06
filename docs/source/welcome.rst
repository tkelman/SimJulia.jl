Welcome to SimJulia!
====================

**SimJulia** is a combined continuous time / discrete event process oriented simulation framework written in `Julia <http://julialang.org>`_ inspired by the Simula library `DISCO <http://w.akira.ruc.dk/~keld/research/DISCO/>`_ and the Python library `SimPy <http://simpy.sourceforge.net/>`_.

Its event dispatcher is based on a :class:`Task`. This is a control flow feature in Julia that allows computations to be suspended and resumed in a flexible manner. `Processes` in SimJulia are defined by functions yielding `Events`. SimJulia also provides three types of shared resources to model limited capacity congestion points: `Resources`, `Containers` and `Stores`. The API is modeled after the SimPy API but using some specific Julia semantics.

The continuous time simulation is still under development and will be based on a quantized state system solver that naturally integrates in the discrete event framework.

SimJulia contains tutorials, in-depth documentation, and a large number of examples. The tutorials and the examples are borrowed from the SimPy distribution to allow a direct comparison and an easy migration path for users. The differences between SimJulia and SimPy are clearly documented.

SimJulia is released under the MIT License. The source code is freely available at the GitHub page of `SimJulia <https://github.com/BenLauwens/SimJulia.jl>`_. New ideas or interesting examples are always welcome and can be submitted as an issue or a pull request on GitHub.
