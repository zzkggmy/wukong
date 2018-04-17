.class public abstract Lorg/apache/shiro/web/env/ResourceBasedWebEnvironment;
.super Lorg/apache/shiro/web/env/DefaultWebEnvironment;
.source "ResourceBasedWebEnvironment.java"

# interfaces
.implements Lorg/apache/shiro/config/ResourceConfigurable;


# instance fields
.field private configLocations:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/shiro/web/env/DefaultWebEnvironment;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigLocations()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/shiro/web/env/ResourceBasedWebEnvironment;->configLocations:[Ljava/lang/String;

    return-object v0
.end method

.method public setConfigLocations(Ljava/lang/String;)V
    .locals 3
    .param p1, "locations"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null/empty locations argument not allowed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "arr":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/shiro/web/env/ResourceBasedWebEnvironment;->setConfigLocations([Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setConfigLocations([Ljava/lang/String;)V
    .locals 0
    .param p1, "configLocations"    # [Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/apache/shiro/web/env/ResourceBasedWebEnvironment;->configLocations:[Ljava/lang/String;

    .line 47
    return-void
.end method
