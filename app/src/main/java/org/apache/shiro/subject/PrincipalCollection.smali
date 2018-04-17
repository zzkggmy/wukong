.class public interface abstract Lorg/apache/shiro/subject/PrincipalCollection;
.super Ljava/lang/Object;
.source "PrincipalCollection.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract asList()Ljava/util/List;
.end method

.method public abstract asSet()Ljava/util/Set;
.end method

.method public abstract byType(Ljava/lang/Class;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract fromRealm(Ljava/lang/String;)Ljava/util/Collection;
.end method

.method public abstract getPrimaryPrincipal()Ljava/lang/Object;
.end method

.method public abstract getRealmNames()Ljava/util/Set;
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

.method public abstract isEmpty()Z
.end method

.method public abstract oneByType(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
