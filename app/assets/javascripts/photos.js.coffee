Body = React.createClass
  render: ->
    React.DOM.h1
      children: 'Hello'

React.renderComponent(Body(), document.getElementById('reactcontent'))