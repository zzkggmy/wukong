.class public abstract Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;
.super Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;
.source "AbstractValidatingSessionManager.java"

# interfaces
.implements Lorg/apache/shiro/session/mgt/ValidatingSessionManager;
.implements Lorg/apache/shiro/util/Destroyable;


# static fields
.field public static final DEFAULT_SESSION_VALIDATION_INTERVAL:J = 0x36ee80L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected sessionValidationInterval:J

.field protected sessionValidationScheduler:Lorg/apache/shiro/session/mgt/SessionValidationScheduler;

.field protected sessionValidationSchedulerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/AbstractNativeSessionManager;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->sessionValidationSchedulerEnabled:Z

    .line 63
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->sessionValidationInterval:J

    .line 64
    return-void
.end method

.method private enableSessionValidationIfNecessary()V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->getSessionValidationScheduler()Lorg/apache/shiro/session/mgt/SessionValidationScheduler;

    move-result-object v0

    .line 85
    .local v0, "scheduler":Lorg/apache/shiro/session/mgt/SessionValidationScheduler;
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->isSessionValidationSchedulerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/shiro/session/mgt/SessionValidationScheduler;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->enableSessionValidation()V

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method protected afterExpired(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 168
    return-void
.end method

.method protected afterSessionValidationEnabled()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method protected beforeSessionValidationDisabled()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method protected createSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .locals 1
    .param p1, "context"    # Lorg/apache/shiro/session/mgt/SessionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->enableSessionValidationIfNecessary()V

    .line 136
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->doCreateSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    return-object v0
.end method

.method protected createSessionValidationScheduler()Lorg/apache/shiro/session/mgt/SessionValidationScheduler;
    .locals 4

    .prologue
    .line 212
    sget-object v1, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    sget-object v1, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    const-string v2, "No sessionValidationScheduler set.  Attempting to create default instance."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 215
    :cond_0
    new-instance v0, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;

    invoke-direct {v0, p0}, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;-><init>(Lorg/apache/shiro/session/mgt/ValidatingSessionManager;)V

    .line 216
    .local v0, "scheduler":Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->getSessionValidationInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/shiro/session/mgt/ExecutorServiceSessionValidationScheduler;->setInterval(J)V

    .line 217
    sget-object v1, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    sget-object v1, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created default SessionValidationScheduler instance of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 220
    :cond_1
    return-object v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->disableSessionValidation()V

    .line 264
    return-void
.end method

.method protected disableSessionValidation()V
    .locals 5

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->beforeSessionValidationDisabled()V

    .line 241
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->getSessionValidationScheduler()Lorg/apache/shiro/session/mgt/SessionValidationScheduler;

    move-result-object v2

    .line 242
    .local v2, "scheduler":Lorg/apache/shiro/session/mgt/SessionValidationScheduler;
    if-eqz v2, :cond_1

    .line 244
    :try_start_0
    invoke-interface {v2}, Lorg/apache/shiro/session/mgt/SessionValidationScheduler;->disableSessionValidation()V

    .line 245
    sget-object v3, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    const-string v4, "Disabled session validation scheduler."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    :goto_0
    invoke-static {v2}, Lorg/apache/shiro/util/LifecycleUtils;->destroy(Ljava/lang/Object;)V

    .line 255
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->setSessionValidationScheduler(Lorg/apache/shiro/session/mgt/SessionValidationScheduler;)V

    .line 257
    :cond_1
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    const-string v1, "Unable to disable SessionValidationScheduler.  Ignoring (shutting down)..."

    .line 251
    .local v1, "msg":Ljava/lang/String;
    sget-object v3, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract doCreateSession(Lorg/apache/shiro/session/mgt/SessionContext;)Lorg/apache/shiro/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/authz/AuthorizationException;
        }
    .end annotation
.end method

