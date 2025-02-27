"
I represent download errors.
I can be added as a node to the template tree. That's why I have some methods to say I have no children and I am not a template (polymorphism with PhLAbstractTemplate)
"
Class {
	#name : #PhLDownloadError,
	#superclass : #PhLError,
	#instVars : [
		'url'
	],
	#category : #'PharoLauncher-Core-Download'
}

{ #category : #signalling }
PhLDownloadError class >> signalUrl: anUrl [
	^ self new
		setUrl: anUrl;
		signal
]

{ #category : #polymorphism }
PhLDownloadError >> hasChildren [ 
	^ false
]

{ #category : #polymorphism }
PhLDownloadError >> isTemplate [
	^ false
]

{ #category : #accessing }
PhLDownloadError >> longDescription [
	^ 'Error downloading ', (url printStringLimitedTo: 100)
]

{ #category : #accessing }
PhLDownloadError >> name [
	^ 'network error'
]

{ #category : #initialization }
PhLDownloadError >> setUrl: anUrl [	
	url := anUrl
]
