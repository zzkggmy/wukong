.class public Lorg/apache/shiro/web/servlet/SimpleCookie;
.super Ljava/lang/Object;
.source "SimpleCookie.java"

# interfaces
.implements Lorg/apache/shiro/web/servlet/Cookie;


# static fields
.field protected static final ATTRIBUTE_DELIMITER:Ljava/lang/String; = "; "

.field protected static final COMMENT_ATTRIBUTE_NAME:Ljava/lang/String; = "Comment"

.field protected static final COOKIE_DATE_FORMAT_STRING:Ljava/lang/String; = "EEE, dd-MMM-yyyy HH:mm:ss z"

.field protected static final COOKIE_HEADER_NAME:Ljava/lang/String; = "Set-Cookie"

.field protected static final DAY_MILLIS:J = 0x5265c00L

.field public static final DEFAULT_MAX_AGE:I = -0x1

.field public static final DEFAULT_VERSION:I = -0x1

.field protected static final DOMAIN_ATTRIBUTE_NAME:Ljava/lang/String; = "Domain"

.field protected static final EXPIRES_ATTRIBUTE_NAME:Ljava/lang/String; = "Expires"

.field protected static final GMT_TIME_ZONE_ID:Ljava/lang/String; = "GMT"

.field protected static final HTTP_ONLY_ATTRIBUTE_NAME:Ljava/lang/String; = "HttpOnly"

.field protected static final MAXAGE_ATTRIBUTE_NAME:Ljava/lang/String; = "Max-Age"

.field protected static final NAME_VALUE_DELIMITER:Ljava/lang/String; = "="

.field protected static final PATH_ATTRIBUTE_NAME:Ljava/lang/String; = "Path"

.field protected static final SECURE_ATTRIBUTE_NAME:Ljava/lang/String; = "Secure"

.field protected static final VERSION_ATTRIBUTE_NAME:Ljava/lang/String; = "Version"

.field private static final transient log:Lorg/slf4j/Logger;


# instance fields
.field private comment:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/apache/shiro/web/servlet/SimpleCookie;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/web/servlet/SimpleCookie;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->maxAge:I

    .line 85
    iput v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->version:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->httpOnly:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->name:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/apache/shiro/web/servlet/Cookie;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/shiro/web/servlet/Cookie;

    .prologue
    const/4 v1, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-interface {p1}, Lorg/apache/shiro/web/servlet/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->name:Ljava/lang/String;

    .line 96
    invoke-interface {p1}, Lorg/apache/shiro/web/servlet/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->value:Ljava/lang/String;

    .line 97
    invoke-interface {p1}, Lorg/apache/shiro/web/servlet/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->comment:Ljava/lang/String;

    .line 98
    invoke-interface {p1}, Lorg/apache/shiro/web/servlet/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->domain:Ljava/lang/String;

    .line 99
    invoke-interface {p1}, Lorg/apache/shiro/web/servlet/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->path:Ljava/lang/String;

    .line 100
    invoke-interface {p1}, Lorg/apache/shiro/web/servlet/Cookie;->getMaxAge()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->maxAge:I

    .line 101
    invoke-interface {p1}, Lorg/apache/shiro/web/servlet/Cookie;->getVersion()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->version:I

    .line 102
    invoke-interface {p1}, Lorg/apache/shiro/web/servlet/Cookie;->isSecure()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->secure:Z

    .line 103
    invoke-interface {p1}, Lorg/apache/shiro/web/servlet/Cookie;->isHttpOnly()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->httpOnly:Z

    .line 104
    return-void
.end method

