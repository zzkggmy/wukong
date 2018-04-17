.class public Lorg/apache/shiro/web/filter/authz/HostFilter;
.super Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;
.source "HostFilter.java"


# static fields
.field public static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field public static final IPV4_QUAD_REGEX:Ljava/lang/String; = "(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))"

.field public static final IPV4_REGEX:Ljava/lang/String; = "(?:(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))\\.){3}(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))$"

.field public static final PRIVATE_CLASS_A_REGEX:Ljava/lang/String; = "10\\.(?:(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))\\.){2}(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))$"

.field public static final PRIVATE_CLASS_B_REGEX:Ljava/lang/String; = "172\\.(?:1[6-9]|2[0-9]|3[0-1])\\.(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))\\.(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))$"

.field public static final PRIVATE_CLASS_B_SUBSET:Ljava/lang/String; = "(?:1[6-9]|2[0-9]|3[0-1])"

.field public static final PRIVATE_CLASS_C_REGEX:Ljava/lang/String; = "192\\.168\\.(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))\\.(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))$"


# instance fields
.field authorizedHostnames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field authorizedIps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field deniedHostnames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field deniedIps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "(?:(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))\\.){3}(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/filter/authz/HostFilter;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/shiro/web/filter/authz/AuthorizationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected isAccessAllowed(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "mappedValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet fully implemented!!!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isIpv4Candidate(Ljava/lang/String;)Z
    .locals 9
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 87
    const-string v7, "."

    invoke-static {p1, v7}, Lorg/apache/shiro/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "quads":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v7, v5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v6

    .line 91
    :cond_1
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 92
    .local v4, "quad":Ljava/lang/String;
    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 94
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 100
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "quad":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setAuthorizedHosts(Ljava/lang/String;)V
    .locals 9
    .param p1, "authorizedHosts"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 59
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "authorizedHosts argument cannot be null or empty."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 61
    :cond_0
    const-string v7, ", \t"

    invoke-static {p1, v7}, Lorg/apache/shiro/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "hosts":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 65
    .local v1, "host":Ljava/lang/String;
    const-string v7, "."

    const-string v8, "\\."

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "periodsReplaced":Ljava/lang/String;
    const-string v7, "*"

    const-string v8, "(?:[0-9]|[1-9][0-9]|1[0-9][0-9]|2(?:[0-4][0-9]|5[0-5]))"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "wildcardsReplaced":Ljava/lang/String;
    sget-object v7, Lorg/apache/shiro/web/filter/authz/HostFilter;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    iget-object v7, p0, Lorg/apache/shiro/web/filter/authz/HostFilter;->authorizedIps:Ljava/util/Map;

    invoke-interface {v7, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "host":Ljava/lang/String;
    .end local v5    # "periodsReplaced":Ljava/lang/String;
    .end local v6    # "wildcardsReplaced":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setDeniedHosts(Ljava/lang/String;)V
    .locals 2
    .param p1, "deniedHosts"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deniedHosts argument cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method
