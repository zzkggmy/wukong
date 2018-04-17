.class public Lorg/apache/shiro/mgt/DefaultSessionStorageEvaluator;
.super Ljava/lang/Object;
.source "DefaultSessionStorageEvaluator.java"

# interfaces
.implements Lorg/apache/shiro/mgt/SessionStorageEvaluator;


# instance fields
.field private sessionStorageEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/mgt/DefaultSessionStorageEvaluator;->sessionStorageEnabled:Z

    return-void
.end method


# virtual methods
.method public isSessionStorageEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/shiro/mgt/DefaultSessionStorageEvaluator;->sessionStorageEnabled:Z

    return v0
.end method

.method public isSessionStorageEnabled(Lorg/apache/shiro/subject/Subject;)Z
    .locals 2
    .param p1, "subject"    # Lorg/apache/shiro/subject/Subject;

    .prologue
    const/4 v0, 0x0

    .line 63
    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lorg/apache/shiro/subject/Subject;->getSession(Z)Lorg/apache/shiro/session/Session;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/mgt/DefaultSessionStorageEvaluator;->isSessionStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public setSessionStorageEnabled(Z)V
    .locals 0
    .param p1, "sessionStorageEnabled"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/apache/shiro/mgt/DefaultSessionStorageEvaluator;->sessionStorageEnabled:Z

    .line 95
    return-void
.end method
