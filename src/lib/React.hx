import js.html.DOMElement;
import js.html.Event;
import js.html.EventTarget;

@:jsRequire('react')
extern class React {
	static function createElement(type:Dynamic, attrs:Dynamic, ?child1:Dynamic, ?child2:Dynamic, ?child3:Dynamic, ?child4:Dynamic, ?child5:Dynamic, ?child6:Dynamic, ?child7:Dynamic, ?child8:Dynamic, ?child9:Dynamic, ?child10:Dynamic):React.Component;

	static var PropTypes(default, null):ReactPropTypes;
	static function render(component:Component, container:DOMElement, ?callback:Void -> Void):Component;
	static function unmountComponentAtNode(container:DOMElement):Bool;
	static function renderComponentToString(component:React.Component):String;
	static function renderComponentToStaticMarkup(component:React.Component):String;
	static function findDOMNode(component:Component):DOMElement;

	static var DOM(default, null):ReactDOM;
}

@:native('React.Component')
@:autoBuild(ReactMacro.build())
extern class Component
{
	var refs(default, null):Dynamic;
	
	function getDOMNode():DOMElement;
	function setProps(nextProps:Dynamic):Void;
	function replaceProps(nextProps:Dynamic):Void;
	function transferPropsTo(targetComponent:React.Component):Void;
	function setState(nextState:Dynamic, ?callback:Void -> Void):Void;
	function replaceState(nextState:Dynamic, ?callback:Void -> Void):Void;
	function forceUpdate(?callback:Void -> Void):Void;
	function isMounted():Bool;

	function render():Component;
	function componentWillMount():Void;
	function componentDidMount():Void;
	function componentWillUnmount():Void;
	function componentDidUnmount():Void;
}

// extern class ReactProps implements Dynamic {
// 	// TODO aVoid Dynamic if possible
// 	var children(default, null):Dynamic;
// }

extern class ReactDOM {
}

extern class SyntheticEvent {
	var bubbles(default, null):Bool;
	var cancelable(default, null):Bool;
	var currentTarget(default, null):EventTarget;
	var defaultPrevented(default, null):Bool;
	var eventPhase(default, null):Int;
	var isTrusted(default, null):Bool;
	var nativeEvent(default, null):Event;
	function preventDefault():Void;
	function stopPropagation():Void;
	var target(default, null):EventTarget;
	var timeStamp(default, null):Date;
	var type(default, null):String;
}

extern class ReactPropTypes {
	var array:Dynamic;
	var bool:Dynamic;
	var func:Dynamic;
	var number:Dynamic;
	var object:Dynamic;
	var string:Dynamic;
	var any:Dynamic;
	var arrayOf:Dynamic;
	var DOMElement:Dynamic;
	var instanceOf:Dynamic;
	var node:Dynamic;
	var objectOf:Dynamic;
	var oneOf:Dynamic;
	var oneOfType:Dynamic;
	var shape:Dynamic;
}
