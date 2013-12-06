# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

connection = new WebSocketRails('localhost:3000/websocket')
channel = connection.subscribe('photos')

channel.bind 'new', (photo) ->
	console.log photo
	$photo = $('.photos .col-md-4:last').clone();
 
	$photo.find('h3').text photo.caption
	$photo.find('img').attr 'src', photo['image_url']
 
	$('.photos').append($photo)

likeTemplate = (data) ->
	"<div class='like-email' data-id=#{data.id}> #{data.user.email} </div>"

$ ->

	# new GMaps
	#   div: '#map',
	#   lat: -12.043333,
	#   lng: -77.028333

	$('.button_to').on 'ajax:success', (e, data, status, xhr) ->
		if data.destroyed
			$(".like-email[data-id=#{data.id}]").text('')
		else
			
			$(".like-section[data-id=#{data.photo_id}]").append likeTemplate(data)

	# map = new GMaps
	# 	div: '#map',
	# 	lat: parseFloat($('#map').data('lat')),
	# 	lng: parseFloat($('#map').data('lng'))

	# map.addMarker
	# 	lat: parseFloat($('#map').data('lat')),
	# 	lng: parseFloat($('#map').data('lng'))


		# $('#map').attr('data-id')
		# $('#map').data('id')


$ ->
	id = $('#map').data('id')

	$.get '/api/photos/#{id}", (photo) ->
		map = new Gmaps
			div: '#map',
			lat: photo.latitude,
			lng: photo.longitude

		map.addMarker
			lat: photo.latitude,
			lng: photo.longitude





