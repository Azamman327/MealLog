
var body = document.querySelector('body');
body.setAttribute('onLoad', 'init_group()');

function init_group() {
	groupCreate_init();
	groupInfo_init();
	groupView_init();
	
	init();
}




