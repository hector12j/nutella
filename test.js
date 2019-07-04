

(function() {
	var modal = document.querySelector(".modal");
	var closeButton = document.querySelector(".close-button");

	function toggleModal() {
        modal.classList.toggle("show-modal");
    }

    function windowOnClick(event) {
        if (event.target === modal) {
            toggleModal();
        }
    }
    closeButton.addEventListener("click", toggleModal);
    window.addEventListener("click", windowOnClick);

	document.querySelectorAll('.btn').forEach(function (element) {
		element.addEventListener("click", toggleModal);
	});
})();