.class public interface abstract Lorg/apache/shiro/authz/AuthorizationInfo;
.super Ljava/lang/Object;
.source "AuthorizationInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getObjectPermissions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/authz/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRoles()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStringPermissions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
