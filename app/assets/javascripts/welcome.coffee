# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "ajax:success", "form#new_my_link", (e, data, status, xhr)->
	$("#links").html( "#{$("#links").html()} <div class='top-space'><h2><a href='/my_links/#{data.id}'>#{data.link}</a></h2></div> " )
	$("form#new_my_link").find("input[type='url']").val ""
$(document).on "ready page:load", ()->
	$(".add-favorite").on "click", (ev)->
		ev.preventDefault()
		my_link_id = $(this).data("id")
		$self = $(this)
		console.log my_link_id
		$.ajax
			url: "/my_favorite_links"
			method: "POST"
			dataType: "JSON"
			data: 
				my_favorite_link:
					my_link_id: my_link_id
			success: (data)->
				console.log data
				$self.slideUp "slow"
			error: (err)->
				console.log err
		return false