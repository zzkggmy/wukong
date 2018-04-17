.class public Lcom/baidu/platform/comapi/map/i;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/i;->b:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/common/BaiduMapSDKException;

    const-string v1, "the version of map is not match with base"

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/common/BaiduMapSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/NativeLoader;->getInstance()Lcom/baidu/platform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/VersionInfo;->getKitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    invoke-static {}, Lcom/baidu/platform/comjni/engine/AppEngine;->InitClass()V

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/platform/comapi/util/SysUpdateObservable;

    move-result-object v0

    new-instance v1, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/commonutils/SysUpdateUtil;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->addObserver(Lcom/baidu/platform/comapi/util/SysUpdateObserver;)V

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/platform/comapi/util/SysUpdateObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysUpdateObservable;->init()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget v0, Lcom/baidu/platform/comapi/map/i;->a:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/platform/comapi/map/i;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you have not supplyed the global app context info from SDKInitializer.initialize(Context) function."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/baidu/vi/VMsg;->init()V

    sget-object v0, Lcom/baidu/platform/comapi/map/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/platform/comjni/engine/AppEngine;->InitEngine(Landroid/content/Context;)Z

    invoke-static {}, Lcom/baidu/platform/comjni/engine/AppEngine;->StartSocketProc()Z

    sget-object v0, Lcom/baidu/platform/comapi/map/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mapapi/NetworkUtil;->updateNetworkProxy(Landroid/content/Context;)V

    :cond_1
    sget v0, Lcom/baidu/platform/comapi/map/i;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/platform/comapi/map/i;->a:I

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 14

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    const/16 v2, 0x10

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "cfg/a/ResPack.cfg"

    aput-object v2, v3, v1

    const-string v2, "cfg/idrres/baseindoormap.sty"

    aput-object v2, v3, v0

    const-string v2, "cfg/idrres/DVIndoor.cfg"

    aput-object v2, v3, v6

    const-string v2, "cfg/idrres/ResPack.cfg"

    aput-object v2, v3, v8

    const/4 v2, 0x4

    const-string v4, "cfg/h/DVHotcity.cfg"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "cfg/l/DVHotcity.cfg"

    aput-object v4, v3, v2

    const-string v2, "cfg/h/DVHotMap.cfg"

    aput-object v2, v3, v7

    const/4 v2, 0x7

    const-string v4, "cfg/l/DVHotMap.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "cfg/l/DVDirectory.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "cfg/l/DVVersion.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "cfg/h/DVDirectory.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "cfg/h/DVVersion.cfg"

    aput-object v4, v3, v2

    const/16 v2, 0xc

    const-string v4, "cfg/a/mapstyle.sty"

    aput-object v4, v3, v2

    const/16 v2, 0xd

    const-string v4, "cfg/a/satellitestyle.sty"

    aput-object v4, v3, v2

    const/16 v2, 0xe

    const-string v4, "cfg/a/trafficstyle.sty"

    aput-object v4, v3, v2

    const/16 v2, 0xf

    const-string v4, "cfg/a/CustomIndex"

    aput-object v4, v3, v2

    new-array v4, v0, [Ljava/lang/String;

    const-string v2, "cfg/a/CustomIndex"

    aput-object v2, v4, v1

    const/16 v2, 0x10

    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "cfg/a/ResPack.rs"

    aput-object v2, v5, v1

    const-string v2, "cfg/idrres/baseindoormap.sty"

    aput-object v2, v5, v0

    const-string v2, "cfg/idrres/DVIndoor.cfg"

    aput-object v2, v5, v6

    const-string v2, "cfg/idrres/ResPackIndoorMap.rs"

    aput-object v2, v5, v8

    const/4 v2, 0x4

    const-string v6, "cfg/h/DVHotcity.cfg"

    aput-object v6, v5, v2

    const/4 v2, 0x5

    const-string v6, "cfg/l/DVHotcity.cfg"

    aput-object v6, v5, v2

    const-string v2, "cfg/h/DVHotMap.cfg"

    aput-object v2, v5, v7

    const/4 v2, 0x7

    const-string v6, "cfg/l/DVHotMap.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0x8

    const-string v6, "cfg/l/DVDirectory.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0x9

    const-string v6, "cfg/l/DVVersion.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0xa

    const-string v6, "cfg/h/DVDirectory.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0xb

    const-string v6, "cfg/h/DVVersion.cfg"

    aput-object v6, v5, v2

    const/16 v2, 0xc

    const-string v6, "cfg/a/mapstyle.sty"

    aput-object v6, v5, v2

    const/16 v2, 0xd

    const-string v6, "cfg/a/satellitestyle.sty"

    aput-object v6, v5, v2

    const/16 v2, 0xe

    const-string v6, "cfg/a/trafficstyle.sty"

    aput-object v6, v5, v2

    const/16 v2, 0xf

    const-string v6, "cfg/a/CustomIndex"

    aput-object v6, v5, v2

    new-array v6, v0, [Ljava/lang/String;

    const-string v2, "cfg/a/CustomIndex"

    aput-object v2, v6, v1

    :try_start_1
    new-instance v7, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/ver.dat"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    new-array v8, v2, [B

    fill-array-data v8, :array_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v9

    new-array v9, v9, [B

    invoke-virtual {v2, v9}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/cfg/a/mapstyle.sty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_8

    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v8}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cfg/a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cfg/h"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cfg/l"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cfg/idrres"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    move v0, v1

    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_7

    aget-object v7, v4, v0

    aget-object v8, v6, v0

    invoke-static {v7, v8, p0}, Lcom/baidu/platform/comapi/commonutils/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_6

    :goto_3
    array-length v0, v5

    if-ge v1, v0, :cond_6

    aget-object v0, v3, v1

    aget-object v2, v5, v1

    invoke-static {v0, v2, p0}, Lcom/baidu/platform/comapi/commonutils/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move v2, v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/platform/comapi/map/e;->j(Z)V

    return-void
.end method

.method public static b()V
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/map/i;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/baidu/platform/comapi/map/i;->a:I

    sget v0, Lcom/baidu/platform/comapi/map/i;->a:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/platform/comjni/engine/AppEngine;->UnInitEngine()Z

    invoke-static {}, Lcom/baidu/vi/VMsg;->destroy()V

    :cond_0
    return-void
.end method
