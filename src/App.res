let {string, useState} = module(React)

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let component = switch url.path {
  | list{} => <Home />
  | list{"about"} => <About />
  | _ => <NotFound />
  }

  let (theme, setTheme) = ThemeHook.useTheme("theme-slate")
  <ThemeSwitchProvider value=setTheme>
    <div className={j`$theme flex flex-col`}>
      <NavBar /> <div className="py-20 bg-white h-screen p-3"> {component} </div>
    </div>
  </ThemeSwitchProvider>
}
