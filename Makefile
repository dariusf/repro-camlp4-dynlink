
export OCAMLRUNPARAM=b

all:
# 	dune build @install --display=short
	dune build containersuser mycamlparser --display=short
# 	DYLD_PRINT_LIBRARIES=1 dune exec main/app.exe
	dune exec raw/raw.exe

clean:
	dune clean
