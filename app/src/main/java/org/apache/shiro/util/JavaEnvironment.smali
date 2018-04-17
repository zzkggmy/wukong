.class public abstract Lorg/apache/shiro/util/JavaEnvironment;
.super Ljava/lang/Object;
.source "JavaEnvironment.java"


# static fields
.field public static final JAVA_13:I = 0x0

.field public static final JAVA_14:I = 0x1

.field public static final JAVA_15:I = 0x2

.field public static final JAVA_16:I = 0x3

.field public static final JAVA_17:I = 0x4

.field private static final majorVersion:I

.field private static final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 77
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/util/JavaEnvironment;->version:Ljava/lang/String;

    .line 79
    sget-object v0, Lorg/apache/shiro/util/JavaEnvironment;->version:Ljava/lang/String;

    const-string v1, "1.7."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 80
    const/4 v0, 0x4

    sput v0, Lorg/apache/shiro/util/JavaEnvironment;->majorVersion:I

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lorg/apache/shiro/util/JavaEnvironment;->version:Ljava/lang/String;

    const-string v1, "1.6."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 82
    const/4 v0, 0x3

    sput v0, Lorg/apache/shiro/util/JavaEnvironment;->majorVersion:I

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lorg/apache/shiro/util/JavaEnvironment;->version:Ljava/lang/String;

    const-string v1, "1.5."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 84
    const/4 v0, 0x2

    sput v0, Lorg/apache/shiro/util/JavaEnvironment;->majorVersion:I

    goto :goto_0

    .line 85
    :cond_2
    sget-object v0, Lorg/apache/shiro/util/JavaEnvironment;->version:Ljava/lang/String;

    const-string v1, "1.4."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 86
    const/4 v0, 0x1

    sput v0, Lorg/apache/shiro/util/JavaEnvironment;->majorVersion:I

    goto :goto_0

    .line 89
    :cond_3
    const/4 v0, 0x0

    sput v0, Lorg/apache/shiro/util/JavaEnvironment;->majorVersion:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMajorVersion()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lorg/apache/shiro/util/JavaEnvironment;->majorVersion:I

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lorg/apache/shiro/util/JavaEnvironment;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static isAtLeastVersion14()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-static {}, Lorg/apache/shiro/util/JavaEnvironment;->getMajorVersion()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtLeastVersion15()Z
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lorg/apache/shiro/util/JavaEnvironment;->getMajorVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtLeastVersion16()Z
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lorg/apache/shiro/util/JavaEnvironment;->getMajorVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
