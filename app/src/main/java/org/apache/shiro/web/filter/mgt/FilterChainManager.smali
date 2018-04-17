.class public interface abstract Lorg/apache/shiro/web/filter/mgt/FilterChainManager;
.super Ljava/lang/Object;
.source "FilterChainManager.java"


# virtual methods
.method public abstract addFilter(Ljava/lang/String;Ljavax/servlet/Filter;)V
.end method

.method public abstract addFilter(Ljava/lang/String;Ljavax/servlet/Filter;Z)V
.end method

.method public abstract addToChain(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addToChain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/config/ConfigurationException;
        }
    .end annotation
.end method

.method public abstract createChain(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getChain(Ljava/lang/String;)Lorg/apache/shiro/web/filter/mgt/NamedFilterList;
.end method

.method public abstract getChainNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/Filter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasChains()Z
.end method

.method public abstract proxy(Ljavax/servlet/FilterChain;Ljava/lang/String;)Ljavax/servlet/FilterChain;
.end method
