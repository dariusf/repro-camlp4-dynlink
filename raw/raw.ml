
let () =
  Findlib.init ();
  Fl_dynload.load_packages ~debug:true ["containers"];
  Dynlink.loadfile "_build/default/containersuser/containersuser.cmxs";
  Format.printf "ok@.";
  Fl_dynload.load_packages ~debug:true ["camlp4"; "camlp4.lib"; "Camlp4"; "camlp4.fulllib"; "camlp4.gramlib"];
  (* ocamlfind list | grep camlp4 | cut -d' ' -f1 | sed "s/^/\"/;s/$/\"/" | tr '\n' ';' *)
  Fl_dynload.load_packages ~debug:true ["camlp4";"camlp4.exceptiontracer";"camlp4.extend";"camlp4.foldgenerator";"camlp4.fulllib";"camlp4.gramlib";"camlp4.lib";"camlp4.listcomprehension";"camlp4.locationstripper";"camlp4.macro";"camlp4.mapgenerator";"camlp4.metagenerator";"camlp4.profiler";"camlp4.quotations";"camlp4.quotations.o";"camlp4.quotations.r";"camlp4.tracer"];
  Dynlink.loadfile "_build/default/mycamlparser/mycamlparser.cmxs";
  Format.printf "ok@."
