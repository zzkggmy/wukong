.class public interface abstract Lorg/apache/shiro/web/filter/mgt/NamedFilterList;
.super Ljava/lang/Object;
.source "NamedFilterList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Ljavax/servlet/Filter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract proxy(Ljavax/servlet/FilterChain;)Ljavax/servlet/FilterChain;
.end method
