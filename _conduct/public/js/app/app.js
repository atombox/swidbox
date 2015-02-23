/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;
/******/
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	/* Initialize Locales */
	l20n.initializeLocales('app', {
	  'locales': ['en-US'],
	  'default': 'en-US'
	});

	/* Initializing touch events */
	React.initializeTouchEvents(true);

	__webpack_require__(2);

	var routes = __webpack_require__(1);

	Pace.once('hide', function() {
	  $('#pace-loader').removeClass('pace-big').addClass('pace-small');
	});

	var InitializeRouter = function(View) {
	  // cleanup
	  if(window.Rubix) window.Rubix.Cleanup();
	  Pace.restart();
	  if(window.hasOwnProperty('ga') && typeof window.ga === 'function') {
	    window.ga('send', 'pageview', {
	     'page': window.location.pathname + window.location.search  + window.location.hash
	    });
	  }

	  React.render(React.createElement(View, null), document.getElementById('app-container'), function() {
	    // l20n initialized only after everything is rendered/updated

	    l20n.ready();
	    setTimeout(function() {
	      $('body').removeClass('fade-out');
	    }, 500);
	  });
	};

	if(Modernizr.history)
	  ReactRouter.run(routes, ReactRouter.HistoryLocation, InitializeRouter);
	else
	  ReactRouter.run(routes, InitializeRouter);


/***/ },
/* 1 */
/***/ function(module, exports, __webpack_require__) {

	/* ERROR PAGES */
	var notfound = __webpack_require__(7);

	/* APP PAGES */
	var blank = __webpack_require__(6);

	/* ROUTES */
	module.exports = (
	  React.createElement(Route, {handler: ReactRouter.RouteHandler}, 
	    React.createElement(DefaultRoute, {handler: blank}), 
	    React.createElement(Route, {path: "/", handler: blank}), 
	    React.createElement(NotFoundRoute, {handler: notfound})
	  )
	);


/***/ },
/* 2 */
/***/ function(module, exports, __webpack_require__) {

	var __HUA = (function () { var React = __webpack_require__(3); var getHotUpdateAPI = __webpack_require__(4); return getHotUpdateAPI(React, "preloader.jsx", module.id); })(); if (false) { module.hot.accept(function (err) { if (err) { console.error("Cannot not apply hot update to " + "preloader.jsx" + ": " + err.message); } }); module.hot.dispose(function () { var nextTick = require("C:\\tmpuser\\tools\\work\\_git\\swidbox\\_conduct\\node_modules\\react-hot-loader\\node_modules\\next-tick\\index.js"); nextTick(__HUA.updateMountedInstances); }); }

	var Ploader = __HUA.createClass({displayName: "Ploader",
	  getInitialState: function() {
	    return {
	      display: 'none'
	    };
	  },
	  show: function(cb) {
	    this.setState({display: 'block'}, cb);
	  },
	  hide: function(cb) {
	    this.setState({display: 'none'}, cb);
	  },
	  render: function() {
	    return (
	      React.createElement("div", {className: "preloader", style: {display: this.state.display}}, 
	        React.createElement("img", {src: "/imgs/preloader.gif", width: "128", height: "128"})
	      )
	    );
	  }
	});

	window.Preloader = React.render(React.createElement(Ploader, null), document.getElementById('app-preloader'));


/***/ },
/* 3 */
/***/ function(module, exports, __webpack_require__) {

	module.exports = React;

/***/ },
/* 4 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	var updaters = {},
	    makeModuleUpdater = __webpack_require__(5);

	function getHotUpdateAPI(React, filename, moduleId) {
	  var exists = updaters.hasOwnProperty(moduleId);
	  if (!exists) {
	    updaters[moduleId] = makeModuleUpdater(React, filename);
	  }

	  var updater = updaters[moduleId];
	  return {
	    createClass: exists ? updater.updateClass : updater.createClass,
	    updateMountedInstances: updater.updateMountedInstances
	  };
	}

	module.exports = getHotUpdateAPI;

/***/ },
/* 5 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	/**
	 * Provides `createClass` and `updateClass` which can be used as drop-in
	 * replacement for `React.createClass` in a module. If multiple components
	 * are defined in the same module, assumes their `displayName`s are different.
	 */
	module.exports = function (React, filename) {
	  var componentUpdaters = {};

	  function createClass(spec) {
	    var displayName = spec.displayName,
	        componentUpdater;

	    if (componentUpdaters[displayName]) {
	      throw new Error(
	        'Found duplicate displayName in ' + filename + ': "' + displayName + '".\n' +
	        'react-hot-loader uses displayName to distinguish between several components in one file.'
	      );
	    }

	    componentUpdater = __webpack_require__(8)(React);
	    componentUpdaters[displayName] = componentUpdater;

	    return componentUpdater.createClass(spec);
	  }

	  function updateClass(spec) {
	    var displayName = spec.displayName,
	        componentUpdater = componentUpdaters[displayName];

	    return componentUpdater ?
	      componentUpdater.updateClass(spec) :
	      createClass(spec);
	  }

	  function updateMountedInstances() {
	    Object.keys(componentUpdaters).forEach(function (displayName) {
	      componentUpdaters[displayName].updateMountedInstances();
	    });
	  }

	  return {
	    createClass: createClass,
	    updateClass: updateClass,
	    updateMountedInstances: updateMountedInstances
	  };
	};

