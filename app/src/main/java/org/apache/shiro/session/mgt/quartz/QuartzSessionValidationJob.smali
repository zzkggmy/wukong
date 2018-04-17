.class public Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationJob;
.super Ljava/lang/Object;
.source "QuartzSessionValidationJob.java"

# interfaces
.implements Lorg/quartz/Job;


# static fields
.field static final SESSION_MANAGER_KEY:Ljava/lang/String; = "sessionManager"

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationJob;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationJob;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/quartz/JobExecutionContext;)V
    .locals 4
    .param p1, "context"    # Lorg/quartz/JobExecutionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/quartz/JobExecutionException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/quartz/JobExecutionContext;->getMergedJobDataMap()Lorg/quartz/JobDataMap;

    move-result-object v0

    .line 74
    .local v0, "jobDataMap":Lorg/quartz/JobDataMap;
    const-string v2, "sessionManager"

    invoke-virtual {v0, v2}, Lorg/quartz/JobDataMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    .line 76
    .local v1, "sessionManager":Lorg/apache/shiro/session/mgt/ValidatingSessionManager;
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationJob;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationJob;->log:Lorg/slf4j/Logger;

    const-string v3, "Executing session validation Quartz job..."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-interface {v1}, Lorg/apache/shiro/session/mgt/ValidatingSessionManager;->validateSessions()V

    .line 82
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationJob;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationJob;->log:Lorg/slf4j/Logger;

    const-string v3, "Session validation Quartz job complete."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 85
    :cond_1
    return-void
.end method
