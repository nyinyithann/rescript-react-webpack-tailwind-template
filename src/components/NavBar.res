let {string} = module(React)

@react.component
let make = () => {
  <nav
    className="fixed inset-x-0 z-50 flex-1 py-1 shadow bg-300 md:pt-1
    shadow-200 dark:bg-slate-600 dark:text-white">
    <div className="px-2">
      <div className="flex items-center justify-between">
        <div className="flex space-x-2 items-center">
          <div
            className="flex shrink-0 items-center justify-center h-8 w-8
            rounded-full shadow-md shadow-400 dark:bg-slate-400">
            {<Logo />}
          </div>
          <div className="items-center hidden pr-6 md:flex">
            <span
              className="text-lg text-center font-brand text-900 drop-shadow-2xl dark:text-slate-400">
              {"ReScript"->string}
            </span>
          </div>
          <div className="flex gap-4 text-xl font-black font-nav">
            <NavLink to="/">
              <span> {"Home"->string} </span>
            </NavLink>
            <NavLink to="/about">
              <span> {"About"->string} </span>
            </NavLink>
          </div>
        </div>
        <div className="relative flex items-center pr-1 space-x-2">
          <ThemeMenu />
        </div>
      </div>
    </div>
  </nav>
}