.method protected final doGetSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .locals 3
    .param p1, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->enableSessionValidationIfNecessary()V

    .line 116
    sget-object v1, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    const-string v2, "Attempting to retrieve session with key {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->retrieveSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;

    move-result-object v0

    .line 119
    .local v0, "s":Lorg/apache/shiro/session/Session;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, v0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->validate(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 122
    :cond_0
    return-object v0
.end method

.method protected doValidate(Lorg/apache/shiro/session/Session;)V
    .locals 3
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 185
    instance-of v1, p1, Lorg/apache/shiro/session/mgt/ValidatingSession;

    if-eqz v1, :cond_0

    .line 186
    check-cast p1, Lorg/apache/shiro/session/mgt/ValidatingSession;

    .end local p1    # "session":Lorg/apache/shiro/session/Session;
    invoke-interface {p1}, Lorg/apache/shiro/session/mgt/ValidatingSession;->validate()V

    .line 194
    return-void

    .line 188
    .restart local p1    # "session":Lorg/apache/shiro/session/Session;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " implementation only supports validating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Session implementations of the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/session/mgt/ValidatingSession;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interface.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Please either implement this interface in your session implementation or override the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".doValidate(Session) method to perform validation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected enableSessionValidation()V
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->getSessionValidationScheduler()Lorg/apache/shiro/session/mgt/SessionValidationScheduler;

    move-result-object v0

    .line 225
    .local v0, "scheduler":Lorg/apache/shiro/session/mgt/SessionValidationScheduler;
    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->createSessionValidationScheduler()Lorg/apache/shiro/session/mgt/SessionValidationScheduler;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->setSessionValidationScheduler(Lorg/apache/shiro/session/mgt/SessionValidationScheduler;)V

    .line 229
    :cond_0
    sget-object v1, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    sget-object v1, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    const-string v2, "Enabling session validation scheduler..."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 232
    :cond_1
    invoke-interface {v0}, Lorg/apache/shiro/session/mgt/SessionValidationScheduler;->enableSessionValidation()V

    .line 233
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->afterSessionValidationEnabled()V

    .line 234
    return-void
.end method

.method protected abstract getActiveSessions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/shiro/session/Session;",
            ">;"
        }
    .end annotation
.end method

.method public getSessionValidationInterval()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->sessionValidationInterval:J

    return-wide v0
.end method

.method public getSessionValidationScheduler()Lorg/apache/shiro/session/mgt/SessionValidationScheduler;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->sessionValidationScheduler:Lorg/apache/shiro/session/mgt/SessionValidationScheduler;

    return-object v0
.end method

.method protected getTimeout(Lorg/apache/shiro/session/Session;)J
    .locals 2
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 206
    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public isSessionValidationSchedulerEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->sessionValidationSchedulerEnabled:Z

    return v0
.end method

