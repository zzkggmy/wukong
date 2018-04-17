.class public Lorg/apache/shiro/authz/permission/AllPermission;
.super Ljava/lang/Object;
.source "AllPermission.java"

# interfaces
.implements Lorg/apache/shiro/authz/Permission;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public implies(Lorg/apache/shiro/authz/Permission;)Z
    .locals 1
    .param p1, "p"    # Lorg/apache/shiro/authz/Permission;

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