/***/ },
/* 6 */
/***/ function(module, exports, __webpack_require__) {

	var __HUA = (function () { var React = __webpack_require__(3); var getHotUpdateAPI = __webpack_require__(4); return getHotUpdateAPI(React, "blank.jsx", module.id); })(); if (false) { module.hot.accept(function (err) { if (err) { console.error("Cannot not apply hot update to " + "blank.jsx" + ": " + err.message); } }); module.hot.dispose(function () { var nextTick = require("C:\\tmpuser\\tools\\work\\_git\\swidbox\\_conduct\\node_modules\\react-hot-loader\\node_modules\\next-tick\\index.js"); nextTick(__HUA.updateMountedInstances); }); }

	var Header = __webpack_require__(10);
	var Sidebar = __webpack_require__(9);
	var Footer = __webpack_require__(11);

	var Body = __HUA.createClass({displayName: "Body",
	  render: function() {
	    return (
	      React.createElement(Container, {id: "body"}, 
	        React.createElement(Grid, null, 
	          React.createElement(Row, null, 
	            React.createElement(Col, {sm: 12}, 
	              React.createElement(PanelContainer, null, 
	                React.createElement(Panel, null, 
	                  React.createElement(PanelBody, {className: "text-center"}, 
	                    React.createElement("p", null, "BLANK PAGE")
	                  )
	                )
	              )
	            )
	          )
	        )
	      )
	    );
	  }
	});

	var Page = __HUA.createClass({displayName: "Page",
	  mixins: [SidebarMixin],
	  render: function() {
	    var classes = React.addons.classSet({
	      'container-open': this.state.open
	    });
	    return (
	      React.createElement(Container, {id: "container", className: classes}, 
	        React.createElement(Sidebar, null), 
	        React.createElement(Header, null), 
	        React.createElement(Body, null), 
	        React.createElement(Footer, null)
	      )
	    );
	  }
	});

	module.exports = Page;


/***/ },
/* 7 */
/***/ function(module, exports, __webpack_require__) {

	var __HUA = (function () { var React = __webpack_require__(3); var getHotUpdateAPI = __webpack_require__(4); return getHotUpdateAPI(React, "notfound.jsx", module.id); })(); if (false) { module.hot.accept(function (err) { if (err) { console.error("Cannot not apply hot update to " + "notfound.jsx" + ": " + err.message); } }); module.hot.dispose(function () { var nextTick = require("C:\\tmpuser\\tools\\work\\_git\\swidbox\\_conduct\\node_modules\\react-hot-loader\\node_modules\\next-tick\\index.js"); nextTick(__HUA.updateMountedInstances); }); }

	var Header = __webpack_require__(10);
	var Sidebar = __webpack_require__(9);
	var Footer = __webpack_require__(11);

	var Body = __HUA.createClass({displayName: "Body",
	  render: function() {
	    return (
	      React.createElement(Container, {id: "body"}, 
	        React.createElement(Grid, {gutterBottom: true}, 
	          React.createElement(Row, null, 
	            React.createElement(Col, {sm: 12, className: "text-center"}, 
	              React.createElement(PanelContainer, null, 
	                React.createElement(Panel, null, 
	                  React.createElement(PanelBody, null, 
	                    React.createElement(Grid, null, 
	                      React.createElement(Row, null, 
	                        React.createElement(Col, {xs: 12}, 
	                          React.createElement("div", null, 
	                            React.createElement(Icon, {style: {fontSize: 288, lineHeight: 1}, glyph: "icon-mfizz-ghost"})
	                          ), 
	                          React.createElement("h1", {style: {marginBottom: 25, marginTop: 0}}, "Page not found!")
	                        )
	                      )
	                    )
	                  )
	                )
	              )
	            )
	          )
	        )
	      )
	    );
	  }
	});

	var classSet = React.addons.classSet;
	var PageNotFound = __HUA.createClass({displayName: "PageNotFound",
	  mixins: [SidebarMixin],
	  render: function() {
	    var classes = classSet({
	      'container-open': this.state.open
	    });
	    return (
	      React.createElement(Container, {id: "container", className: classes}, 
	        React.createElement(Sidebar, null), 
	        React.createElement(Header, null), 
	        React.createElement(Body, null), 
	        React.createElement(Footer, null)
	      )
	    );
	  }
	});

	module.exports = PageNotFound;


/***/ },
/* 8 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	/**
	 * Provides `createClass` and `updateClass` which can be used to create and
	 * later patch a single component with a new version of itself.
	 */
	module.exports = function (React) {
	  var mounted = [];

	  /**
	   * Keeps track of mounted instances.
	   */
	  var TrackInstancesMixin = {
	    componentDidMount: function () {
	      mounted.push(this);
	    },

	    componentWillUnmount: function () {
	      mounted.splice(mounted.indexOf(this), 1);
	    }
	  };


	  /**
	   * Establishes a prototype as the "source of truth" and updates its methods on
	   * subsequent invocations, also patching fresh prototypes to pass calls to it.
	   */
	  var assimilatePrototype = (function () {
	    var storedPrototype,
	        knownPrototypes = [];

	    function wrapFunction(key) {
	      return function () {
	        if (storedPrototype[key]) {
	          return storedPrototype[key].apply(this, arguments);
	        }
	      };
	    }

	    function patchProperty(proto, key) {
	      proto[key] = storedPrototype[key];

	      if (typeof proto[key] !== 'function' ||
	        key === 'type' ||
	        key === 'constructor') {
	        return;
	      }

	      proto[key] = wrapFunction(key);

	      if (proto.__reactAutoBindMap[key]) {
	        proto.__reactAutoBindMap[key] = proto[key];
	      }
	    }

	    function updateStoredPrototype(freshPrototype) {
	      storedPrototype = {};

	      for (var key in freshPrototype) {
	        if (freshPrototype.hasOwnProperty(key)) {
	          storedPrototype[key] = freshPrototype[key];
	        }
	      }
	    }

	    function reconcileWithStoredPrototypes(freshPrototype) {
	      knownPrototypes.push(freshPrototype);
	      knownPrototypes.forEach(function (proto) {
	        for (var key in storedPrototype) {
	          patchProperty(proto, key);
	        }
	      });
	    }

	    return function (freshPrototype) {
	      updateStoredPrototype(freshPrototype);
	      reconcileWithStoredPrototypes(freshPrototype);
	    };
	  })();


	  /**
	   * Mixes instance tracking into the spec, lets React produce a fresh version
	   * of the component and assimilates its changes into the old version.
	   */
	  function injectMixinAndAssimilatePrototype(spec) {
	    spec.mixins = spec.mixins || [];
	    spec.mixins.push(TrackInstancesMixin);
	    var Component = (React.createClass)(spec);
	    assimilatePrototype(Component.type.prototype);
	    return Component;
	  }


	  /**
	   * Updates a React component recursively, so even if children define funky
	   * `shouldComponentUpdate`, they are forced to re-render.
	   */
	  function forceUpdateTree(instance) {
	    if (instance.forceUpdate) {
	      instance.forceUpdate();
	    }

	    if (instance._renderedComponent) {
	      forceUpdateTree(instance._renderedComponent);
	    }

	    for (var key in instance._renderedChildren) {
	      forceUpdateTree(instance._renderedChildren[key]);
	    }
	  }


	  var Component;

	  /**
	   * Proxies React.createClass to enable hot updates.
	   */
	  function createClass(spec) {
	    if (Component) {
	      throw new Error('createClass may only be called once for a given updater.');
	    }

	    Component = injectMixinAndAssimilatePrototype(spec);
	    return Component;
	  }

	  /**
	   * Proxies React.createClass to apply hot update.
	   */
	  function updateClass(spec) {
	    if (!Component) {
	      throw new Error('updateClass may only be called after createClass.');
	    }

	    injectMixinAndAssimilatePrototype(spec);
	    return Component;
	  }

	  /**
	   * Re-binds methods of mounted instances and re-renders them.
	   */
	  function updateMountedInstances() {
	    mounted.forEach(function (instance) {
	      instance._bindAutoBindMethods();
	      forceUpdateTree(instance);
	    });
	  }

	  return {
	    createClass: createClass,
	    updateClass: updateClass,
	    updateMountedInstances: updateMountedInstances
	  };
	};


