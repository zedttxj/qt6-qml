#include "CounterController.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);
  QQmlApplicationEngine engine;

  CounterController counterController;
  engine.rootContext()->setContextProperty("counterController",
                                           &counterController);

  // Load once and check for success
  engine.load(QUrl(QStringLiteral("main.qml")));
  if (engine.rootObjects().isEmpty())
    return -1;

  return app.exec(); // Starts the event loop cleanly
}
