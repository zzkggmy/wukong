.class public Lorg/apache/shiro/web/servlet/ShiroHttpSession;
.super Ljava/lang/Object;
.source "ShiroHttpSession.java"

# interfaces
.implements Ljavax/servlet/http/HttpSession;


# static fields
.field public static final DEFAULT_SESSION_ID_NAME:Ljava/lang/String; = "JSESSIONID"

.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;

.field private static final HTTP_SESSION_CONTEXT:Ljavax/servlet/http/HttpSessionContext;


# instance fields
.field protected currentRequest:Ljavax/servlet/http/HttpServletRequest;

.field protected servletContext:Ljavax/servlet/ServletContext;

.field protected session:Lorg/apache/shiro/session/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/apache/shiro/web/servlet/ShiroHttpSession$1;

    invoke-direct {v0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession$1;-><init>()V

    sput-object v0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 58
    new-instance v0, Lorg/apache/shiro/web/servlet/ShiroHttpSession$2;

    invoke-direct {v0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession$2;-><init>()V

    sput-object v0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->HTTP_SESSION_CONTEXT:Ljavax/servlet/http/HttpSessionContext;

    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/session/Session;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/ServletContext;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/shiro/session/Session;
    .param p2, "currentRequest"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "servletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->servletContext:Ljavax/servlet/ServletContext;

    .line 70
    iput-object v1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->currentRequest:Ljavax/servlet/http/HttpServletRequest;

    .line 71
    iput-object v1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->session:Lorg/apache/shiro/session/Session;

    .line 74
    instance-of v1, p1, Lorg/apache/shiro/web/session/HttpServletSession;

    if-eqz v1, :cond_0

    .line 75
    const-string v0, "Session constructor argument cannot be an instance of HttpServletSession.  This is enforced to prevent circular dependencies and infinite loops."

    .line 77
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->session:Lorg/apache/shiro/session/Session;

    .line 80
    iput-object p2, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->currentRequest:Ljavax/servlet/http/HttpServletRequest;

    .line 81
    iput-object p3, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->servletContext:Ljavax/servlet/ServletContext;

    .line 82
    return-void
.end method

.method static synthetic access$000()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method


# virtual methods
.method protected afterBound(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 185
    instance-of v2, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 186
    check-cast v1, Ljavax/servlet/http/HttpSessionBindingListener;

    .line 187
    .local v1, "listener":Ljavax/servlet/http/HttpSessionBindingListener;
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    .local v0, "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    invoke-interface {v1, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueBound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 190
    .end local v0    # "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    .end local v1    # "listener":Ljavax/servlet/http/HttpSessionBindingListener;
    :cond_0
    return-void
.end method

.method protected afterUnbound(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 193
    instance-of v2, p2, Ljavax/servlet/http/HttpSessionBindingListener;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 194
    check-cast v1, Ljavax/servlet/http/HttpSessionBindingListener;

    .line 195
    .local v1, "listener":Ljavax/servlet/http/HttpSessionBindingListener;
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    .local v0, "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    invoke-interface {v1, v0}, Ljavax/servlet/http/HttpSessionBindingListener;->valueUnbound(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 198
    .end local v0    # "event":Ljavax/servlet/http/HttpSessionBindingEvent;
    .end local v1    # "listener":Ljavax/servlet/http/HttpSessionBindingListener;
    :cond_0
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/shiro/session/Session;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Lorg/apache/shiro/session/InvalidSessionException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getKeyNames()Ljava/util/Set;

    move-result-object v1

    .line 163
    .local v1, "keyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "iterator":Ljava/util/Iterator;
    new-instance v2, Lorg/apache/shiro/web/servlet/ShiroHttpSession$3;

    invoke-direct {v2, p0, v0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession$3;-><init>(Lorg/apache/shiro/web/servlet/ShiroHttpSession;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public getCreationTime()J
    .locals 4

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/shiro/session/Session;->getStartTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getId()Ljava/io/Serializable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyNames()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/shiro/session/Session;->getAttributeKeys()Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 150
    .local v3, "keySet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 152
    .local v2, "keyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 153
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "keyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "keySet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v4    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lorg/apache/shiro/session/InvalidSessionException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 156
    .end local v0    # "e":Lorg/apache/shiro/session/InvalidSessionException;
    .restart local v3    # "keySet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 158
    .restart local v2    # "keyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method public getLastAccessedTime()J
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/shiro/session/Session;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxInactiveInterval()I
    .locals 6

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/shiro/session/Session;->getTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/apache/shiro/session/InvalidSessionException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->servletContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public getSession()Lorg/apache/shiro/session/Session;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->session:Lorg/apache/shiro/session/Session;

    return-object v0
.end method

.method public getSessionContext()Ljavax/servlet/http/HttpSessionContext;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->HTTP_SESSION_CONTEXT:Ljavax/servlet/http/HttpSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getKeyNames()Ljava/util/Set;

    move-result-object v1

    .line 177
    .local v1, "keyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 178
    .local v0, "array":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 179
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "array":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 181
    .restart local v0    # "array":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/shiro/session/Session;->stop()V
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lorg/apache/shiro/session/InvalidSessionException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isNew()Z
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->currentRequest:Ljavax/servlet/http/HttpServletRequest;

    sget-object v2, Lorg/apache/shiro/web/servlet/ShiroHttpServletRequest;->REFERENCED_SESSION_IS_NEW:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 242
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 221
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/shiro/session/Session;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 222
    .local v0, "attribute":Ljava/lang/Object;
    invoke-virtual {p0, p1, v0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->afterUnbound(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return-void

    .line 223
    .end local v0    # "attribute":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Lorg/apache/shiro/session/InvalidSessionException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/shiro/session/Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->afterBound(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lorg/apache/shiro/session/InvalidSessionException;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->afterUnbound(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMaxInactiveInterval(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/ShiroHttpSession;->getSession()Lorg/apache/shiro/session/Session;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lorg/apache/shiro/session/Session;->setTimeout(J)V
    :try_end_0
    .catch Lorg/apache/shiro/session/InvalidSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/apache/shiro/session/InvalidSessionException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
