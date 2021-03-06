{ subgraph, imsg, nodes, edges }:

let
  PrimBool = imsg {
    class = edges.capnp.PrimBool;
    text = "(bool=true)";
    option = "create";
  };
in
subgraph {
 src = ./.;
 flowscript = with nodes.rs; ''
  '${PrimBool}' -> input not(${maths_boolean_not}) output -> input io_print(${maths_boolean_print})
 '';
}
