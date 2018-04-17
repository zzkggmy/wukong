.class public Lorg/apache/shiro/authz/permission/WildcardPermissionResolver;
.super Ljava/lang/Object;
.source "WildcardPermissionResolver.java"

# interfaces
.implements Lorg/apache/shiro/authz/permission/PermissionResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolvePermission(Ljava/lang/String;)Lorg/apache/shiro/authz/Permission;
    .locals 1
    .param p1, "permissionString"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lorg/apache/shiro/authz/permission/WildcardPermission;

    invoke-direct {v0, p1}, Lorg/apache/shiro/authz/permission/WildcardPermission;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
