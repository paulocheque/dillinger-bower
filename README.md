# Dillinger Bower

Dillinger is an excellent NON-embeddable Markdown editor.

The Dillinger's fork https://github.com/paulocheque/dillinger will try to turn the Dillinger embeddable. **But no expressive progress so far.**

This current project is a Bower project that will use that fork to provide the Dillinger editor as a Bower dependency.


# Testing it locally

    make
    open example.html


# Installation

This Bower lib has not been registered in Bower yet, because this is an experiment.


# Integration

Check the `example.html` file. I include the Dillinger's editor and preview inside Bootstrap grid columns. But the required code is the following:

    <link href="./build/dillinger.min.css" rel="stylesheet">
    <link href="./build/override.css" rel="stylesheet">
    <script src="./build/dillinger.min.js"></script>

    <div ng-controller="Base">
        <div class="split split-editor">
            <div id="editor"></div>
        </div>

        <div class="split split-preview">
            <div id="preview" preview debounce="150"></div>
        </div>
    </div>


# Layout Customisation

It is manual too. You can use the `override.css` file to include your layout tests.
