CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi -lm
DIRFLAGS = -I/include -I/src

VulkanTest: main.cpp
	gcc $(CFLAGS) $(DIRFLAGS) -o VulkanTest main.cpp $(LDFLAGS)  -lstdc++

.PHONY: test clean

test: VulkanTest
	./VulkanTest

clean: VulkanTest
	rm -f VulkanTest
