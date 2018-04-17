.class public Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;
.super Ljava/lang/Object;
.source "LoggerProxy.java"


# static fields
.field private static a:Lcom/baidu/tts/chainofresponsibility/logger/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a()Lcom/baidu/tts/chainofresponsibility/logger/d;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static addPrintString(Ljava/lang/String;)V
    .locals 1
    .param p0, "specify"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static addPrintStrings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "specify":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Ljava/util/List;)V

    .line 86
    return-void
.end method

.method public static addUnPrintString(Ljava/lang/String;)V
    .locals 1
    .param p0, "specify"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->b(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static clearHandler()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->b()V

    .line 66
    return-void
.end method

.method public static clearSpecifyStrings()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->e()V

    .line 94
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static disablePrintHandlers()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->c()V

    .line 70
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static enablePrintHandlers()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->d()V

    .line 74
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static isModeRelease()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->g()Z

    move-result v0

    return v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static printable(Z)V
    .locals 1
    .param p0, "isPrint"    # Z

    .prologue
    .line 57
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->a(Z)V

    .line 58
    return-void
.end method

.method public static setModeRelease()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->a:Lcom/baidu/tts/chainofresponsibility/logger/d;

    invoke-virtual {v0}, Lcom/baidu/tts/chainofresponsibility/logger/d;->f()V

    .line 62
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
