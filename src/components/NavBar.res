let {string} = module(React)

@react.component
let make = (~setTheme) => {
  <nav
    className="fixed inset-x-0 z-50 flex-1 py-1 shadow bg-primary_300 md:pt-1
    shadow-primary_200 dark:bg-slate-600 dark:text-white">
    <div className="px-2">
      <div className="flex items-center justify-between">
        <div className="flex space-x-2 items-center">
          <div
            className="flex items-center justify-center px-1 h-9 w-9
            rounded-full shadow-md shadow-primary_400 dark:bg-slate-400">
            {<Logo fillColor="var(--color-primary-600)" />}
          </div>
          <div className="items-center hidden md:flex">
            <span
              className="text-lg text-center font-brand text-primary_900 drop-shadow-2xl dark:text-slate-400">
              {"ReScript"->string}
            </span>
          </div>
          <div className="flex text-lg font-black font-navigation">
            <NavLink to="/" className="navbar-button"> <span> {"Home"->string} </span> </NavLink>
            <NavLink to="/about" className="navbar-button">
              <span> {"About"->string} </span>
            </NavLink>
          </div>
        </div>
        <div className="relative flex items-center pr-1 space-x-2"> <ThemeMenu setTheme /> </div>
      </div>
    </div>
  </nav>
}
