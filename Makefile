# Project Settings
PROJECT_NAME = myproject
SOURCES_DIR = .
OUTPUT_DIR = ./dist

# Advanced Settings
BUILD_OUTPUT = $(OUTPUT_DIR)/$(PROJECT_NAME)
OBJECTS_DIR = ./.obj

# Super Advanced Compiler Settings (PROBABLY DON'T TOUCH)
CXX = g++
CXXFLAGS = -Wall
SOURCES := $(wildcard $(SOURCES_DIR)/*.cpp)
OBJECTS := $(patsubst $(SOURCES_DIR)/%.cpp,$(OBJECTS_DIR)/%.o,$(SOURCES))



# default build procedure when calling `make`
all: $(BUILD_OUTPUT)


# to build 'objects' we need 'sources'
$(OBJECTS_DIR)/%.o: $(SOURCES_DIR)/%.cpp
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# to build 'build_output' we need 'objects'
$(BUILD_OUTPUT): $(OBJECTS)
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $@

# clean up objects
clean:
	@rm $(OBJECTS)
	@rmdir $(OBJECTS_DIR)
	@rm $(BUILD_OUTPUT)
	@rmdir $(OUTPUT_DIR)

