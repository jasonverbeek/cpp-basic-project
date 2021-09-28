# C++ Basic Project
tiny template that I will use for some personal projects/experiments

feel free to use for whatever but there are probably actual professional templates out there.

### Todo
currently .cpp files are not found recurively, there is some answer on stackoverflow you could copy paste to make it
work but I wont implement it untill i spend some time understanding it.

# build
To build or do anything else in the readme you need [make](https://www.gnu.org/software/make/) and a C++ compiler.

If you have both run:

- `make`

### changing the compiler

By default the compiler is set to `g++`, to use a different compiler modify the `CXX` variable in the `Makefile` file.
- `CXX = g++` => `CXX = clang++` clang C++ compiler
- `CXX = g++` => `CXX = dpcpp` intel C++ compiler

# cleanup
if for some reason you want to remove built binary and \*.o files
- `make clean`

# forced rebuild
normally only modified .cpp files get rebuild when you run make however sometimes you might want to rebuild. for
example if you modify a .hpp file without modifying it's cpp file and the change is not detected.

you can force a rebuild with
- `make -B`
- `make --always-make`

this last one will fail if you have nothing to clean up but looks funny

- `make clean all`

### rebuild a single file
You can also choose to recompile a single file by simply `make`-ing that file:
- `make --always-make myclass.cpp`
- `make -B myclass.cpp`

---

for more info check the [GNU Make Manual](https://www.gnu.org/software/make/manual/make.html)

