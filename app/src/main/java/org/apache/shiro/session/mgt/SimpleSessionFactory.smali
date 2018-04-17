.class public Lorg/apache/shiro/session/mgt/SimpleSessionFactory;
.super Ljava/lang/Object;
.source "SimpleSessionFactory.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/SessionFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 2
    .param p1, "initData"    # Lorg/apache/shiro/session/mgt/SessionContext;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Lorg/apache/shiro/session/mgt/SessionContext;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lorg/apache/shiro/session/mgt/SimpleSession;

    invoke-direct {v1, v0}, Lorg/apache/shiro/session/mgt/SimpleSession;-><init>(Ljava/lang/String;)V

    .line 44
    .end local v0    # "host":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/shiro/session/mgt/SimpleSession;

    invoke-direct {v1}, Lorg/apache/shiro/session/mgt/SimpleSession;-><init>()V

    goto :goto_0
.end method
