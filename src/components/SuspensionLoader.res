open ReactBinding
@react.component
let make = (~children) => {
  <Suspense
    fallback={<Loading
      className="w-[4rem] h-[3rem] stroke-[0.2rem] p-3 stroke-klor-200 text-700 dark:fill-slate-600 dark:stroke-slate-400 dark:text-900"
    />}>
    {children}
  </Suspense>
}
