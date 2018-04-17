.class public Lorg/apache/shiro/session/mgt/eis/JavaUuidSessionIdGenerator;
.super Ljava/lang/Object;
.source "JavaUuidSessionIdGenerator.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/eis/SessionIdGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateId(Lorg/apache/shiro/session/Session;)Ljava/io/Serializable;
    .locals 1
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
