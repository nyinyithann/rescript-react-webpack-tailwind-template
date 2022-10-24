@react.component
let make = () => {
  <div
    className="flex flex-col w-full h-full justify-center items-center font-title text-base text-400 py-10 text-center">
    <p> {"Hello, World!"->React.string} </p>
    <Loading
      className="w-[4rem] h-[3rem] stroke-[0.2rem] p-3 stroke-klor-200 text-700 dark:fill-slate-600 dark:stroke-slate-400 dark:text-900"
    />
  </div>
}
