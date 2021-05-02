// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import RescriptBrandmarkSvg from "../../../public/brand/rescript-brandmark.svg";

function string(prim) {
  return prim;
}

var make = RescriptBrandmarkSvg;

var ReLogo = {
  make: make
};

function App$Greeting(Props) {
  return React.createElement("div", {
              className: "p-6 max-w-sm mx-auto bg-white rounded-xl shadow-md flex items-center space-x-4"
            }, React.createElement("div", {
                  className: "flex-shrink-0"
                }, React.createElement("div", {
                      className: "h-12 w-12"
                    }, React.createElement(make, {}))), React.createElement("div", undefined, React.createElement("div", {
                      className: "text-xl font-medium text-black"
                    }, "Hello"), React.createElement("p", {
                      className: "text-gray-500"
                    }, "Welcome to ReScript")));
}

var Greeting = {
  make: App$Greeting
};

function App(Props) {
  return React.createElement("div", undefined, React.createElement(App$Greeting, {}));
}

var make$1 = App;

export {
  string ,
  ReLogo ,
  Greeting ,
  make$1 as make,
  
}
/* make Not a pure module */
