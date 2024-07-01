BUILD_DIR := build

clean:
	@ rm -rf $(BUILD_DIR)

jlox:
	@ mkdir -p ${BUILD_DIR}/java
	@ javac -d ${BUILD_DIR}/java java/com/craftinginterpreters/lox/*.java

generate_ast:
	@ javac -d ${BUILD_DIR}/java java/com/craftinginterpreters/tool/*.java

.PHONY: clean jlox generate_ast
