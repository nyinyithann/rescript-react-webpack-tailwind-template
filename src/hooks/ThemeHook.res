let {useState} = module(React)

let useTheme = (key: string, initialValue: string) => {
  let (storedValue, setStoredValue) = useState(_ => {
    try {
      switch WebApi.LocalStorage.getItem(key) {
      | Some(v) => v
      | None => initialValue
      }
    } catch {
    | _ => initialValue
    }
  })

  let setValue = value => {
    try {
      WebApi.LocalStorage.setItem(key, value)
      ignore(setStoredValue(_prev => value))
    } catch {
    | Js.Exn.Error(e) =>
      switch Js.Exn.message(e) {
      | Some(msg) => Js.log(msg)
      | None => ()
      }
    }
  }

  (storedValue, setValue)
}
