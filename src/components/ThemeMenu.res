let {string} = module(React)

module ColorButton = {
  @react.component
  let make = (~color, ~theme, ~onClick) => {
    React.cloneElement(
      <button
        type_="button"
        ariaLabel="color"
        className="p-1 rounded-full h-6 w-6 flex items-center justify-center
        focus:ring-1 hover:ring-1 focus:outline-none ring-slate-400/50"
        style={ReactDOM.Style.make(~backgroundColor=color, ())}
        onClick={onClick}
      />,
      {"data-theme": theme},
    )
  }
}

type theme = {color: string, theme: string}

let themeList = [
  [
    {color: "#94A3B8", theme: "theme-slate"},
    {color: "#9CA3AF", theme: "theme-gray"},
    {color: "#A1A1AA", theme: "theme-zinc"},
    {color: "#A3A3A3", theme: "theme-neutral"},
  ],
  [
    {color: "#A8A29E", theme: "theme-stone"},
    {color: "#F87171", theme: "theme-red"},
    {color: "#FB923C", theme: "theme-orange"},
    {color: "#FBBF24", theme: "theme-amber"},
  ],
  [
    {color: "#FACC15", theme: "theme-yellow"},
    {color: "#A3E635", theme: "theme-lime"},
    {color: "#4ADE80", theme: "theme-green"},
    {color: "#34D399", theme: "theme-emerald"},
  ],
  [
    {color: "#2DD4BF", theme: "theme-teal"},
    {color: "#22D3EE", theme: "theme-cyan"},
    {color: "#38BDF8", theme: "theme-sky"},
    {color: "#60A5FA", theme: "theme-blue"},
  ],
  [
    {color: "#818CF8", theme: "theme-indigo"},
    {color: "#A78BFA", theme: "theme-violet"},
    {color: "#C084FC", theme: "theme-purple"},
    {color: "#E879F9", theme: "theme-fuchsia"},
  ],
  [
    {color: "#F472B6", theme: "theme-pink"},
    {color: "#FB7185", theme: "theme-rose"},
    {color: "#000000", theme: "dark"},
  ],
]

@react.component
let make = () => {
  let setTheme = React.useContext(ThemeSwitchProvider.themeSwitchContext)

  let clickHandler = React.useCallback1(e => {
    open ReactEvent.Mouse
    preventDefault(e)
    let theme = target(e)["getAttribute"](. "data-theme")
    setTheme(theme)
  }, [setTheme])

  open HeadlessUI
  <Menu as_="div" className="relative flex items-center text-left">
    {_ => {
      <>
        <Menu.Button
          className="flex flex-col items-center self-end justify-center
          flex-auto w-8 h-8 rounded-full border-primary_transparent 
          hover:bg-primary_400 active:bg-primary_400
          active:text-primary_500 text-primary_600 focus:outline-none
          hover:text-primary_700 dark:bg-slate-900">
          <Heroicons.Solid.ColorSwatchIcon
            className="self-center w-5 h-5 text-primary_900 dark:text-white"
          />
        </Menu.Button>
        <Menu.Items
          as_="div"
          className="flex flex-col origin-top-right absolute mt-4
          w-[12rem] rounded w-40 p-1 right-1 top-6 border-[1px] shadow-lg
          border-primary_200 bg-primary_100 focus:outline-none dark:bg-slate-600
          dark:border-slate-500">
          <Menu.Item>
            {_ => {
              <div className="z-10 flex flex-col">
                {themeList
                ->Belt.Array.mapWithIndex((i, x) =>
                  <div
                    key={j`theme_div_$i`} className="p-2 flex flex-1 flex-row gap-3 justify-start">
                    {x
                    ->Belt.Array.map(({color, theme}) =>
                      <ColorButton key={color} color theme onClick={clickHandler} />
                    )
                    ->React.array}
                  </div>
                )
                ->React.array}
              </div>
            }}
          </Menu.Item>
        </Menu.Items>
      </>
    }}
  </Menu>
}
