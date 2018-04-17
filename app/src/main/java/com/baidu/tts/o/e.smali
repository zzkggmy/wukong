.class public Lcom/baidu/tts/o/e;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static volatile a:Lcom/baidu/tts/o/e;


# instance fields
.field private b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/o/e;->a:Lcom/baidu/tts/o/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/baidu/tts/o/e;->b:[C

    .line 21
    return-void

    .line 18
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a()Lcom/baidu/tts/o/e;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/baidu/tts/o/e;->a:Lcom/baidu/tts/o/e;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/baidu/tts/o/e;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/baidu/tts/o/e;->a:Lcom/baidu/tts/o/e;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/baidu/tts/o/e;

    invoke-direct {v0}, Lcom/baidu/tts/o/e;-><init>()V

    sput-object v0, Lcom/baidu/tts/o/e;->a:Lcom/baidu/tts/o/e;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/baidu/tts/o/e;->a:Lcom/baidu/tts/o/e;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/tts/o/e;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([BII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 120
    add-int v1, p2, p3

    .line 121
    :goto_0
    if-lt p2, v1, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    aget-byte v2, p1, p2

    invoke-direct {p0, v2, v0}, Lcom/baidu/tts/o/e;->a(BLjava/lang/StringBuffer;)V

    .line 121
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private a(BLjava/lang/StringBuffer;)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/baidu/tts/o/e;->b:[C

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    .line 129
    iget-object v1, p0, Lcom/baidu/tts/o/e;->b:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 54
    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 58
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/16 v3, 0x2000

    :try_start_1
    new-array v3, v3, [B

    .line 62
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 65
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/tts/o/e;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 70
    if-eqz v1, :cond_0

    .line 71
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    :cond_0
    :goto_1
    return-object v0

    .line 63
    :cond_1
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    .line 70
    :goto_2
    if-eqz v1, :cond_0

    .line 71
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 73
    :catch_1
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 73
    :catch_2
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 70
    :goto_3
    if-eqz v1, :cond_2

    .line 71
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 76
    :cond_2
    :goto_4
    throw v0

    .line 73
    :catch_3
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 68
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 66
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method
