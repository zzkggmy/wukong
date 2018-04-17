.class public Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;
.super Lorg/springframework/aop/support/StaticMethodMatcherPointcutAdvisor;
.source "AuthorizationAttributeSourceAdvisor.java"


# static fields
.field private static final AUTHZ_ANNOTATION_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected securityManager:Lorg/apache/shiro/mgt/SecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;->log:Lorg/slf4j/Logger;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/apache/shiro/authz/annotation/RequiresPermissions;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lorg/apache/shiro/authz/annotation/RequiresRoles;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/apache/shiro/authz/annotation/RequiresUser;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/apache/shiro/authz/annotation/RequiresGuest;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/apache/shiro/authz/annotation/RequiresAuthentication;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;->AUTHZ_ANNOTATION_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/springframework/aop/support/StaticMethodMatcherPointcutAdvisor;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 54
    new-instance v0, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;

    invoke-direct {v0}, Lorg/apache/shiro/spring/security/interceptor/AopAllianceAnnotationsAuthorizingMethodInterceptor;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;->setAdvice(Lorg/aopalliance/aop/Advice;)V

    .line 55
    return-void
.end method

.method private isAuthzAnnotationPresent(Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 106
    sget-object v2, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;->AUTHZ_ANNOTATION_CLASSES:[Ljava/lang/Class;

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 107
    .local v1, "annClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p1, v1}, Lorg/springframework/core/annotation/AnnotationUtils;->findAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 108
    .local v0, "a":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    .line 109
    const/4 v5, 0x1

    .line 112
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v1    # "annClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :goto_1
    return v5

    .line 106
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    .restart local v1    # "annClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    .end local v1    # "annClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getSecurityManager()Lorg/apache/shiro/mgt/SecurityManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    return-object v0
.end method

.method public matches(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "targetClass"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x1

    .line 82
    move-object v0, p1

    .line 84
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0}, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;->isAuthzAnnotationPresent(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    if-eqz p2, :cond_2

    .line 92
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;->isAuthzAnnotationPresent(Ljava/lang/reflect/Method;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 102
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setSecurityManager(Lorg/apache/shiro/mgt/SecurityManager;)V
    .locals 0
    .param p1, "securityManager"    # Lorg/apache/shiro/mgt/SecurityManager;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/shiro/spring/security/interceptor/AuthorizationAttributeSourceAdvisor;->securityManager:Lorg/apache/shiro/mgt/SecurityManager;

    .line 63
    return-void
.end method
