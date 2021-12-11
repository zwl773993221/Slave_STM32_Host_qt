#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>

static const unsigned char qt_resource_tree[] = {
0,
0,0,0,0,2,0,0,0,13,0,0,0,1,0,0,1,
250,0,0,0,0,0,1,0,0,0,0,0,0,0,8,0,
0,0,0,0,1,0,0,0,0,0,0,0,202,0,0,0,
0,0,1,0,0,0,0,0,0,2,160,0,0,0,0,0,
1,0,0,0,0,0,0,2,104,0,0,0,0,0,1,0,
0,0,0,0,0,0,146,0,0,0,0,0,1,0,0,0,
0,0,0,1,74,0,2,0,0,0,4,0,0,0,14,0,
0,0,98,0,0,0,0,0,1,0,0,0,0,0,0,2,
236,0,0,0,0,0,1,0,0,0,0,0,0,0,52,0,
0,0,0,0,1,0,0,0,0,0,0,2,182,0,0,0,
0,0,1,0,0,0,0,0,0,0,254,0,0,0,0,0,
1,0,0,0,0,0,0,2,46,0,0,0,0,0,1,0,
0,0,0,0,0,1,94,0,0,0,0,0,1,0,0,0,
0,0,0,1,182,0,0,0,0,0,1,0,0,0,0,0,
0,1,126,0,0,0,0,0,1,0,0,0,0,0,0,1,
212,0,0,0,0,0,1,0,0,0,0};
static const unsigned char qt_resource_names[] = {
0,
1,0,0,0,47,0,47,0,19,1,185,68,220,0,69,0,
97,0,115,0,121,0,84,0,97,0,98,0,108,0,101,0,
87,0,105,0,100,0,103,0,101,0,116,0,46,0,113,0,
109,0,108,0,20,12,86,42,156,0,70,0,105,0,114,0,
115,0,116,0,68,0,101,0,102,0,97,0,117,0,108,0,
116,0,80,0,97,0,103,0,101,0,46,0,113,0,109,0,
108,0,21,10,108,147,60,0,83,0,117,0,98,0,87,0,
97,0,118,0,101,0,66,0,114,0,111,0,119,0,115,0,
101,0,80,0,97,0,103,0,101,0,46,0,113,0,109,0,
108,0,25,9,154,235,92,0,83,0,117,0,98,0,68,0,
105,0,115,0,112,0,108,0,97,0,121,0,83,0,101,0,
116,0,116,0,105,0,110,0,103,0,80,0,97,0,103,0,
101,0,46,0,113,0,109,0,108,0,23,7,45,25,60,0,
83,0,105,0,120,0,116,0,104,0,68,0,97,0,116,0,
97,0,77,0,97,0,110,0,97,0,103,0,101,0,80,0,
97,0,103,0,101,0,46,0,113,0,109,0,108,0,35,14,
174,80,92,0,84,0,104,0,105,0,114,0,100,0,67,0,
111,0,108,0,108,0,101,0,99,0,116,0,105,0,111,0,
110,0,84,0,97,0,98,0,108,0,101,0,83,0,101,0,
116,0,116,0,105,0,110,0,103,0,80,0,97,0,103,0,
101,0,46,0,113,0,109,0,108,0,7,10,101,172,148,0,
99,0,111,0,110,0,116,0,101,0,110,0,116,0,13,1,
184,80,156,0,84,0,101,0,120,0,116,0,70,0,105,0,
101,0,108,0,100,0,46,0,113,0,109,0,108,0,25,6,
214,144,60,0,72,0,97,0,110,0,100,0,119,0,114,0,
105,0,116,0,105,0,110,0,103,0,77,0,111,0,100,0,
101,0,66,0,117,0,116,0,116,0,111,0,110,0,46,0,
113,0,109,0,108,0,12,3,237,169,60,0,84,0,101,0,
120,0,116,0,65,0,114,0,101,0,97,0,46,0,113,0,
109,0,108,0,16,11,226,74,156,0,65,0,117,0,116,0,
111,0,83,0,99,0,114,0,111,0,108,0,108,0,101,0,
114,0,46,0,113,0,109,0,108,0,23,1,109,10,60,0,
70,0,111,0,117,0,114,0,116,0,104,0,83,0,104,0,
101,0,97,0,114,0,87,0,97,0,118,0,101,0,80,0,
97,0,103,0,101,0,46,0,113,0,109,0,108,0,26,14,
189,125,220,0,83,0,101,0,118,0,101,0,110,0,116,0,
104,0,65,0,98,0,111,0,117,0,116,0,83,0,121,0,
115,0,116,0,101,0,109,0,80,0,97,0,103,0,101,0,
46,0,113,0,109,0,108,0,25,8,150,147,188,0,70,0,
105,0,102,0,116,0,104,0,67,0,111,0,109,0,112,0,
114,0,101,0,115,0,115,0,87,0,97,0,118,0,101,0,
80,0,97,0,103,0,101,0,46,0,113,0,109,0,108,0,
8,8,1,90,92,0,109,0,97,0,105,0,110,0,46,0,
113,0,109,0,108,0,24,13,93,58,92,0,83,0,101,0,
99,0,111,0,110,0,100,0,67,0,114,0,101,0,97,0,
116,0,101,0,80,0,114,0,111,0,106,0,80,0,97,0,
103,0,101,0,46,0,113,0,109,0,108,0,28,12,33,212,
220,0,83,0,117,0,98,0,73,0,110,0,115,0,116,0,
114,0,117,0,109,0,101,0,110,0,116,0,83,0,101,0,
116,0,116,0,105,0,110,0,103,0,80,0,97,0,103,0,
101,0,46,0,113,0,109,0,108};
static const unsigned char qt_resource_empty_payout[] = { 0, 0, 0, 0, 0 };
QT_BEGIN_NAMESPACE
extern Q_CORE_EXPORT bool qRegisterResourceData(int, const unsigned char *, const unsigned char *, const unsigned char *);
QT_END_NAMESPACE
namespace QmlCacheGeneratedCode {
namespace _0x5f__SubInstrumentSettingPage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__SecondCreateProjPage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__main_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__FifthCompressWavePage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__SeventhAboutSystemPage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__FourthShearWavePage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _content_AutoScroller_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _content_TextArea_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__ThirdCollectionTableSettingPage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _content_HandwritingModeButton_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__SixthDataManagePage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__SubDisplaySettingPage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__SubWaveBrowsePage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__FirstDefaultPage_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _content_TextField_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}
namespace _0x5f__EasyTableWidget_qml { 
    extern const unsigned char qmlData[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), nullptr, nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
        resourcePathToCachedUnit.insert(QStringLiteral("/SubInstrumentSettingPage.qml"), &QmlCacheGeneratedCode::_0x5f__SubInstrumentSettingPage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/SecondCreateProjPage.qml"), &QmlCacheGeneratedCode::_0x5f__SecondCreateProjPage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/main.qml"), &QmlCacheGeneratedCode::_0x5f__main_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/FifthCompressWavePage.qml"), &QmlCacheGeneratedCode::_0x5f__FifthCompressWavePage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/SeventhAboutSystemPage.qml"), &QmlCacheGeneratedCode::_0x5f__SeventhAboutSystemPage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/FourthShearWavePage.qml"), &QmlCacheGeneratedCode::_0x5f__FourthShearWavePage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/content/AutoScroller.qml"), &QmlCacheGeneratedCode::_content_AutoScroller_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/content/TextArea.qml"), &QmlCacheGeneratedCode::_content_TextArea_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/ThirdCollectionTableSettingPage.qml"), &QmlCacheGeneratedCode::_0x5f__ThirdCollectionTableSettingPage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/content/HandwritingModeButton.qml"), &QmlCacheGeneratedCode::_content_HandwritingModeButton_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/SixthDataManagePage.qml"), &QmlCacheGeneratedCode::_0x5f__SixthDataManagePage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/SubDisplaySettingPage.qml"), &QmlCacheGeneratedCode::_0x5f__SubDisplaySettingPage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/SubWaveBrowsePage.qml"), &QmlCacheGeneratedCode::_0x5f__SubWaveBrowsePage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/FirstDefaultPage.qml"), &QmlCacheGeneratedCode::_0x5f__FirstDefaultPage_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/content/TextField.qml"), &QmlCacheGeneratedCode::_content_TextField_qml::unit);
        resourcePathToCachedUnit.insert(QStringLiteral("/EasyTableWidget.qml"), &QmlCacheGeneratedCode::_0x5f__EasyTableWidget_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.version = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
QT_PREPEND_NAMESPACE(qRegisterResourceData)(/*version*/0x01, qt_resource_tree, qt_resource_names, qt_resource_empty_payout);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_qml)() {
    ::unitRegistry();
    Q_INIT_RESOURCE(qml_qmlcache);
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_qml))
int QT_MANGLE_NAMESPACE(qCleanupResources_qml)() {
    Q_CLEANUP_RESOURCE(qml_qmlcache);
    return 1;
}
