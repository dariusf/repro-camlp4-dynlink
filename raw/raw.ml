
let () =
  Dynlink.loadfile "_build/default/containersuser/containersuser.cmxs";
  Format.printf "ok@.";
  Dynlink.loadfile "_build/default/mycamlparser/mycamlparser.cmxs";
  Format.printf "ok@."
