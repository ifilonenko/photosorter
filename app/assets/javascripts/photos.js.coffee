window.Body = React.createClass
  render: ->
    React.DOM.div
      children: 'hello world'
    console.log(@props.info)
    # React.DOM.img
    #   src: @props.info.data[0].images[0].source
    #   height: '960'
    #   width: '540'
