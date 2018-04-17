.class public interface abstract Lorg/apache/shiro/env/NamedObjectEnvironment;
.super Ljava/lang/Object;
.source "NamedObjectEnvironment.java"

# interfaces
.implements Lorg/apache/shiro/env/Environment;


# virtual methods
.method public abstract getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/env/RequiredTypeException;
        }
    .end annotation
.end method
