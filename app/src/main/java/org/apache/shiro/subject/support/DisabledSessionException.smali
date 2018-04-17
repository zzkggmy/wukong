.class public Lorg/apache/shiro/subject/support/DisabledSessionException;
.super Lorg/apache/shiro/session/SessionException;
.source "DisabledSessionException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/shiro/session/SessionException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
