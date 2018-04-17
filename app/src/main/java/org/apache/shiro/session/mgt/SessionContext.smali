.class public interface abstract Lorg/apache/shiro/session/mgt/SessionContext;
.super Ljava/lang/Object;
.source "SessionContext.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getSessionId()Ljava/io/Serializable;
.end method

.method public abstract setHost(Ljava/lang/String;)V
.end method

.method public abstract setSessionId(Ljava/io/Serializable;)V
.end method
