/* ERROR PAGES */
var notfound = require('./routes/notfound.jsx');

/* APP PAGES */
var blank = require('./routes/app/blank.jsx');

var metasetwizard = require("./routes/app/metasetwizard.jsx");

/* ROUTES */
module.exports = (
  <Route handler={ReactRouter.RouteHandler}>
    <DefaultRoute handler={blank} />
    <Route path='/' handler={blank} />
    <Route path='/newmetaset' handler={metasetwizard} />
    <NotFoundRoute handler={notfound} />
  </Route>
);
