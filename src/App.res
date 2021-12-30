let {string, useState} = module(React)

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let component = switch url.path {
  | list{"about"} => <About />
  | list{} => <Home />
  | _ => <NotFound />
  }
  let (theme, setTheme) = ThemeHook.useTheme("ReScriptReactTemplate_Theme", "theme-green")
  <div className={j`$theme flex flex-col`}>
    <NavBar setTheme /> <div className="py-20 bg-white h-screen p-3"> {component} </div>
  </div>
}
