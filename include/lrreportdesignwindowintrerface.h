#ifndef LRREPORTDESIGNWINDOWINTRERFACE_H
#define LRREPORTDESIGNWINDOWINTRERFACE_H

#include <QMainWindow>
#include <QSettings>
#include "lrglobal.h"

namespace LimeReport {

class LIMEREPORT_EXPORT ReportDesignWindowInterface: public QMainWindow{
public:
    ReportDesignWindowInterface(QWidget* parent = 0): QMainWindow(parent){}
    virtual bool checkNeedToSave() = 0;
    virtual bool isNeedToSave() = 0;
    virtual void showModal() = 0;
    virtual void showNonModal() = 0;
    virtual void setSettings(QSettings* value) = 0;
    virtual QSettings* settings() = 0;
    virtual void restoreSetting() = 0;
    virtual void saveSettings() = 0;
    virtual void setShowProgressDialog(bool value) = 0;
    virtual void newReport(bool needCheck = true) = 0;
    virtual void setBarcodeVariables(const QStringList &) = 0;
};

} // namespace LimeReport

#endif // LRREPORTDESIGNWINDOWINTRERFACE_H
