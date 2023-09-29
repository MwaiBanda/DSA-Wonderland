
run:
	@echo 'Welcome to the Data Structures and Alogrithms Wonderland';\
	echo 'this tool allow to run different source files';\
	echo Please select the language:; \
	echo '1) Go'; \
	echo '2) Rust'; \
	echo '3) Swift'; \
	echo '4) Kotlin'; \
	echo '5) Java'; \
	echo '6) C++'; \
	echo '7) Javascript'; \
	echo '8) Typescript'; \
	echo '9) Python'; \
	read -p 'Enter choice: ' result && $(MAKE) SELECTED_LANGUAGE=$$result language-selected

language-selected:
	@echo
ifeq ($(SELECTED_LANGUAGE),1)
	@cd ./Go && go run main.go
endif
ifeq ($(SELECTED_LANGUAGE),2)
	@cd ./Rust && cargo run
endif
ifeq ($(SELECTED_LANGUAGE),3)
	@cd ./Swift && swift run
endif
ifeq ($(SELECTED_LANGUAGE),4)
	@cd ./Kotlin && kotlinc hello.kt -include-runtime -d hello.jar && java -jar hello.jar
endif
ifeq ($(SELECTED_LANGUAGE),5)
	@cd ./Java && javac Main.java && java Main
endif
ifeq ($(SELECTED_LANGUAGE),6)
	@cd ./C++ && g++ main.cpp && ./a.out
endif
ifeq ($(SELECTED_LANGUAGE),7)
	@cd ./Javascript && node main.js
endif
ifeq ($(SELECTED_LANGUAGE),8)
	@cd ./Typescript && node main.ts
endif
ifeq ($(SELECTED_LANGUAGE),9)
	@cd ./Python && python3 main.py
endif
	
	


	
