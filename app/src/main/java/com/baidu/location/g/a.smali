.class public Lcom/baidu/location/g/a;
.super Landroid/app/Service;

# interfaces
.implements Lcom/baidu/location/LLSInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/g/a$a;
    }
.end annotation


# static fields
.field static a:Lcom/baidu/location/g/a$a;

.field private static f:J


# instance fields
.field b:Landroid/os/Messenger;

.field private c:Landroid/os/Looper;

.field private d:Landroid/os/HandlerThread;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/g/a;->a:Lcom/baidu/location/g/a$a;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/g/a;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/g/a;->b:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/g/a;->e:Z

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/g/a;->a:Lcom/baidu/location/g/a$a;

    return-object v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service register ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->a(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->d()V

    invoke-static {}, Lcom/baidu/location/a/m;->b()Lcom/baidu/location/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/m;->c()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/g/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/g/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/g/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/g/a;->f:J

    return-wide v0
.end method

.method private b(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/g/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/g/a;->c()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/g/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g/a;->b(Landroid/os/Message;)V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/baidu/location/a/i;->a()Lcom/baidu/location/a/i;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/location/a/g;->a()Lcom/baidu/location/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/g;->b()V

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->b()V

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/b;->b()V

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/h;->b()V

    invoke-static {}, Lcom/baidu/location/h/b;->a()Lcom/baidu/location/h/b;

    invoke-static {}, Lcom/baidu/location/a/j;->c()Lcom/baidu/location/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/j;->d()V

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/a;->b()V

    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->b()V

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->b()V

    invoke-static {}, Lcom/baidu/location/b/f;->a()Lcom/baidu/location/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/f;->b()V

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()V

    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/a;->c(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/g/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g/a;->c(Landroid/os/Message;)V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/h;->c()V

    invoke-static {}, Lcom/baidu/location/e/h;->a()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->n()V

    invoke-static {}, Lcom/baidu/location/f/d;->a()Lcom/baidu/location/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/d;->e()V

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/g;->c()V

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->c()V

    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->c()V

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->c()V

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->c()V

    invoke-static {}, Lcom/baidu/location/f/b;->a()Lcom/baidu/location/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/b;->c()V

    invoke-static {}, Lcom/baidu/location/a/j;->c()Lcom/baidu/location/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/j;->e()V

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->d()V

    invoke-static {}, Lcom/baidu/location/a/g;->a()Lcom/baidu/location/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/g;->c()V

    invoke-static {}, Lcom/baidu/location/a/t;->e()V

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/a;->b()V

    invoke-static {}, Lcom/baidu/location/a/c;->a()Lcom/baidu/location/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/c;->b()V

    :try_start_0
    sget-object v0, Lcom/baidu/location/g/a;->a:Lcom/baidu/location/g/a$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/location/g/a;->a:Lcom/baidu/location/g/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/g/a$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sput-object v2, Lcom/baidu/location/g/a;->a:Lcom/baidu/location/g/a$a;

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service has stoped ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/location/g/a;->e:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getVersion()D
    .locals 2

    const-wide v0, 0x401c70a3e0000000L    # 7.110000133514404

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v0, "key"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/h/b;->g:Ljava/lang/String;

    const-string v0, "sign"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/h/b;->f:Ljava/lang/String;

    const-string v0, "kill_process"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/g/a;->e:Z

    const-string v0, "cache_exception"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/b/f;->a()Lcom/baidu/location/b/f;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/g/a;->b:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/location/g/a;->f:J

    invoke-static {}, Lcom/baidu/location/a/s;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g/a;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/location/g/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g/a;->c:Landroid/os/Looper;

    new-instance v0, Lcom/baidu/location/g/a$a;

    iget-object v1, p0, Lcom/baidu/location/g/a;->c:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/g/a$a;-><init>(Lcom/baidu/location/g/a;Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/location/g/a;->a:Lcom/baidu/location/g/a$a;

    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/baidu/location/g/a;->a:Lcom/baidu/location/g/a$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/g/a;->b:Landroid/os/Messenger;

    sget-object v0, Lcom/baidu/location/g/a;->a:Lcom/baidu/location/g/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/g/a$a;->sendEmptyMessage(I)Z

    const-string v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidu location service start1 ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/baidu/location/g/a;->a:Lcom/baidu/location/g/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/g/a$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service stop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service stop exception..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onUnBind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
