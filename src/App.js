// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as NavBar from "./components/NavBar.js";
import * as NotFound from "./pages/NotFound.js";
import * as ThemeHook from "./hooks/ThemeHook.js";
import * as Js_promise from "rescript/lib/es6/js_promise.js";
import * as ErrorBoundary from "./components/ErrorBoundary.js";
import * as SuspensionLoader from "./components/SuspensionLoader.js";
import * as RescriptReactRouter from "@rescript/react/src/RescriptReactRouter.js";
import * as ThemeSwitchProvider from "./providers/ThemeSwitchProvider.js";

function string(prim) {
  return prim;
}

function useState(prim) {
  return React.useState(function () {
              return Curry._1(prim, undefined);
            });
}

function App(Props) {
  var lazyHome = React.createElement(React.lazy(function (param) {
            var __x = import("./pages/Home.js");
            return Js_promise.then_((function (comp) {
                          return Promise.resolve({
                                      default: comp.make
                                    });
                        }), __x);
          }), undefined);
  var lazyAbout = React.createElement(React.lazy(function (param) {
            var __x = import("./pages/About.js");
            return Js_promise.then_((function (comp) {
                          return Promise.resolve({
                                      default: comp.make
                                    });
                        }), __x);
          }), undefined);
  var url = RescriptReactRouter.useUrl(undefined, undefined);
  var match = url.path;
  var component = match ? (
      match.hd === "about" ? (
          match.tl ? React.createElement(NotFound.make, {}) : React.createElement(SuspensionLoader.make, {
                  children: lazyAbout
                })
        ) : React.createElement(NotFound.make, {})
    ) : React.createElement(SuspensionLoader.make, {
          children: lazyHome
        });
  var match$1 = ThemeHook.useTheme("theme-slate");
  return React.createElement(ThemeSwitchProvider.make, {
              value: match$1[1],
              children: React.createElement("div", {
                    className: "" + match$1[0] + " flex flex-col"
                  }, React.createElement(NavBar.make, {}), React.createElement(ErrorBoundary.make, {
                        children: React.createElement("div", {
                              className: "h-screen bg-white dark:bg-slate-500"
                            }, component)
                      }))
            });
}

var make = App;

export {
  string ,
  useState ,
  make ,
}
/* react Not a pure module */
