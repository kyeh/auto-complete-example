$(document).on('ready',function(){

	$('.search-box').on('keyup', displayMatches)

	function displayMatches() {
		var query = $(event.target).val()

		params = {q: query}

		if (query.length > 0){
			$.get('/search', params, getMatchView)
		}
		else {
			clearMatchView()
		}

		function getMatchView(data) {
			console.log(data)
			
			if (data.length > 0){
				displayMatchView(createMatchView(data));
			}
			else{
				clearMatchView();
			}

		}

		function createMatchView(names) {
			var $template = $('.matched-names.template').clone()
			$template.removeClass('template')
			for(var i = 0; i < names.length; i++) {
				var $currentName = $('.found-name.template').clone()
				$currentName.removeClass('template')
				$currentName.text(names[i])
				$template.append($currentName)
			}

			return $template;
		}

		function displayMatchView(namesList) {
			var $whiteBox = $('.white-box')
			$whiteBox.css('display','initial')
			$whiteBox.empty()
			$whiteBox.append(namesList)


			return;
		}

		function clearMatchView() {
			var $whiteBox = $('.white-box')
			$whiteBox.css('display','none')
		}

	}
})