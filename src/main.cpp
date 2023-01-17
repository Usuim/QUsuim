#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <Test.hpp>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    TestClass test;

    QQmlApplicationEngine engine;

    QQmlContext* rootContext = engine.rootContext();
    rootContext->setContextProperty("WINDOW_WIDTH", 1024);
    rootContext->setContextProperty("WINDOW_HEIGHT", 720);
    rootContext->setContextProperty("TestClass", &test);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
