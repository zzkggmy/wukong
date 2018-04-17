.class public interface abstract Lorg/apache/shiro/authc/credential/PasswordService;
.super Ljava/lang/Object;
.source "PasswordService.java"


# virtual methods
.method public abstract encryptPassword(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract passwordsMatch(Ljava/lang/Object;Ljava/lang/String;)Z
.end method
