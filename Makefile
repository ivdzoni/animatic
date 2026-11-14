JS_COMPILER ?= ./node_modules/uglify-js/bin/uglifyjs
FILES = \
	src/core.js \
	src/utils.js \
	src/math/vector.js \
	src/math/matrix.js \
	src/eventemitter.js \
	src/animations/easings.js \
	src/animations/tween.js \
	src/animations/animation.js \
	src/animations/css_animation.js \
	src/animations/collection.js \
	src/animations/parallel.js \
	src/animations/sequence.js \
	src/css.js \
	src/world.js \
	src/timeline.js \
	src/item.js \
	src/physics/forces/constant.js \
	src/physics/forces/attraction.js \
	src/physics/forces/edge.js \
	src/physics/verlet.js \
	src/physics/particle.js \

all: \
	animatic.js \
	animatic.min.js

animatic.js: ${FILES}
	@rm -f $@
