# Sprite Kit Speed Run Speaker Notes

## Create New Project, Strip Template Code

* In Xcode, select New -> Project -> SpriteKit Game
* Run it to show what it does
* In MyScene.m, remove code under initWithSize: and *touchesBegan:*

## Create Star Field

* Choose New -> File -> SpriteKit Particle File
* Use Spark template, name it StarField. Pull up Emitter editor.
* Discuss emitters. Mention that they have lots of properties, many (but not all) of which can be set in Xcode.
* Work through properties settings:

![Star Field Settings](starfieldPanel.png)

* In **myScene.m** *initWithSize*, add this:

    [self setupStarfield];