.method private addCookieHeader(Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 11
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "maxAge"    # I
    .param p8, "version"    # I
    .param p9, "secure"    # Z
    .param p10, "httpOnly"    # Z

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v0 .. v9}, Lorg/apache/shiro/web/servlet/SimpleCookie;->buildHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, "headerValue":Ljava/lang/String;
    const-string v0, "Set-Cookie"

    invoke-interface {p1, v0, v10}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lorg/apache/shiro/web/servlet/SimpleCookie;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lorg/apache/shiro/web/servlet/SimpleCookie;->log:Lorg/slf4j/Logger;

    const-string v1, "Added HttpServletResponse Cookie [{}]"

    invoke-interface {v0, v1, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    :cond_0
    return-void
.end method

.method private appendComment(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v0, "Comment"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_0
    return-void
.end method

.method private appendDomain(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v0, "Domain"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_0
    return-void
.end method

.method private appendExpires(Ljava/lang/StringBuilder;I)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "maxAge"    # I

    .prologue
    .line 291
    if-ltz p2, :cond_0

    .line 292
    const-string v3, "; "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v3, "Max-Age"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v3, "; "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    if-nez p2, :cond_1

    .line 298
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 305
    .local v1, "expires":Ljava/util/Date;
    :goto_0
    invoke-static {v1}, Lorg/apache/shiro/web/servlet/SimpleCookie;->toCookieDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "formatted":Ljava/lang/String;
    const-string v3, "Expires"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .end local v1    # "expires":Ljava/util/Date;
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_0
    return-void

    .line 301
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 302
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v3, 0xd

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->add(II)V

    .line 303
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .restart local v1    # "expires":Ljava/util/Date;
    goto :goto_0
.end method

.method private appendHttpOnly(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "httpOnly"    # Z

    .prologue
    .line 325
    if-eqz p2, :cond_0

    .line 326
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v0, "HttpOnly"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_0
    return-void
.end method

.method private appendPath(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v0, "Path"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_0
    return-void
.end method

.method private appendSecure(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "secure"    # Z

    .prologue
    .line 318
    if-eqz p2, :cond_0

    .line 319
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v0, "Secure"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_0
    return-void
.end method

.method private appendVersion(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "version"    # I

    .prologue
    .line 311
    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 312
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v0, "Version"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    :cond_0
    return-void
.end method

.method private calculatePath(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 3
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/shiro/util/StringUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    if-nez v0, :cond_1

    .line 197
    const-string v0, "/"

    .line 199
    :cond_1
    sget-object v1, Lorg/apache/shiro/web/servlet/SimpleCookie;->log:Lorg/slf4j/Logger;

    const-string v2, "calculated path: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    return-object v0
.end method

.method private static getCookie(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljavax/servlet/http/Cookie;
    .locals 6
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p1, "cookieName"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-interface {p0}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v2

    .line 385
    .local v2, "cookies":[Ljavax/servlet/http/Cookie;
    if-eqz v2, :cond_1

    .line 386
    move-object v0, v2

    .local v0, "arr$":[Ljavax/servlet/http/Cookie;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 387
    .local v1, "cookie":Ljavax/servlet/http/Cookie;
    invoke-virtual {v1}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    .end local v0    # "arr$":[Ljavax/servlet/http/Cookie;
    .end local v1    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return-object v1

    .line 386
    .restart local v0    # "arr$":[Ljavax/servlet/http/Cookie;
    .restart local v1    # "cookie":Ljavax/servlet/http/Cookie;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "arr$":[Ljavax/servlet/http/Cookie;
    .end local v1    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static toCookieDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 338
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 339
    .local v1, "tz":Ljava/util/TimeZone;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 340
    .local v0, "fmt":Ljava/text/DateFormat;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 341
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected buildHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "maxAge"    # I
    .param p7, "version"    # I
    .param p8, "secure"    # Z
    .param p9, "httpOnly"    # Z

    .prologue
    .line 241
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cookie name cannot be null/empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_1
    invoke-direct {p0, v0, p3}, Lorg/apache/shiro/web/servlet/SimpleCookie;->appendComment(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, v0, p4}, Lorg/apache/shiro/web/servlet/SimpleCookie;->appendDomain(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0, v0, p5}, Lorg/apache/shiro/web/servlet/SimpleCookie;->appendPath(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, v0, p6}, Lorg/apache/shiro/web/servlet/SimpleCookie;->appendExpires(Ljava/lang/StringBuilder;I)V

    .line 255
    invoke-direct {p0, v0, p7}, Lorg/apache/shiro/web/servlet/SimpleCookie;->appendVersion(Ljava/lang/StringBuilder;I)V

    .line 256
    invoke-direct {p0, v0, p8}, Lorg/apache/shiro/web/servlet/SimpleCookie;->appendSecure(Ljava/lang/StringBuilder;Z)V

    .line 257
    invoke-direct {p0, v0, p9}, Lorg/apache/shiro/web/servlet/SimpleCookie;->appendHttpOnly(Ljava/lang/StringBuilder;Z)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->maxAge:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->version:I

    return v0
.end method

.method public isHttpOnly()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->httpOnly:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->secure:Z

    return v0
.end method

.method public readValue(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Ljava/lang/String;
    .locals 5
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "ignored"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 361
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getName()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 363
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1, v1}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getCookie(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Ljavax/servlet/http/Cookie;

    move-result-object v0

    .line 364
    .local v0, "cookie":Ljavax/servlet/http/Cookie;
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 366
    sget-object v3, Lorg/apache/shiro/web/servlet/SimpleCookie;->log:Lorg/slf4j/Logger;

    const-string v4, "Found \'{}\' cookie value [{}]"

    invoke-interface {v3, v4, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    :goto_0
    return-object v2

    .line 368
    :cond_0
    sget-object v3, Lorg/apache/shiro/web/servlet/SimpleCookie;->log:Lorg/slf4j/Logger;

    const-string v4, "No \'{}\' cookie value"

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeFrom(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 11
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "name":Ljava/lang/String;
    const-string v3, "deleteMe"

    .line 347
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 348
    .local v4, "comment":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "domain":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/servlet/SimpleCookie;->calculatePath(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 351
    .local v7, "maxAge":I
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getVersion()I

    move-result v8

    .line 352
    .local v8, "version":I
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->isSecure()Z

    move-result v9

    .line 353
    .local v9, "secure":Z
    const/4 v10, 0x0

    .local v10, "httpOnly":Z
    move-object v0, p0

    move-object v1, p2

    .line 355
    invoke-direct/range {v0 .. v10}, Lorg/apache/shiro/web/servlet/SimpleCookie;->addCookieHeader(Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 357
    sget-object v0, Lorg/apache/shiro/web/servlet/SimpleCookie;->log:Lorg/slf4j/Logger;

    const-string v1, "Removed \'{}\' cookie by setting maxAge=0"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method public saveTo(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 11
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getComment()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "comment":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "domain":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/apache/shiro/web/servlet/SimpleCookie;->calculatePath(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getMaxAge()I

    move-result v7

    .line 211
    .local v7, "maxAge":I
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->getVersion()I

    move-result v8

    .line 212
    .local v8, "version":I
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->isSecure()Z

    move-result v9

    .line 213
    .local v9, "secure":Z
    invoke-virtual {p0}, Lorg/apache/shiro/web/servlet/SimpleCookie;->isHttpOnly()Z

    move-result v10

    .local v10, "httpOnly":Z
    move-object v0, p0

    move-object v1, p2

    .line 215
    invoke-direct/range {v0 .. v10}, Lorg/apache/shiro/web/servlet/SimpleCookie;->addCookieHeader(Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ)V

    .line 216
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->comment:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->domain:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0
    .param p1, "httpOnly"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->httpOnly:Z

    .line 179
    return-void
.end method

.method public setMaxAge(I)V
    .locals 1
    .param p1, "maxAge"    # I

    .prologue
    .line 154
    const/4 v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->maxAge:I

    .line 155
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot be null/empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->name:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->path:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->secure:Z

    .line 171
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->value:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setVersion(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 162
    const/4 v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/shiro/web/servlet/SimpleCookie;->version:I

    .line 163
    return-void
.end method
