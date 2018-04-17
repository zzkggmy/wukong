.class public Lorg/apache/shiro/authz/permission/InvalidPermissionStringException;
.super Lorg/apache/shiro/ShiroException;
.source "InvalidPermissionStringException.java"


# instance fields
.field private permissionString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "permissionString"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/shiro/ShiroException;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lorg/apache/shiro/authz/permission/InvalidPermissionStringException;->permissionString:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getPermissionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/shiro/authz/permission/InvalidPermissionStringException;->permissionString:Ljava/lang/String;

    return-object v0
.end method
