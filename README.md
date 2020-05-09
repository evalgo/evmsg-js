# evmsg-js

## license
BSD-1-clause

## dependencies
- jquery MIT License
- jsviews MIT License
- gnu make (GNU GPL)
- w3css (no license)
- font awesome (free license)

### usage of widget with websocket and messages
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
    console.log(d.data()[0].hello("world"));
});
```

### usage of widget without websocket and messages
```
var tw = EVMsg.widget().config({Data:{getters:[{getter:"data",type:"Hello"}]},Hello:{getters:["hello"]}});
tw.templates[0]={name:"evmsg-hello-world", target:"container", tmpl:"<div>{{for data()}}<h2> hello {^{:hello()}}</h2>{{/for}}</div>"};
EVMsg.widget(tw).render(EVMsg.widget().data({data:[{hello:"world!"}]}));

```

