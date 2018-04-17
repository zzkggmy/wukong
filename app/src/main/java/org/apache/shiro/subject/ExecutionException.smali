.class public Lorg/apache/shiro/subject/ExecutionException;
.super Lorg/apache/shiro/ShiroException;
.source "ExecutionException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/ShiroException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/shiro/ShiroException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
