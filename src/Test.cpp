#include <Test.hpp>
#include <qdebug.h>
#include <qobject.h>
#include <QDebug>

TestClass::TestClass(QObject *parent) : QObject(parent), m_myVar("123"){

}

TestClass::~TestClass(){
    qDebug() << "Destructor!";
}

void TestClass::hello() {
    qDebug() << "Hola Mundo!";
}

QString TestClass::myVar() {
    return m_myVar;
}

void TestClass::setMyVar(QString newVar) {
    if(m_myVar != newVar) {
        m_myVar = newVar;
        emit myVarChanged();
    }
}
