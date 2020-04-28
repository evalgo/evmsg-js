# evmsg-js

## license
BSD-1-clause

## dependencies
- jquery MIT License
- jsviews MIT License

### usage
```
$(document).ready(function(){
// define your data specific template
EVMsg.dataTmpl = "<div>eve:{{for data()}}<h2> hello {^{:hello()}}</h2>{{/for}}</div>";

// get the widget config
var w = EVMsg.widget().config();

// add a template to the config
w.templates[0]={name:"evmsg-hello-world", target:"container", tmpl:EVMsg.getMsgTmpl()};

// define a data model
EVMsg.newDataModel({Data:{getters:["hello"]}});

// create a new message with the data object
var msg = EVMsg.newMessage({data:[{hello:""}]})

// create a data model instance from the message
var d = EVMsg.modelFromMsg(msg)

// render the widget with a new data model
EVMsg.widget(w).render(d);

// do something with the data
});
```