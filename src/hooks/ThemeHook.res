let themeKey = "RescriptTailwindTemplate_Theme"

let useTheme = defaultTheme => {
  open Dom.Storage2
  let (storedTheme, setStoredTheme) = React.useState(_ => {
    try {
      switch localStorage->getItem(themeKey) {
      | Some(v) => v
      | None => defaultTheme
      }
    } catch {
    | _ => defaultTheme
    }
  })

  let setTheme = themeName => {
    try {
      localStorage->setItem(themeKey, themeName)
      ignore(setStoredTheme(_prev => themeName))
    } catch {
    | Js.Exn.Error(e) =>
      switch Js.Exn.message(e) {
      | Some(msg) => Js.log(msg)
      | None => ()
      }
    }
  }

  (storedTheme, setTheme)
}
