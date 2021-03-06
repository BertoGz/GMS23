// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function print(str){
show_debug_message(str)	
}

function printToScreen(str){
	with (instance_find(screen_text,0)){
			screenText=str
	}
}

function combineStruct(struct1,struct2){
	var newStruct = {}
	var propertiesArray1 = variable_struct_get_names(struct1);
	var propertiesArray2 = variable_struct_get_names(struct2);
	
	 for (var i = 0; i < array_length(propertiesArray1); i++;)
     { 
		var propVal = variable_struct_get(struct1,propertiesArray1[i])
		variable_struct_set(newStruct, propertiesArray1[i], propVal);
    }
	  for (var i = 0; i < array_length(propertiesArray2); i++;)
     {
	 	var propVal = variable_struct_get(struct2,propertiesArray2[i])
		variable_struct_set(newStruct, propertiesArray2[i], propVal);
    }
	
	return newStruct
}
function returnAllButXProperty(struct,key){
	var newStruct = {}
	var propertiesArray1 = variable_struct_get_names(struct);
	var propertiesArray2 = variable_struct_get_names(struct2);
	
	 for (var i = 0; i < array_length(propertiesArray1); i++;)
     { 
		 if (propertiesArray1[i]!=key){
			var propVal = variable_struct_get(struct,propertiesArray1[i])
			variable_struct_set(newStruct, propertiesArray1[i], propVal);
		}
    }
	return newStruct
}

// checks the properties of each object 
// checking to see if objects are equal
function objectPropsSame(struct1,struct2){
	var propertiesArray1 = variable_struct_get_names(struct1);
	var propertiesArray2 = variable_struct_get_names(struct2);
	 for (var i = 0; i < array_length(propertiesArray1); i++;)
     { 
		var propVal = variable_struct_get(struct1,propertiesArray1[i])
		var propVal2 = variable_struct_get(struct2,propertiesArray2[i])
		if (propVal!=propVal2){
			return false
		}
		
	}
	for (var i = 0; i < array_length(propertiesArray2); i++;)
    { 
		var propVal = variable_struct_get(struct1,propertiesArray1[i])
		var propVal2 = variable_struct_get(struct2,propertiesArray2[i])
		if (propVal!=propVal2){
			return false
		}

	}
	if ( array_length(propertiesArray1) !=  array_length(propertiesArray2)){
		return false
	}
	return true
	
}