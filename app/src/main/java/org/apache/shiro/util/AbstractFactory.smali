.class public abstract Lorg/apache/shiro/util/AbstractFactory;
.super Ljava/lang/Object;
.source "AbstractFactory.java"

# interfaces
.implements Lorg/apache/shiro/util/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/shiro/util/Factory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private singleton:Z

.field private singletonInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/apache/shiro/util/AbstractFactory;, "Lorg/apache/shiro/util/AbstractFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/util/AbstractFactory;->singleton:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract createInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/shiro/util/AbstractFactory;, "Lorg/apache/shiro/util/AbstractFactory<TT;>;"
    invoke-virtual {p0}, Lorg/apache/shiro/util/AbstractFactory;->isSingleton()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lorg/apache/shiro/util/AbstractFactory;->singletonInstance:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/apache/shiro/util/AbstractFactory;->createInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/shiro/util/AbstractFactory;->singletonInstance:Ljava/lang/Object;

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/util/AbstractFactory;->singletonInstance:Ljava/lang/Object;

    .line 53
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v0, :cond_2

    .line 54
    const-string v1, "Factory \'createInstance\' implementation returned a null object."

    .line 55
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    .end local v0    # "instance":Ljava/lang/Object;, "TT;"
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/shiro/util/AbstractFactory;->createInstance()Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "instance":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 57
    :cond_2
    return-object v0
.end method

.method public isSingleton()Z
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lorg/apache/shiro/util/AbstractFactory;, "Lorg/apache/shiro/util/AbstractFactory<TT;>;"
    iget-boolean v0, p0, Lorg/apache/shiro/util/AbstractFactory;->singleton:Z

    return v0
.end method

.method public setSingleton(Z)V
    .locals 0
    .param p1, "singleton"    # Z

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/shiro/util/AbstractFactory;, "Lorg/apache/shiro/util/AbstractFactory<TT;>;"
    iput-boolean p1, p0, Lorg/apache/shiro/util/AbstractFactory;->singleton:Z

    .line 41
    return-void
.end method
