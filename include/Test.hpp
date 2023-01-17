#ifndef TEST_H
#define TEST_H

#include <QObject>
#include <cstddef>
#include <qobject.h>
#include <qtmetamacros.h>

class TestClass : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString myVar READ myVar WRITE setMyVar NOTIFY myVarChanged)
public:
    explicit TestClass(QObject *parent = nullptr);
    virtual ~TestClass();
    QString myVar();

signals:
    void myVarChanged();

public slots:
    void hello();
    void setMyVar(QString);


private:
    QString m_myVar;

};

#endif