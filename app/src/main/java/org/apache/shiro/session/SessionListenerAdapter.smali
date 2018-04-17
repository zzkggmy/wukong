.class public Lorg/apache/shiro/session/SessionListenerAdapter;
.super Ljava/lang/Object;
.source "SessionListenerAdapter.java"

# interfaces
.implements Lorg/apache/shiro/session/SessionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpiration(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 54
    return-void
.end method

.method public onStart(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 36
    return-void
.end method

.method public onStop(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 45
    return-void
.end method
