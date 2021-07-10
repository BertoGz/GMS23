/// @description Insert description here
// You can write your code in this editor


containerDimensions= {width:GUI_WIDTH/2,height: GUI_HEIGHT/4}
containerColor=c_white;
speakerContaineDimensions={width:72,height:72}
dialogues=[];
dialogueIndex=0; // the current text to be shown in the dialogue array
dialogueSurface = surface_create(containerDimensions.width,containerDimensions.height)
padding = 10 // used to keep elements away from corners
//// local


function drawContainer(){
	draw_set_color(containerColor)
	draw_rectangle(0,0,containerDimensions.width,containerDimensions.height,0)	
}

function drawSpeakerContainer(){
	draw_set_color(c_white)
	draw_rectangle(0,0,speakerContaineDimensions.width,speakerContaineDimensions.height,0)	
}

function drawText(){
	xPos=speakerContaineDimensions.width;
	yPos=0;
	var str = dialogues[dialogueIndex].text // we get the string from dialogues array
	var stringHeight = string_height(str)

	var CUT_OFF_LENGTH = 194;
	
	var formattedText = string_copy(str,0,CUT_OFF_LENGTH)
	if (string_length(formattedText)>=CUT_OFF_LENGTH){
		formattedText = formattedText+"..."
	}

	draw_set_halign(fa_left)
	draw_set_font(bitmapFont)
	draw_text_ext(xPos+padding,yPos+padding,formattedText,stringHeight,containerDimensions.width-padding-speakerContaineDimensions.width)
	drawContinueText()
}
function drawContinueText(){
	draw_set_color(c_red)
	draw_set_halign(fa_right)
	draw_text_ext(containerDimensions.width-padding,containerDimensions.height-padding-8,"X TO CONTINUE",8,130)
}

function handleGotoNextDialogue(){
	if (keyboard_check_released(INPUT_F)){
		if (dialogueIndex < array_length(dialogues)-1 )
		{
		dialogueIndex++;}
	}
}

