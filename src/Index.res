@@config(no_export)
%%raw(`import '../style/main.css'`)
let {querySelector, render} = module(ReactDOM)

switch querySelector("#react") {
| None => ()
| Some(root) => render(<App />, root)
}
