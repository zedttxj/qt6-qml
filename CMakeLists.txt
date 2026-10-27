cmake_minimum_required(VERSION 3.16)
project(CounterApp VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml Quick)

set(CMAKE_AUTOMOC ON)

add_executable(CounterApp
    main.cpp
    CounterController.h
)

target_link_libraries(CounterApp PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
)

# Copy main.qml straight to the build output directory so it's found locally
file(COPY main.qml DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