.method protected onExpiration(Lorg/apache/shiro/session/Session;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/shiro/session/Session;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->onChange(Lorg/apache/shiro/session/Session;)V

    .line 165
    return-void
.end method

.method protected onExpiration(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/ExpiredSessionException;Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 3
    .param p1, "s"    # Lorg/apache/shiro/session/Session;
    .param p2, "ese"    # Lorg/apache/shiro/session/ExpiredSessionException;
    .param p3, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 154
    sget-object v0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    const-string v1, "Session with id [{}] has expired."

    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->onExpiration(Lorg/apache/shiro/session/Session;)V

    .line 157
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->notifyExpiration(Lorg/apache/shiro/session/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->afterExpired(Lorg/apache/shiro/session/Session;)V

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->afterExpired(Lorg/apache/shiro/session/Session;)V

    throw v0
.end method

.method protected onInvalidation(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/InvalidSessionException;Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 3
    .param p1, "s"    # Lorg/apache/shiro/session/Session;
    .param p2, "ise"    # Lorg/apache/shiro/session/InvalidSessionException;
    .param p3, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;

    .prologue
    .line 171
    instance-of v0, p2, Lorg/apache/shiro/session/ExpiredSessionException;

    if-eqz v0, :cond_0

    .line 172
    check-cast p2, Lorg/apache/shiro/session/ExpiredSessionException;

    .end local p2    # "ise":Lorg/apache/shiro/session/InvalidSessionException;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->onExpiration(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/ExpiredSessionException;Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 182
    :goto_0
    return-void

    .line 175
    .restart local p2    # "ise":Lorg/apache/shiro/session/InvalidSessionException;
    :cond_0
    sget-object v0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    const-string v1, "Session with id [{}] is invalid."

    invoke-interface {p1}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->onStop(Lorg/apache/shiro/session/Session;)V

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->notifyStop(Lorg/apache/shiro/session/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->afterStopped(Lorg/apache/shiro/session/Session;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->afterStopped(Lorg/apache/shiro/session/Session;)V

    throw v0
.end method

.method protected abstract retrieveSession(Lorg/apache/shiro/session/mgt/SessionKey;)Lorg/apache/shiro/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/UnknownSessionException;
        }
    .end annotation
.end method

.method public setSessionValidationInterval(J)V
    .locals 1
    .param p1, "sessionValidationInterval"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->sessionValidationInterval:J

    .line 106
    return-void
.end method

.method public setSessionValidationScheduler(Lorg/apache/shiro/session/mgt/SessionValidationScheduler;)V
    .locals 0
    .param p1, "sessionValidationScheduler"    # Lorg/apache/shiro/session/mgt/SessionValidationScheduler;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->sessionValidationScheduler:Lorg/apache/shiro/session/mgt/SessionValidationScheduler;

    .line 77
    return-void
.end method

.method public setSessionValidationSchedulerEnabled(Z)V
    .locals 0
    .param p1, "sessionValidationSchedulerEnabled"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->sessionValidationSchedulerEnabled:Z

    .line 73
    return-void
.end method

.method protected validate(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "key"    # Lorg/apache/shiro/session/mgt/SessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/shiro/session/InvalidSessionException;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->doValidate(Lorg/apache/shiro/session/Session;)V
    :try_end_0
    .catch Lorg/apache/shiro/session/ExpiredSessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ese":Lorg/apache/shiro/session/ExpiredSessionException;
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->onExpiration(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/ExpiredSessionException;Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 146
    throw v0

    .line 147
    .end local v0    # "ese":Lorg/apache/shiro/session/ExpiredSessionException;
    :catch_1
    move-exception v1

    .line 148
    .local v1, "ise":Lorg/apache/shiro/session/InvalidSessionException;
    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->onInvalidation(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/InvalidSessionException;Lorg/apache/shiro/session/mgt/SessionKey;)V

    .line 149
    throw v1
.end method

.method public validateSessions()V
    .locals 10

    .prologue
    .line 270
    sget-object v8, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 271
    sget-object v8, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    const-string v9, "Validating all active sessions..."

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 274
    :cond_0
    const/4 v4, 0x0

    .line 276
    .local v4, "invalidCount":I
    invoke-virtual {p0}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->getActiveSessions()Ljava/util/Collection;

    move-result-object v0

    .line 278
    .local v0, "activeSessions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/shiro/session/Session;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 279
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/shiro/session/Session;

    .line 283
    .local v7, "s":Lorg/apache/shiro/session/Session;
    :try_start_0
    new-instance v5, Lorg/apache/shiro/session/mgt/DefaultSessionKey;

    invoke-interface {v7}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/shiro/session/mgt/DefaultSessionKey;-><init>(Ljava/io/Serializable;)V

    .line 284
    .local v5, "key":Lorg/apache/shiro/session/mgt/SessionKey;
    invoke-virtual {p0, v7, v5}, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->validate(Lorg/apache/shiro/session/Session;Lorg/apache/shiro/session/mgt/SessionKey;)V
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v5    # "key":Lorg/apache/shiro/session/mgt/SessionKey;
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Lorg/apache/shiro/session/InvalidSessionException;
    sget-object v8, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 287
    instance-of v2, v1, Lorg/apache/shiro/session/ExpiredSessionException;

    .line 288
    .local v2, "expired":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalidated session with id ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_2

    const-string v8, " (expired)"

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "msg":Ljava/lang/String;
    sget-object v8, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v8, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 292
    .end local v2    # "expired":Z
    .end local v6    # "msg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    .restart local v2    # "expired":Z
    :cond_2
    const-string v8, " (stopped)"

    goto :goto_1

    .line 297
    .end local v1    # "e":Lorg/apache/shiro/session/InvalidSessionException;
    .end local v2    # "expired":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "s":Lorg/apache/shiro/session/Session;
    :cond_3
    sget-object v8, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 298
    const-string v6, "Finished session validation."

    .line 299
    .restart local v6    # "msg":Ljava/lang/String;
    if-lez v4, :cond_5

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] sessions were stopped."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 304
    :goto_2
    sget-object v8, Lorg/apache/shiro/session/mgt/AbstractValidatingSessionManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v8, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 306
    .end local v6    # "msg":Ljava/lang/String;
    :cond_4
    return-void

    .line 302
    .restart local v6    # "msg":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  No sessions were stopped."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method
