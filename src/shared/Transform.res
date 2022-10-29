exception DecodeError(string)

module type DECODE = {
  type t
  let decode: (. string) => result<t, string>
}

module type ENCODE = {
  type t
  let encode: (. t) => string
}
