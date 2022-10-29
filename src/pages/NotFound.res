let {string} = module(React)

@react.component
let make = () => {
  <div
    className="w-full h-full flex flex-col items-center justify-center font-medium text-center text-slate-600 bg-50">
    <span className="text-[10rem] md:text-[16rem] text-100"> {"404"->string} </span>
    <span className="text-900 pb-5 text-[1.2rem] dark:text-slate-200">
      {"Hmm... this page doesn't exist. Please go to the home page by clicking
        the button below."->string}
    </span>
    <button
      type_="button"
      className="font-nav font-medium text-900 text-[2rem] py-2 px-7 rounded-lg cursor hover:bg-400 bg-300 dark:text-slate-200 dark:bg-slate-600 dark:hover:bg-slate-700"
      onClick={_ => RescriptReactRouter.push("/")}>
      {"Home"->string}
    </button>
  </div>
}
