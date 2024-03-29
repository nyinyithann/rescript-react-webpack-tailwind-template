// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";

function string(prim) {
  return prim;
}

function About$AuthorLink(Props) {
  var link = Props.link;
  var site = Props.site;
  var title = Props.title;
  return React.createElement("div", undefined, React.createElement("span", {
                  className: "text-600 font-general"
                }, "" + site + ":"), React.createElement("a", {
                  className: "hover:cursor-pointer hover:text-600 text-400 pl-2",
                  href: link,
                  target: "blank"
                }, title));
}

var AuthorLink = {
  make: About$AuthorLink
};

function About(Props) {
  return React.createElement("div", {
              className: "flex flex-col gap-2 text-600 font-sans text-center h-full items-center justify-center dark:text-slate-100"
            }, React.createElement("div", {
                  className: "-mt-40"
                }, React.createElement("h1", {
                      className: "text-base md:text-2xl font-bold pt-4"
                    }, "ReScript React template with Webpack and TailwindCSS"), React.createElement("div", {
                      className: "pt-4"
                    }, React.createElement("a", {
                          className: "text-800 underline text-base md:text:xl text-center inline",
                          href: "https://github.com/nyinyithann/rescript-react-webpack-tailwind-template",
                          rel: "noreferrer",
                          target: "_blank"
                        }, "GitHub Repo")), React.createElement("div", {
                      className: "pt-2 text-base"
                    }, React.createElement("div", {
                          className: "flex flex-col justify-center items-center font-normal  mt-4 pt-2 border-t border-200 dark:border-slate-400"
                        }, React.createElement("div", {
                              className: "w-24 h-24 relative"
                            }, React.createElement("img", {
                                  className: "w-full h-full rounded-full border-4 border-300",
                                  alt: "mygithub",
                                  src: "https://avatars.githubusercontent.com/u/156037"
                                }), React.createElement("span", {
                                  className: "bg-900 rounded-full text-xs text-200 p-1 absolute right-1 -top-1 border-2 border-300 dark:bg-slate-500 dark:text-white"
                                }, "By")), React.createElement(About$AuthorLink, {
                              link: "https://github.com/nyinyithann",
                              site: "GitHub",
                              title: "@nyinyithann"
                            }), React.createElement(About$AuthorLink, {
                              link: "https://www.linkedin.com/in/nyinyithan/",
                              site: "LinkedIn",
                              title: "@nyinyithann"
                            }), React.createElement(About$AuthorLink, {
                              link: "https://twitter.com/JazzTuyat",
                              site: "Twitter",
                              title: "@JazzTuyat"
                            })))));
}

var make = About;

export {
  string ,
  AuthorLink ,
  make ,
}
/* react Not a pure module */
