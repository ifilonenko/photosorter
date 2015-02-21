Body = React.createClass
  render: ->
    React.DOM.div
      children: 'hello world'

React.renderComponent(Body(), document.getElementById('reactcontent'))