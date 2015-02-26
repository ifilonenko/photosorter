window.Body = React.createClass
  logout: ->
    FB.logout (response) ->
      console.log("Logged out")
  render: ->
    @props.info.data.map((album) ->
      if album["likes"] == undefined
        album["likes"] = {"data": []}
    )
    images = @props.info.data.map((thing) ->
      { 
        likes: parseInt(thing.likes.data.length, 10)
        src: thing.images[0].source
      }
    )
    images.sort((a, b) -> b.likes - a.likes)
    console.log(images)
    # all_images = images.map((album) ->
    #   likes = parseInt(album.likes.data.length)
    #   src = album.images[0].source
    #   React.DOM.div
    #     className: 'Block PadWidth Tile SoundcloudPost'
    #     children: 
    #       React.DOM.div
    #         className: 'PostContent'
    #         children: [
    #           React.DOM.img
    #             className: 'PostImage'
    #             src: src
    #           React.DOM.span
    #             className: 'PostEmbed'
    #             children: 
    #               React.DOM.i
    #                 className: 'fa fa-thumbs-up'
    #                 children: likes
    #         ]
    # )
    React.DOM.div
      className: 'bodyContainer'
      children: [
        React.DOM.div
          className: 'Block PadWidth Search'
          children: 'Begin your photo-sorting experience by clicking login and watch all your photos get sorted under'
        # React.DOM.div
        #   className: ''
        #   children: all_images
      ]



