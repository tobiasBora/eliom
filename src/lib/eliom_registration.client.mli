module Html5 : Eliom_registration_sigs.S
  with type page = Html5_types.html Eliom_content.Html5.elt
   and type options = unit

module Action : Eliom_registration_sigs.S
  with type page = unit
   and type options = [ `Reload | `NoReload ]

(**/**)

module type Base = sig
  type return = Eliom_service.non_ocaml
end

module Block5 : Base
module Html_text : Base
module CssText : Base
module Text : Base
module String : Base

module Unit : Base

module String_redirection : Base

module Any : Base

module Streamlist : Base

module Ocaml : sig
  type 'a return = 'a Eliom_service.ocaml
end

module Redirection : sig
  type 'a return = 'a
end
