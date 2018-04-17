.class public abstract Lorg/apache/shiro/session/mgt/AbstractSessionManager;
.super Ljava/lang/Object;
.source "AbstractSessionManager.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/SessionManager;


# static fields
.field public static final DEFAULT_GLOBAL_SESSION_TIMEOUT:J = 0x1b7740L

.field protected static final MILLIS_PER_HOUR:J = 0x36ee80L

.field protected static final MILLIS_PER_MINUTE:J = 0xea60L

.field protected static final MILLIS_PER_SECOND:J = 0x3e8L


# instance fields
.field private globalSessionTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lorg/apache/shiro/session/mgt/AbstractSessionManager;->globalSessionTimeout:J

    .line 50
    return-void
.end method


# virtual methods
.method public getGlobalSessionTimeout()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/apache/shiro/session/mgt/AbstractSessionManager;->globalSessionTimeout:J

    return-wide v0
.end method

.method public setGlobalSessionTimeout(J)V
    .locals 1
    .param p1, "globalSessionTimeout"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lorg/apache/shiro/session/mgt/AbstractSessionManager;->globalSessionTimeout:J

    .line 86
    return-void
.end method
