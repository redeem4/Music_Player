#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "audio.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QQmlContext *context = engine.rootContext();

    //Creates an instance of the Audio Class and Context
    //allows the C++ code to connect itself to the QML Code
    Audio mainAudio;
    context->setContextProperty("audio", &mainAudio);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
