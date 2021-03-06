#pragma once

#include "cocos2d.h"
#include "SharderNode.h"

class HelloShader : public cocos2d::Layer
{
public:
	// there's no 'id' in cpp, so we recommend returning the class instance pointer
	static cocos2d::Scene* createScene();

	// Here's a difference. Method 'init' in cocos2d-x returns bool, instead of returning 'id' in cocos2d-iphone
	virtual bool init();

	// a selector callback
	void menuCloseCallback(cocos2d::Ref* pSender);

	bool onTouchBegan(cocos2d::Touch* touch, cocos2d::Event*);
	void onTouchMoved(cocos2d::Touch* touch, cocos2d::Event*);
	void onTouchEnded(cocos2d::Touch* touch, cocos2d::Event*);

	// implement the "static create()" method manually
	CREATE_FUNC(HelloShader);

	ShaderNode* node;

	//Sprite3Dのポインタ
	cocos2d::Sprite3D*m_pSprite3D;
};