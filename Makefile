BUILD_DIR := build

clean:
	@ rm -rf $(BUILD_DIR)

jlox:
	@ mkdir -p ${BUILD_DIR}/java
	@ javac -d ${BUILD_DIR}/java java/com/craftinginterpreters/lox/*.java

.PHONY: clean jlox
