{ edge, edges }:

edge {
  src = ./.;
  edges =  with edges; [ ];
  schema = with edges; ''
    struct CoreGraphImsg {
           imsg @0 :Text;
           comp @1 :Text;
           port @2 :Text;
           selection @3 :Text;
    }

  '';
}
