.class public Lorg/apache/shiro/config/UnresolveableReferenceException;
.super Lorg/apache/shiro/config/ConfigurationException;
.source "UnresolveableReferenceException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/shiro/config/ConfigurationException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/shiro/config/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
