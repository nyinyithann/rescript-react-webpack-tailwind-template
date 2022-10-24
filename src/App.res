let {string, useState} = module(React)

@react.component
let make = () => {
  open ReactBinding
  let lazyHome = React.createElement(
    Lazy.lazy_(() =>
      Lazy.import_("./pages/Home.js")->Js.Promise.then_(
        comp => Js.Promise.resolve({"default": comp["make"]}),
        _,
      )
    ),
    (),
  )
  let lazyAbout = React.createElement(
    Lazy.lazy_(() =>
      Lazy.import_("./pages/About.js")->Js.Promise.then_(
        comp => Js.Promise.resolve({"default": comp["make"]}),
        _,
      )
    ),
    (),
  )

  let url = RescriptReactRouter.useUrl()
  let component = switch url.path {
  | list{} => <SuspensionLoader> lazyHome </SuspensionLoader>
  | list{"about"} => <SuspensionLoader> lazyAbout </SuspensionLoader>
  | _ => <NotFound />
  }

  let (theme, setTheme) = ThemeHook.useTheme("theme-slate")
  <ThemeSwitchProvider value=setTheme>
    <div className={j`$theme flex flex-col`}>
      <NavBar />
      <div className="py-20 bg-white h-screen dark:bg-slate-500"> {component} </div>
    </div>
  </ThemeSwitchProvider>
}
