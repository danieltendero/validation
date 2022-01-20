.PHONY: build
build:
	hugo -D

.PHONY: clean
clean:
	rm -r ./dist/*

.PHONY: post
post:
	hugo new posts/$(POST_NAME).md 
	echo "--- \ntitle: \"$(POST_TITLE)\" \ndraft: false\n---" > content/posts/$(POST_NAME).md
