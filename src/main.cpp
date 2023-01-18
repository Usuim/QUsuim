#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtQml/qqmlregistration.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QQmlContext* rootContext = engine.rootContext();
    rootContext->setContextProperty("WINDOW_WIDTH", 1024);
    rootContext->setContextProperty("WINDOW_HEIGHT", 720);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
