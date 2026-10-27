#pragma once

#include <QObject>

class CounterController : public QObject {
  Q_OBJECT
  Q_PROPERTY(int count READ count WRITE setCount NOTIFY countChanged)

public:
  explicit CounterController(QObject *parent = nullptr)
      : QObject(parent), m_count(0) {}

  int count() const { return m_count; }

  void setCount(int newCount) {
    if (m_count == newCount)
      return;
    m_count = newCount;
    emit countChanged();
  }

  Q_INVOKABLE void increment() { setCount(m_count + 1); }

signals:
  void countChanged();

private:
  int m_count;
};
