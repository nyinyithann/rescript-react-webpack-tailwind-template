open Transform

let useQueryParams = (
  type a,
  ~decoder: module(DECODE with type t = a),
  ~encoder: module(ENCODE with type t = a),
  ~default: a,
  (),
): (a, a => unit) => {
  let url = RescriptReactRouter.useUrl()

  module Decoder = unpack(decoder)
  let value = try {
    switch Decoder.decode(. url.search) {
    | Ok(v) => v
    | Error(_) => default
    }
  } catch {
  | DecodeError(_) => default
  | _ => default
  }

  open Webapi.Url
  let setValue = (params: a) => {
    module Encoder = unpack(encoder)
    let url = URLSearchParams.make(Encoder.encode(. params))
    RescriptReactRouter.push("/?" ++ url->URLSearchParams.toString)
  }
  (value, setValue)
}
