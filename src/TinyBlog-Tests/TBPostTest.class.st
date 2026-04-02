Class {
	#name : #TBPostTest,
	#superclass : #TestCase,
	#category : #'TinyBlog-Tests'
}

{ #category : #tests }
TBPostTest >> testPostIsCreatedCorrectly [
	| post |
	post := TBPost 
		title: 'Welcome to TinyBlog'
		text: 'TinyBlog is small blog engine made with Pharo.'
		category: 'Tiny-Blog'.
	self assert: post title equals: 'Welcome to TinyBlog'.
	self assert: post text equals: 'TinyBlog is small blog engine made with Pharo.'.
	self assert: post category equals: 'Tiny-Blog'
]

{ #category : #tests }
TBPostTest >> testWithoutCategoryIsUnclassified [
	| post |
	post := TBPost 
		title: 'Welcome to TinyBlog'
		text: 'TinyBlog is small blog engine made with Pharo.'.
	self assert: post title equals: 'Welcome to TinyBlog'.
	self assert: post isUnclassified.
	self deny:  post isVisible  
]
