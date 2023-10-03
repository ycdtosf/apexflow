# ApexFlow

ApexFlow is Apex Action for Salesforce Flow that allows you to configure and execute native and custom Apex code. ApexFlow eliminates the need to write and manage multiple Apex Invocables and provides a UI to select the parameters that will be passed to the selected Apex method.

Several standard Apex classes have already been "wrapped" for ApexFlow:

* BusinessHours
* Date
* DateTime
* Label
* Math
* String
* UserInfo

Other native Apex classes are being evaluated to add to ApexFlow.

## Current State

TLDR: ApexFlow is somewhere between "alpba" and "beta". It needs eyeballs, feedback, contribution, and issues submitted.

## Design Approach

ApexFlow uses a pattern of wrapping existing Apex classes and methods in a classes that extends an abstract `MethodWrapper` class. These wrappers are then organized as subclasses in a parent container class, which implements the `IMethodContainer` interface. 

## Anatomy

### Apex Classes

#### ApexFlow.cls
Initializes and organizes the callable Apex Methods, exposes calls to retrieve namespaces, classes, and methods via the `apexFlowCpe` custom property editor.

#### ApexFlowInvocable.cls
Initializes and organizes the callable Apex Methods, exposes calls to retrieve namespaces, classes, and methods via the `apexFlowCpe` custom property editor.

#### DataTypes.cls
Has properties that represent all data types that ApexFlow supports (which is consistent with the data types Flow supports). This data structure is used to shuttle variables around as dynamically as possible, although there are some "fun" casting/converting exercises that need to happen. 

#### IMethodContainer.cls
Interface whose primarly purpose is to require the `init()` method be implements and also to flag ApexFlow method container classes to be picked up by a `ApexTypeImplementor` query in `ApexFlow`.

#### InvocableRequest.cls
Used by `ApexInvocable` as the request data structure, built by `apexFlowCpe` when configuring an instance of the ApexFlow Action in a Flow. 

#### MethodContainer.cls
Generated code that dynamically wraps native Apex class methods. The generator code is in the `scripts/generator` folder.

#### MethodContainer.cls
Generated code that dynamically writes tests to cover `MethodContainer`.

#### MethodWrapper.cls
Abstract class that defines all the common properties and methods that wrapped Apex needs to interact with ApexFlow.

#### MethodWrapperParameter.cls
Data structure to manage input parameters for wrapped methods.

### Scripts

#### generator

This folder is an amalgamation of code whose initial purpose was to scrape Apex class method data from the Apex Reference Guide website. I wrote this primarily because I'm lazy and didn't want to write a bunch of JSON manually...

The generator process works as follows:

1. Go to a class in the Apex Reference Guide.
1. Right-click to inspect and find this tag, then select it and its contents: `<div class="topic reference nested1" lang="en-us" id="apex_System_BusinessHours_methods">`. Save the file in the `html` folder
1. Run `node clean.js [the_class_name]` to get a `_cleaned` version in the same folder.
1. Run `node convert.js [the_class_name]` to get a `[the_class_name].json` file in the `config` folder.
1. Run `go.js` to generated the `MethodContainer.cls` and `MethodContainerTests.cls` classes.

Note: you don't need to do any of the above, unless you want to add another native Apex class's methods to ApexFlow.

This whole process would probably make sense as a SFDX CLI plugin. It would probably help to wrapper custom code and make it accessible to ApexFlow. I'm not smwart enough to make one of those.

## Backlog

* Clean up the ApexFlow UI layout (labels, descriptions, spacing) 
* Improve the variable selection UI to make it closer to native Flow (I think there's an UnofficialSF library for this)
* Support custom Apex classes
* Support sObjects to and from Flow
* Other rad stuff, probably.