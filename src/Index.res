@@config(no_export)
%%raw(`import '../style/main.css'`)
let {querySelector, render} = module(ReactDOM)

switch querySelector("#root") {
| None => ()
| Some(root) =>
  render(
    <React.StrictMode>
      <App />
    </React.StrictMode>,
    root,
  )
}

%%raw(`
const reportWebVitals = (onPerfEntry) => {
  if (onPerfEntry && onPerfEntry instanceof Function) {
    import('web-vitals').then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(onPerfEntry);
      getFID(onPerfEntry);
      getFCP(onPerfEntry);
      getLCP(onPerfEntry);
      getTTFB(onPerfEntry);
    });
  }
};
if (process.env.NODE_ENV === 'development') {
  // eslint-disable-next-line no-console
  reportWebVitals(console.log);
}
`)
