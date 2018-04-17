.class public Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;
.super Ljava/lang/Object;
.source "ExecutorServiceSessionValidationScheduler.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/SessionValidationScheduler;
.implements Ljava/lang/Runnable;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private enabled:Z

.field private interval:J

.field private service:Ljava/util/concurrent/ScheduledExecutorService;

.field sessionManager:Lorg/apache/shiro/session/mgt/ValidatingSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->interval:J

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->enabled:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/session/mgt/ValidatingSessionManager;)V
    .locals 2
    .param p1, "sessionManager"    # Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->interval:J

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->enabled:Z

    .line 54
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->sessionManager:Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    .line 55
    return-void
.end method


# virtual methods
.method public disableSessionValidation()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->enabled:Z

    .line 112
    return-void
.end method

.method public enableSessionValidation()V
    .locals 7

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->interval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 85
    new-instance v0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler$1;

    invoke-direct {v0, p0}, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler$1;-><init>(Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 92
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->service:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v2, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->interval:J

    iget-wide v4, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->interval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->enabled:Z

    .line 95
    :cond_0
    return-void
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->interval:J

    return-wide v0
.end method

.method public getSessionManager()Lorg/apache/shiro/session/mgt/ValidatingSessionManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->sessionManager:Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->enabled:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 98
    sget-object v4, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    sget-object v4, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v5, "Executing session validation..."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    .local v0, "startTime":J
    iget-object v4, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->sessionManager:Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    invoke-interface {v4}, Lorg/apache/shiro/session/mgt/ValidatingSessionManager;->validateSessions()V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    .local v2, "stopTime":J
    sget-object v4, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    sget-object v4, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session validation completed successfully in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " milliseconds."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 107
    :cond_1
    return-void
.end method

.method public setInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->interval:J

    .line 71
    return-void
.end method

.method public setSessionManager(Lorg/apache/shiro/session/mgt/ValidatingSessionManager;)V
    .locals 0
    .param p1, "sessionManager"    # Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->sessionManager:Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    .line 63
    return-void
.end method
