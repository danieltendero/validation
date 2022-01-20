build:
	hugo -D > /dev/null 2>&1

clean:
	rm -r ./dist/* /dev/null 2>&1

post:
	hugo new posts/$(POST_NAME).md 
	echo "--- \ntitle: \"$(POST_TITLE)\" \ndraft: false\n---" > ./content/posts/$(POST_NAME).md
