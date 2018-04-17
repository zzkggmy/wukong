.class public Lorg/apache/shiro/session/mgt/DefaultSessionKey;
.super Ljava/lang/Object;
.source "DefaultSessionKey.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/SessionKey;
.implements Ljava/io/Serializable;


# instance fields
.field private sessionId:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/io/Serializable;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/DefaultSessionKey;->sessionId:Ljava/io/Serializable;

    .line 36
    return-void
.end method


# virtual methods
.method public getSessionId()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/DefaultSessionKey;->sessionId:Ljava/io/Serializable;

    return-object v0
.end method

.method public setSessionId(Ljava/io/Serializable;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/io/Serializable;

    .prologue
    .line 39
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/DefaultSessionKey;->sessionId:Ljava/io/Serializable;

    .line 40
    return-void
.end method
