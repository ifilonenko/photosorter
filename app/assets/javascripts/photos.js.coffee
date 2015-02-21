window.Body = React.createClass
  render: ->
    React.DOM.div
      children: 'hello world'
    React.DOM.img
      src: @props.info.data[4].images[0].source
      height: '960'
      width: '540'
