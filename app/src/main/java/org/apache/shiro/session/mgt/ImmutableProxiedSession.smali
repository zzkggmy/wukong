.class public Lorg/apache/shiro/session/mgt/ImmutableProxiedSession;
.super Lorg/apache/shiro/session/ProxiedSession;
.source "ImmutableProxiedSession.java"


# direct methods
.method public constructor <init>(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "target"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/ProxiedSession;-><init>(Lorg/apache/shiro/session/Session;)V

    .line 52
    return-void
.end method


# virtual methods
.method public removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/ImmutableProxiedSession;->throwImmutableException()V

    .line 105
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "This code should never execute - please report this as a bug!"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/ImmutableProxiedSession;->throwImmutableException()V

    .line 96
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "maxIdleTimeInMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/ImmutableProxiedSession;->throwImmutableException()V

    .line 72
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/ImmutableProxiedSession;->throwImmutableException()V

    .line 88
    return-void
.end method

.method protected throwImmutableException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 61
    const-string v0, "This session is immutable and read-only - it cannot be altered.  This is usually because the session has been stopped or expired already."

    .line 63
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/shiro/session/InvalidSessionException;

    invoke-direct {v1, v0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public touch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/ImmutableProxiedSession;->throwImmutableException()V

    .line 80
    return-void
.end method
