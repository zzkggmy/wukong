.class public abstract Lorg/apache/shiro/web/servlet/NameableFilter;
.super Lorg/apache/shiro/web/servlet/AbstractFilter;
.source "NameableFilter.java"

# interfaces
.implements Lorg/apache/shiro/util/Nameable;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/AbstractFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lorg/apache/shiro/web/servlet/NameableFilter;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/NameableFilter;->getFilterConfig()Ljavax/servlet/FilterConfig;

    move-result-object v0

    .line 55
    .local v0, "config":Ljavax/servlet/FilterConfig;
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Ljavax/servlet/FilterConfig;->getFilterName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/shiro/web/servlet/NameableFilter;->name:Ljava/lang/String;

    .line 60
    .end local v0    # "config":Ljavax/servlet/FilterConfig;
    :cond_0
    iget-object v1, p0, Lorg/apache/shiro/web/servlet/NameableFilter;->name:Ljava/lang/String;

    return-object v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/NameableFilter;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/NameableFilter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 87
    invoke-super {p0}, Lorg/apache/shiro/web/servlet/AbstractFilter;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
