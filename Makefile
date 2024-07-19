CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi
DIRFLAGS = -I/include -I/src

VulkanTest: main.cpp
	g++ $(CFLAGS) $(DIRFLAGS) -o VulkanTest main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean: VulkanTest
	rm -f VulkanTest
