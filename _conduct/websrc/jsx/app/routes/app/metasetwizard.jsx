var Header = require('../../common/header.jsx');
var Sidebar = require('../../common/sidebar.jsx');
var Footer = require('../../common/footer.jsx');

var ReactStyle = require('../../react-styles/src/ReactStyle.jsx');  

var Body = React.createClass({
  componentDidMount: function() {
    var isLtr = $('html').attr('dir') === 'ltr';
    var styles = {};

    if(isLtr) {
      styles['#wizard-2 .form-border'] = {
        borderRight: '1px solid #ddd'
      };
    } else {
      styles['#wizard-2 .form-border'] = {
        borderLeft: '1px solid #ddd'
      };
    }

    ReactStyle.addRules(ReactStyle.create(styles));


    $('#wizard-id').steps({
      // onStepChanging: function (event, currentIndex, newIndex) {
      //   $('#form-2').validate().settings.ignore = ':disabled,:hidden';
      //   return $('#form-2').valid();
      // },
      // onFinishing: function (event, currentIndex) {
      //   $('#form-2').validate().settings.ignore = ':disabled';
      //   return $('#form-2').valid();
      // },
      // onFinished: function (event, currentIndex) {
      //   alert('Submitted!');
      // }
    });
  },
  render: function() {
    return (
      <Container id='body'>
        <Grid>
          <Row>
            <Col sm={12}>
              <PanelContainer noOverflow controlStyles='bg-pink fg-white'>
                <Panel>
                  <PanelHeader className='bg-pink fg-white' style={{margin: 0}}>
                    <Grid>
                      <Row>
                        <Col xs={12}>
                          <h3>Wizard for adding a new metaset</h3>
                        </Col>
                      </Row>
                    </Grid>
                  </PanelHeader>
                  <PanelBody>
                    <Form id='form-id'>
                      <div id='wizard-id'>

                        <h1>Page 1</h1>
                        <div>
                          <Grid>
                            <Row>
                              <Col sm={4} xs={12} collapseLeft xsOnlyCollapseRight/>
                            </Row>
                          </Grid>
                        </div>


                        <h1>Page 2</h1>
                        <div>
                          <Grid>
                            <Row>
                              <Col sm={4} xs={12} collapseLeft xsOnlyCollapseRight/>
                            </Row>
                          </Grid>
                        </div>


                      </div> 
                    </Form>
                  </PanelBody>
                </Panel>
              </PanelContainer>

            </Col>
          </Row>
        </Grid>
        {ReactStyle.renderToComponents()} 
      </Container>
    );
  }
});

var Page = React.createClass({
  mixins: [SidebarMixin],
  render: function() {
    var classes = React.addons.classSet({
      'container-open': this.state.open
    });
    return (
      <Container id='container' className={classes}>
        <Sidebar />
        <Header />
        <Body />
        <Footer />
      </Container>
    );
  }
});

module.exports = Page;