/***/ },
/* 9 */
/***/ function(module, exports, __webpack_require__) {

	var __HUA = (function () { var React = __webpack_require__(3); var getHotUpdateAPI = __webpack_require__(4); return getHotUpdateAPI(React, "sidebar.jsx", module.id); })(); if (false) { module.hot.accept(function (err) { if (err) { console.error("Cannot not apply hot update to " + "sidebar.jsx" + ": " + err.message); } }); module.hot.dispose(function () { var nextTick = require("C:\\tmpuser\\tools\\work\\_git\\swidbox\\_conduct\\node_modules\\react-hot-loader\\node_modules\\next-tick\\index.js"); nextTick(__HUA.updateMountedInstances); }); }

	var ApplicationSidebar = __HUA.createClass({displayName: "ApplicationSidebar",
	  render: function() {
	    return (
	      React.createElement("div", null, 
	        React.createElement(Grid, null, 
	          React.createElement(Row, null, 
	            React.createElement(Col, {xs: 12}, 
	              React.createElement("div", {className: "sidebar-header"}, "PAGES"), 
	              React.createElement("div", {className: "sidebar-nav-container"}, 
	                React.createElement(SidebarNav, {style: {marginBottom: 0}}, 
	                  React.createElement(SidebarNavItem, {glyph: "icon-fontello-gauge", name: "Blank", href: "/"}), 
	                  React.createElement(SidebarNavItem, {glyph: "icon-feather-mail", name: React.createElement("span", null, "Menu ", React.createElement(BLabel, {className: "bg-darkgreen45 fg-white"}, "3"))}, 
	                    React.createElement(SidebarNav, null, 
	                      React.createElement(SidebarNavItem, {glyph: "icon-feather-inbox", name: "Inbox"}), 
	                      React.createElement(SidebarNavItem, {glyph: "icon-outlined-mail-open", name: "Mail"}), 
	                      React.createElement(SidebarNavItem, {glyph: "icon-dripicons-message", name: "Compose"})
	                    )
	                  )
	                )
	              )
	            )
	          )
	        )
	      )
	    );
	  }
	});

	var DummySidebar = __HUA.createClass({displayName: "DummySidebar",
	  render: function() {
	    return (
	      React.createElement(Grid, null, 
	        React.createElement(Row, null, 
	          React.createElement(Col, {xs: 12}, 
	            React.createElement("div", {className: "sidebar-header"}, "DUMMY SIDEBAR"), 
	            React.createElement(LoremIpsum, {query: "1p"})
	          )
	        )
	      )
	    );
	  }
	});

	var SidebarSection = __HUA.createClass({displayName: "SidebarSection",
	  render: function() {
	    return (
	      React.createElement("div", React.__spread({id: "sidebar"},  this.props), 
	        React.createElement("div", {id: "avatar"}, 
	          React.createElement(Grid, null, 
	            React.createElement(Row, {className: "fg-white"}, 
	              React.createElement(Col, {xs: 4, collapseRight: true}, 
	                React.createElement("img", {src: "/imgs/avatars/avatar0.png", width: "40", height: "40"})
	              ), 
	              React.createElement(Col, {xs: 8, collapseLeft: true, id: "avatar-col"}, 
	                React.createElement("div", {style: {top: 23, fontSize: 16, lineHeight: 1, position: 'relative'}}, "Anna Sanchez"), 
	                React.createElement("div", null, 
	                  React.createElement(Progress, {id: "demo-progress", value: 30, min: 0, max: 100, color: "#ffffff"}), 
	                  React.createElement("a", {href: "#"}, React.createElement(Icon, {id: "demo-icon", bundle: "fontello", glyph: "lock-5"}))
	                )
	              )
	            )
	          )
	        ), 
	        React.createElement(SidebarControls, null, 
	          React.createElement(SidebarControlBtn, {bundle: "fontello", glyph: "docs", sidebar: 0}), 
	          React.createElement(SidebarControlBtn, {bundle: "fontello", glyph: "chat-1", sidebar: 1}), 
	          React.createElement(SidebarControlBtn, {bundle: "fontello", glyph: "chart-pie-2", sidebar: 2}), 
	          React.createElement(SidebarControlBtn, {bundle: "fontello", glyph: "th-list-2", sidebar: 3}), 
	          React.createElement(SidebarControlBtn, {bundle: "fontello", glyph: "bell-5", sidebar: 4})
	        ), 
	        React.createElement("div", {id: "sidebar-container"}, 
	          React.createElement(Sidebar, {sidebar: 0, active: true}, 
	            React.createElement(ApplicationSidebar, null)
	          ), 
	          React.createElement(Sidebar, {sidebar: 1}, 
	            React.createElement(DummySidebar, null)
	          ), 
	          React.createElement(Sidebar, {sidebar: 2}, 
	            React.createElement(DummySidebar, null)
	          ), 
	          React.createElement(Sidebar, {sidebar: 3}, 
	            React.createElement(DummySidebar, null)
	          ), 
	          React.createElement(Sidebar, {sidebar: 4}, 
	            React.createElement(DummySidebar, null)
	          )
	        )
	      )
	    );
	  }
	});

	module.exports = SidebarSection;


/***/ },
/* 10 */
/***/ function(module, exports, __webpack_require__) {

	var __HUA = (function () { var React = __webpack_require__(3); var getHotUpdateAPI = __webpack_require__(4); return getHotUpdateAPI(React, "header.jsx", module.id); })(); if (false) { module.hot.accept(function (err) { if (err) { console.error("Cannot not apply hot update to " + "header.jsx" + ": " + err.message); } }); module.hot.dispose(function () { var nextTick = require("C:\\tmpuser\\tools\\work\\_git\\swidbox\\_conduct\\node_modules\\react-hot-loader\\node_modules\\next-tick\\index.js"); nextTick(__HUA.updateMountedInstances); }); }

	var Brand = __HUA.createClass({displayName: "Brand",
	  render: function() {
	    return (
	      React.createElement(NavHeader, React.__spread({},  this.props), 
	        React.createElement(NavBrand, {tabIndex: "-1"}, 
	          React.createElement("img", {src: "/imgs/logo.png", alt: "rubix", width: "111", height: "28"})
	        )
	      )
	    );
	  }
	});

	var Navigation = __HUA.createClass({displayName: "Navigation",
	  mixins: [ReactRouter.State, ReactRouter.Navigation],
	  render: function() {
	    var props = React.mergeProps({
	      className: 'pull-right'
	    }, this.props);

	    return (
	      React.createElement(NavContent, React.__spread({},  props), 
	        React.createElement(Nav, null, 
	          React.createElement(NavItem, {className: "logout", href: "#"}, 
	            React.createElement(Icon, {bundle: "fontello", glyph: "off-1"})
	          )
	        )
	      )
	    );
	  }
	});

	var Header = __HUA.createClass({displayName: "Header",
	  render: function() {
	    return (
	      React.createElement(Grid, React.__spread({},  this.props, {id: "navbar"}), 
	        React.createElement(Row, null, 
	          React.createElement(Col, {xs: 12}, 
	            React.createElement(NavBar, {fixedTop: true, id: "rubix-nav-header"}, 
	              React.createElement(Container, {fluid: true}, 
	                React.createElement(Row, null, 
	                  React.createElement(Col, {xs: 3, visible: "xs"}, 
	                    React.createElement(SidebarBtn, null)
	                  ), 
	                  React.createElement(Col, {xs: 6, sm: 4}, 
	                    React.createElement(Brand, null)
	                  ), 
	                  React.createElement(Col, {xs: 3, sm: 8}, 
	                    React.createElement(Navigation, null)
	                  )
	                )
	              )
	            )
	          )
	        )
	      )
	    );
	  }
	});

	module.exports = Header;


/***/ },
/* 11 */
/***/ function(module, exports, __webpack_require__) {

	var __HUA = (function () { var React = __webpack_require__(3); var getHotUpdateAPI = __webpack_require__(4); return getHotUpdateAPI(React, "footer.jsx", module.id); })(); if (false) { module.hot.accept(function (err) { if (err) { console.error("Cannot not apply hot update to " + "footer.jsx" + ": " + err.message); } }); module.hot.dispose(function () { var nextTick = require("C:\\tmpuser\\tools\\work\\_git\\swidbox\\_conduct\\node_modules\\react-hot-loader\\node_modules\\next-tick\\index.js"); nextTick(__HUA.updateMountedInstances); }); }

	var Footer = __HUA.createClass({displayName: "Footer",
	  getInitialState: function() {
	    return {
	      version: 0
	    };
	  },
	  componentDidMount: function() {
	    this.setState({
	      version: document.getElementsByTagName('body')[0].getAttribute('data-version')
	    });
	  },
	  render: function() {
	    return (
	      React.createElement("div", {id: "footer-container"}, 
	        React.createElement(Grid, {id: "footer", className: "text-center"}, 
	          React.createElement(Row, null, 
	            React.createElement(Col, {xs: 12}, 
	              React.createElement("div", null, "© 2014 SketchPixy Creative - v", this.state.version)
	            )
	          )
	        )
	      )
	    );
	  }
	});

	module.exports = Footer;


/***/ }
/******/ ])