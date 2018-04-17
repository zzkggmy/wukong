.class public Lorg/apache/shiro/authz/HostUnauthorizedException;
.super Lorg/apache/shiro/authz/UnauthorizedException;
.source "HostUnauthorizedException.java"


# instance fields
.field private host:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/shiro/authz/UnauthorizedException;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/apache/shiro/authz/UnauthorizedException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/shiro/authz/UnauthorizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/shiro/authz/UnauthorizedException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/shiro/authz/HostUnauthorizedException;->host:Ljava/lang/String;

    return-object v0
.end method

.method public setHostAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/shiro/authz/HostUnauthorizedException;->host:Ljava/lang/String;

    .line 83
    return-void
.end method
