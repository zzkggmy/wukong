.class public Lorg/apache/shiro/session/UnknownSessionException;
.super Lorg/apache/shiro/session/InvalidSessionException;
.source "UnknownSessionException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/shiro/session/InvalidSessionException;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/InvalidSessionException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method
