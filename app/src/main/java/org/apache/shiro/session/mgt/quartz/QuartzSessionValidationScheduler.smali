.class public Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;
.super Ljava/lang/Object;
.source "QuartzSessionValidationScheduler.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/SessionValidationScheduler;


# static fields
.field public static final DEFAULT_SESSION_VALIDATION_INTERVAL:J = 0x36ee80L

.field private static final JOB_NAME:Ljava/lang/String; = "SessionValidationJob"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private enabled:Z

.field private scheduler:Lorg/quartz/Scheduler;

.field private schedulerImplicitlyCreated:Z

.field private sessionManager:Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

.field private sessionValidationInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->schedulerImplicitlyCreated:Z

    .line 73
    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->enabled:Z

    .line 83
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->sessionValidationInterval:J

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/session/mgt/ValidatingSessionManager;)V
    .locals 2
    .param p1, "sessionManager"    # Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->schedulerImplicitlyCreated:Z

    .line 73
    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->enabled:Z

    .line 83
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->sessionValidationInterval:J

    .line 101
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->sessionManager:Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    .line 102
    return-void
.end method


# virtual methods
.method public disableSessionValidation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 187
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v3, "Stopping Quartz session validation job..."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 193
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->getScheduler()Lorg/quartz/Scheduler;

    move-result-object v1

    .line 194
    .local v1, "scheduler":Lorg/quartz/Scheduler;
    if-nez v1, :cond_2

    .line 195
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v3, "getScheduler() method returned a null Quartz scheduler, which is unexpected.  Please check your configuration and/or implementation.  Returning quietly since there is no validation job to remove (scheduler does not exist)."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/quartz/SchedulerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "scheduler":Lorg/quartz/Scheduler;
    :cond_1
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lorg/quartz/SchedulerException;
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v3, "Unable to acquire Quartz Scheduler.  Ignoring and returning (already stopped?)"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 210
    .end local v0    # "e":Lorg/quartz/SchedulerException;
    .restart local v1    # "scheduler":Lorg/quartz/Scheduler;
    :cond_2
    :try_start_1
    const-string v2, "SessionValidationJob"

    const-string v3, "DEFAULT"

    invoke-interface {v1, v2, v3}, Lorg/quartz/Scheduler;->unscheduleJob(Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v3, "Quartz session validation job stopped successfully."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/quartz/SchedulerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->enabled:Z

    .line 223
    iget-boolean v2, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->schedulerImplicitlyCreated:Z

    if-eqz v2, :cond_1

    .line 225
    :try_start_2
    invoke-interface {v1}, Lorg/quartz/Scheduler;->shutdown()V
    :try_end_2
    .catch Lorg/quartz/SchedulerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-virtual {p0, v5}, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->setScheduler(Lorg/quartz/Scheduler;)V

    .line 232
    iput-boolean v4, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->schedulerImplicitlyCreated:Z

    goto :goto_0

    .line 214
    :catch_1
    move-exception v0

    .line 215
    .restart local v0    # "e":Lorg/quartz/SchedulerException;
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v3, "Could not cleanly remove SessionValidationJob from Quartz scheduler.  Ignoring and stopping."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 226
    .end local v0    # "e":Lorg/quartz/SchedulerException;
    :catch_2
    move-exception v0

    .line 227
    .restart local v0    # "e":Lorg/quartz/SchedulerException;
    :try_start_3
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    sget-object v2, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v3, "Unable to cleanly shutdown implicitly created Quartz Scheduler instance."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    :cond_4
    invoke-virtual {p0, v5}, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->setScheduler(Lorg/quartz/Scheduler;)V

    .line 232
    iput-boolean v4, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->schedulerImplicitlyCreated:Z

    goto :goto_0

    .line 231
    .end local v0    # "e":Lorg/quartz/SchedulerException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v5}, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->setScheduler(Lorg/quartz/Scheduler;)V

    .line 232
    iput-boolean v4, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->schedulerImplicitlyCreated:Z

    throw v2
.end method

.method public enableSessionValidation()V
    .locals 9

    .prologue
    .line 150
    sget-object v1, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    sget-object v1, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling session validation job using Quartz with session validation interval of ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->sessionValidationInterval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]ms..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 156
    :cond_0
    :try_start_0
    new-instance v0, Lorg/quartz/SimpleTrigger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEFAULT"

    sget v3, Lorg/quartz/SimpleTrigger;->REPEAT_INDEFINITELY:I

    iget-wide v4, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->sessionValidationInterval:J

    invoke-direct/range {v0 .. v5}, Lorg/quartz/SimpleTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 161
    .local v0, "trigger":Lorg/quartz/SimpleTrigger;
    new-instance v6, Lorg/quartz/JobDetail;

    const-string v1, "SessionValidationJob"

    const-string v2, "DEFAULT"

    const-class v3, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationJob;

    invoke-direct {v6, v1, v2, v3}, Lorg/quartz/JobDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 162
    .local v6, "detail":Lorg/quartz/JobDetail;
    invoke-virtual {v6}, Lorg/quartz/JobDetail;->getJobDataMap()Lorg/quartz/JobDataMap;

    move-result-object v1

    const-string v2, "sessionManager"

    iget-object v3, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->sessionManager:Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    invoke-virtual {v1, v2, v3}, Lorg/quartz/JobDataMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->getScheduler()Lorg/quartz/Scheduler;

    move-result-object v8

    .line 166
    .local v8, "scheduler":Lorg/quartz/Scheduler;
    invoke-interface {v8, v6, v0}, Lorg/quartz/Scheduler;->scheduleJob(Lorg/quartz/JobDetail;Lorg/quartz/Trigger;)Ljava/util/Date;

    .line 167
    iget-boolean v1, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->schedulerImplicitlyCreated:Z

    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v8}, Lorg/quartz/Scheduler;->start()V

    .line 169
    sget-object v1, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    sget-object v1, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v2, "Successfully started implicitly created Quartz Scheduler instance."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 173
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->enabled:Z

    .line 175
    sget-object v1, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    sget-object v1, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v2, "Session validation job successfully scheduled with Quartz."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/quartz/SchedulerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "trigger":Lorg/quartz/SimpleTrigger;
    .end local v6    # "detail":Lorg/quartz/JobDetail;
    .end local v8    # "scheduler":Lorg/quartz/Scheduler;
    :cond_2
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v7

    .line 180
    .local v7, "e":Lorg/quartz/SchedulerException;
    sget-object v1, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    sget-object v1, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->log:Lorg/slf4j/Logger;

    const-string v2, "Error starting the Quartz session validation job.  Session validation may not occur."

    invoke-interface {v1, v2, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getScheduler()Lorg/quartz/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/quartz/SchedulerException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->scheduler:Lorg/quartz/Scheduler;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lorg/quartz/impl/StdSchedulerFactory;->getDefaultScheduler()Lorg/quartz/Scheduler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->scheduler:Lorg/quartz/Scheduler;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->schedulerImplicitlyCreated:Z

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->scheduler:Lorg/quartz/Scheduler;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->enabled:Z

    return v0
.end method

.method public setScheduler(Lorg/quartz/Scheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lorg/quartz/Scheduler;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->scheduler:Lorg/quartz/Scheduler;

    .line 118
    return-void
.end method

.method public setSessionManager(Lorg/apache/shiro/session/mgt/ValidatingSessionManager;)V
    .locals 0
    .param p1, "sessionManager"    # Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->sessionManager:Lorg/apache/shiro/session/mgt/ValidatingSessionManager;

    .line 122
    return-void
.end method

.method public setSessionValidationInterval(J)V
    .locals 1
    .param p1, "sessionValidationInterval"    # J

    .prologue
    .line 137
    iput-wide p1, p0, Lorg/apache/shiro/session/mgt/quartz/QuartzSessionValidationScheduler;->sessionValidationInterval:J

    .line 138
    return-void
.end method
