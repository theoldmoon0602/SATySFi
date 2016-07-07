open Types
open Display

exception Error of string

type t

val empty : t

val add : t -> constructor_name -> type_struct -> type_name -> t

val add_list : t -> (constructor_name * type_struct * type_name) list -> t

val add_mutual_cons : scope_kind -> t -> untyped_mutual_variant_cons -> t

val add_mutual_cons_hidden : module_name -> t -> untyped_mutual_variant_cons -> t

val find : t -> constructor_name -> (type_name * type_struct)

val apply_to_type_synonym : type_struct list -> type_struct -> type_struct

val fix_manual_type_for_inner_and_outer : Tyvarid.quantifiability -> t -> type_struct -> (type_struct * type_struct)

val append_module_name : module_name -> var_name -> var_name
