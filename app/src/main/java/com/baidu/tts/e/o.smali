.class public final enum Lcom/baidu/tts/e/o;
.super Ljava/lang/Enum;
.source "TtsErrorEnum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/tts/e/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/tts/e/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/baidu/tts/e/o;

.field public static final enum B:Lcom/baidu/tts/e/o;

.field public static final enum C:Lcom/baidu/tts/e/o;

.field public static final enum D:Lcom/baidu/tts/e/o;

.field public static final enum E:Lcom/baidu/tts/e/o;

.field public static final enum F:Lcom/baidu/tts/e/o;

.field public static final enum G:Lcom/baidu/tts/e/o;

.field public static final enum H:Lcom/baidu/tts/e/o;

.field public static final enum I:Lcom/baidu/tts/e/o;

.field public static final enum J:Lcom/baidu/tts/e/o;

.field public static final enum K:Lcom/baidu/tts/e/o;

.field public static final enum L:Lcom/baidu/tts/e/o;

.field public static final enum M:Lcom/baidu/tts/e/o;

.field public static final enum N:Lcom/baidu/tts/e/o;

.field public static final enum O:Lcom/baidu/tts/e/o;

.field public static final enum P:Lcom/baidu/tts/e/o;

.field public static final enum Q:Lcom/baidu/tts/e/o;

.field public static final enum R:Lcom/baidu/tts/e/o;

.field public static final enum S:Lcom/baidu/tts/e/o;

.field public static final enum T:Lcom/baidu/tts/e/o;

.field public static final enum U:Lcom/baidu/tts/e/o;

.field public static final enum V:Lcom/baidu/tts/e/o;

.field private static final synthetic Z:[Lcom/baidu/tts/e/o;

.field public static final enum a:Lcom/baidu/tts/e/o;

.field public static final enum b:Lcom/baidu/tts/e/o;

.field public static final enum c:Lcom/baidu/tts/e/o;

.field public static final enum d:Lcom/baidu/tts/e/o;

.field public static final enum e:Lcom/baidu/tts/e/o;

.field public static final enum f:Lcom/baidu/tts/e/o;

.field public static final enum g:Lcom/baidu/tts/e/o;

.field public static final enum h:Lcom/baidu/tts/e/o;

.field public static final enum i:Lcom/baidu/tts/e/o;

.field public static final enum j:Lcom/baidu/tts/e/o;

.field public static final enum k:Lcom/baidu/tts/e/o;

.field public static final enum l:Lcom/baidu/tts/e/o;

.field public static final enum m:Lcom/baidu/tts/e/o;

.field public static final enum n:Lcom/baidu/tts/e/o;

.field public static final enum o:Lcom/baidu/tts/e/o;

.field public static final enum p:Lcom/baidu/tts/e/o;

.field public static final enum q:Lcom/baidu/tts/e/o;

.field public static final enum r:Lcom/baidu/tts/e/o;

.field public static final enum s:Lcom/baidu/tts/e/o;

.field public static final enum t:Lcom/baidu/tts/e/o;

.field public static final enum u:Lcom/baidu/tts/e/o;

.field public static final enum v:Lcom/baidu/tts/e/o;

.field public static final enum w:Lcom/baidu/tts/e/o;

.field public static final enum x:Lcom/baidu/tts/e/o;

.field public static final enum y:Lcom/baidu/tts/e/o;

.field public static final enum z:Lcom/baidu/tts/e/o;


# instance fields
.field private final W:Lcom/baidu/tts/e/o$a;

.field private final X:I

.field private final Y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/baidu/tts/e/o;

    const-string v1, "ONLINE_ENGINE_AUTH_FAILURE"

    sget-object v3, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/4 v4, -0x1

    const-string v5, "online engine auth failure"

    invoke-direct/range {v0 .. v5}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/tts/e/o;->a:Lcom/baidu/tts/e/o;

    .line 12
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "ONLINE_ENGINE_HTTP_REQUEST_FAILURE"

    sget-object v6, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/4 v7, -0x2

    const-string v8, "request failure"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->b:Lcom/baidu/tts/e/o;

    .line 13
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "ONLINE_ENGINE_CANCEL_FAILURE"

    sget-object v6, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/4 v7, -0x3

    const-string v8, "cancel failure"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->c:Lcom/baidu/tts/e/o;

    .line 14
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "ONLINE_AUTH_INTERRUPTED_EXCEPTION"

    sget-object v6, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/4 v7, -0x4

    const-string v8, "InterruptedException"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->d:Lcom/baidu/tts/e/o;

    .line 15
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "ONLINE_AUTH_EXECUTION_EXCEPTION"

    sget-object v6, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/4 v7, -0x5

    const-string v8, "ExecutionException"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->e:Lcom/baidu/tts/e/o;

    .line 16
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "ONLINE_AUTH_TIMEOUT_EXCEPTION"

    const/4 v5, 0x5

    sget-object v6, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/4 v7, -0x6

    const-string v8, "TimeoutException"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->f:Lcom/baidu/tts/e/o;

    .line 17
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "ONLINE_ENGINE_REQUEST_RESULT_ERROR"

    const/4 v5, 0x6

    sget-object v6, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/4 v7, -0x7

    const-string v8, "request result contains error message"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->g:Lcom/baidu/tts/e/o;

    .line 18
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "ONLINE_TOKEN_IS_NULL"

    const/4 v5, 0x7

    sget-object v6, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/4 v7, -0x8

    const-string v8, "access token is null, please check your apikey and secretkey or product id"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->h:Lcom/baidu/tts/e/o;

    .line 19
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "ONLINE_ENGINE_UNINITIALIZED"

    const/16 v5, 0x8

    sget-object v6, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x9

    const-string v8, "online engine is not initial"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->i:Lcom/baidu/tts/e/o;

    .line 20
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "ONLINE_ENGINE_CALL_EXCEPTION"

    const/16 v5, 0x9

    sget-object v6, Lcom/baidu/tts/e/o$a;->b:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0xa

    const-string v8, "online engine call synthesize exception"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->j:Lcom/baidu/tts/e/o;

    .line 22
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_AUTH_FAILURE"

    const/16 v5, 0xa

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x64

    const-string v8, "offline engine auth failure,please check you offline auth params"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->k:Lcom/baidu/tts/e/o;

    .line 23
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_CANCEL_FAILURE"

    const/16 v5, 0xb

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x65

    const-string v8, "offline engine cancel failure"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->l:Lcom/baidu/tts/e/o;

    .line 24
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_DOWNLOAD_LICENSE_FAILED"

    const/16 v5, 0xc

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x66

    const-string v8, "offline engine download license failure"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->m:Lcom/baidu/tts/e/o;

    .line 25
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_AUTH_NULL"

    const/16 v5, 0xd

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x67

    const-string v8, "offline engine auth authinfo is null"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->n:Lcom/baidu/tts/e/o;

    .line 26
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_AUTH_ENUM_NULL"

    const/16 v5, 0xe

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x68

    const-string v8, "offline engine OfflineAuthEnum is null"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->o:Lcom/baidu/tts/e/o;

    .line 27
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_AUTH_INTERRUPTED_EXCEPTION"

    const/16 v5, 0xf

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x69

    const-string v8, "InterruptedException"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->p:Lcom/baidu/tts/e/o;

    .line 28
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_AUTH_EXECUTION_EXCEPTION"

    const/16 v5, 0x10

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x6a

    const-string v8, "ExecutionException"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->q:Lcom/baidu/tts/e/o;

    .line 29
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_AUTH_TIMEOUT_EXCEPTION"

    const/16 v5, 0x11

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x6b

    const-string v8, "TimeoutException"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->r:Lcom/baidu/tts/e/o;

    .line 30
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_INIT_FAILED"

    const/16 v5, 0x12

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x6c

    const-string v8, "bdTTSEngineInit failed,please check you offline params"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->s:Lcom/baidu/tts/e/o;

    .line 31
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_UNINITIALIZED"

    const/16 v5, 0x13

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x6d

    const-string v8, "offline engine is uninitialized,please invoke initTts() method"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->t:Lcom/baidu/tts/e/o;

    .line 32
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_CALL_EXCEPTION"

    const/16 v5, 0x14

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x6e

    const-string v8, "offline engine call synthesize exception"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->u:Lcom/baidu/tts/e/o;

    .line 33
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_SYNTHESIZE_ERROR"

    const/16 v5, 0x15

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x6f

    const-string v8, "offline engine synthesize result not 0"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->v:Lcom/baidu/tts/e/o;

    .line 34
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_AUTH_EXPIRED"

    const/16 v5, 0x16

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x70

    const-string v8, "offline engine auth verify expired,formal expired or temp expired"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->w:Lcom/baidu/tts/e/o;

    .line 35
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_AUTH_PACKAGE_UNMATCH"

    const/16 v5, 0x17

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x71

    const-string v8, "package name is unmatch"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->x:Lcom/baidu/tts/e/o;

    .line 36
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_AUTH_SIGN_UNMATCH"

    const/16 v5, 0x18

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x72

    const-string v8, "app sign is unmatch"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->y:Lcom/baidu/tts/e/o;

    .line 37
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_AUTH_CUID_UNMATCH"

    const/16 v5, 0x19

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x73

    const-string v8, "devices cuid is unmatch"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->z:Lcom/baidu/tts/e/o;

    .line 38
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_AUTH_PLATFORM_ERROR"

    const/16 v5, 0x1a

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x74

    const-string v8, "platform is unmatch"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->A:Lcom/baidu/tts/e/o;

    .line 39
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "OFFLINE_ENGINE_AUTH_LICENSE_FILE_INVALID"

    const/16 v5, 0x1b

    sget-object v6, Lcom/baidu/tts/e/o$a;->c:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x75

    const-string v8, "license file not exist or file length is 0 (download license fail)"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->B:Lcom/baidu/tts/e/o;

    .line 41
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "MIX_ENGINE_AUTH_FAILURE"

    const/16 v5, 0x1c

    sget-object v6, Lcom/baidu/tts/e/o$a;->a:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0xc8

    const-string v8, "both online and offline engine auth failue"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->C:Lcom/baidu/tts/e/o;

    .line 42
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "MIX_AUTH_INTERRUPTED_EXCEPTION"

    const/16 v5, 0x1d

    sget-object v6, Lcom/baidu/tts/e/o$a;->a:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0xc9

    const-string v8, "InterruptedException"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->D:Lcom/baidu/tts/e/o;

    .line 43
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "MIX_AUTH_EXECUTION_EXCEPTION"

    const/16 v5, 0x1e

    sget-object v6, Lcom/baidu/tts/e/o$a;->a:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0xca

    const-string v8, "ExecutionException"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->E:Lcom/baidu/tts/e/o;

    .line 44
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "MIX_AUTH_TIMEOUT_EXCEPTION"

    const/16 v5, 0x1f

    sget-object v6, Lcom/baidu/tts/e/o$a;->a:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0xcb

    const-string v8, "TimeoutException"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->F:Lcom/baidu/tts/e/o;

    .line 46
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TEXT_IS_EMPTY"

    const/16 v5, 0x20

    sget-object v6, Lcom/baidu/tts/e/o$a;->d:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x12c

    const-string v8, "text is null or empty double quotation marks"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->G:Lcom/baidu/tts/e/o;

    .line 47
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TEXT_IS_TOO_LONG"

    const/16 v5, 0x21

    sget-object v6, Lcom/baidu/tts/e/o$a;->d:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x12d

    const-string v8, "text length in gbk is more than 1024, the text is too long, cut it short than 1024"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->H:Lcom/baidu/tts/e/o;

    .line 48
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TEXT_ENCODE_IS_WRONG"

    const/16 v5, 0x22

    sget-object v6, Lcom/baidu/tts/e/o$a;->d:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x12e

    const-string v8, "text encode is not gbk, please use gbk text"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->I:Lcom/baidu/tts/e/o;

    .line 50
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TTS_UNINITIAL"

    const/16 v5, 0x23

    sget-object v6, Lcom/baidu/tts/e/o$a;->e:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x190

    const-string v8, "tts has not been initialized,invoke in a wrong state"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->J:Lcom/baidu/tts/e/o;

    .line 51
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TTS_MODE_ILLEGAL"

    const/16 v5, 0x24

    sget-object v6, Lcom/baidu/tts/e/o$a;->e:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x191

    const-string v8, "tts mode unset or not the spechified value"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->K:Lcom/baidu/tts/e/o;

    .line 52
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TTS_QUEUE_IS_FULL"

    const/16 v5, 0x25

    sget-object v6, Lcom/baidu/tts/e/o$a;->e:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x192

    const-string v8, "\u961f\u5217\u957f\u5ea6\u5c0f\u4e8eMAX_QUEUE_SIZE\u65f6\u624d\u80fd\u52a0\u5165\u5408\u6210\u961f\u5217"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->L:Lcom/baidu/tts/e/o;

    .line 53
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TTS_LIST_IS_TOO_LONG"

    const/16 v5, 0x26

    sget-object v6, Lcom/baidu/tts/e/o$a;->e:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x193

    const-string v8, "list\u7684size\u5c0f\u4e8eMAX_LIST_SIZE\u65f6\u624d\u6709\u6548"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->M:Lcom/baidu/tts/e/o;

    .line 54
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TTS_ENGINE_STOP_FAILURE"

    const/16 v5, 0x27

    sget-object v6, Lcom/baidu/tts/e/o$a;->e:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x194

    const-string v8, "\u5f15\u64ce\u505c\u6b62\u5931\u8d25"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->N:Lcom/baidu/tts/e/o;

    .line 55
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TTS_APP_ID_IS_INVALID"

    const/16 v5, 0x28

    sget-object v6, Lcom/baidu/tts/e/o$a;->e:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x195

    const-string v8, "app id is invalid,must be less than int(11)"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->O:Lcom/baidu/tts/e/o;

    .line 56
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TTS_PARAMETER_INVALID"

    const/16 v5, 0x29

    sget-object v6, Lcom/baidu/tts/e/o$a;->e:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x196

    const-string v8, "arguments of the method is invalid"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->P:Lcom/baidu/tts/e/o;

    .line 58
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "APP_RESOURCE_IS_NULL"

    const/16 v5, 0x2a

    sget-object v6, Lcom/baidu/tts/e/o$a;->f:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x1f4

    const-string v8, "context was released or persistent app value is null"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->Q:Lcom/baidu/tts/e/o;

    .line 60
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "PLAYER_IS_NULL"

    const/16 v5, 0x2b

    sget-object v6, Lcom/baidu/tts/e/o$a;->g:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x258

    const-string v8, "player is null"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->R:Lcom/baidu/tts/e/o;

    .line 62
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "MODEL_PARAMS_ERROR"

    const/16 v5, 0x2c

    sget-object v6, Lcom/baidu/tts/e/o$a;->h:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x3e8

    const-string v8, "params is wrong"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->S:Lcom/baidu/tts/e/o;

    .line 63
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "MODEL_REQUEST_ERROR"

    const/16 v5, 0x2d

    sget-object v6, Lcom/baidu/tts/e/o$a;->h:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x3e9

    const-string v8, "request error"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->T:Lcom/baidu/tts/e/o;

    .line 64
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "MODEL_SERVER_ERROR"

    const/16 v5, 0x2e

    sget-object v6, Lcom/baidu/tts/e/o$a;->h:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x3ea

    const-string v8, "server error"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->U:Lcom/baidu/tts/e/o;

    .line 66
    new-instance v3, Lcom/baidu/tts/e/o;

    const-string v4, "TTS_ERROR_UNKNOW"

    const/16 v5, 0x2f

    sget-object v6, Lcom/baidu/tts/e/o$a;->i:Lcom/baidu/tts/e/o$a;

    const/16 v7, -0x270f

    const-string v8, "unknow"

    invoke-direct/range {v3 .. v8}, Lcom/baidu/tts/e/o;-><init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V

    sput-object v3, Lcom/baidu/tts/e/o;->V:Lcom/baidu/tts/e/o;

    .line 10
    const/16 v0, 0x30

    new-array v0, v0, [Lcom/baidu/tts/e/o;

    sget-object v1, Lcom/baidu/tts/e/o;->a:Lcom/baidu/tts/e/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/tts/e/o;->b:Lcom/baidu/tts/e/o;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/tts/e/o;->c:Lcom/baidu/tts/e/o;

    aput-object v1, v0, v10

    sget-object v1, Lcom/baidu/tts/e/o;->d:Lcom/baidu/tts/e/o;

    aput-object v1, v0, v11

    sget-object v1, Lcom/baidu/tts/e/o;->e:Lcom/baidu/tts/e/o;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/tts/e/o;->f:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/tts/e/o;->g:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/tts/e/o;->h:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/tts/e/o;->i:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/tts/e/o;->j:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/baidu/tts/e/o;->k:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/baidu/tts/e/o;->l:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/baidu/tts/e/o;->m:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/baidu/tts/e/o;->n:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/baidu/tts/e/o;->o:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/baidu/tts/e/o;->p:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/baidu/tts/e/o;->q:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/baidu/tts/e/o;->r:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/baidu/tts/e/o;->s:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/baidu/tts/e/o;->t:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/baidu/tts/e/o;->u:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/baidu/tts/e/o;->v:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/baidu/tts/e/o;->w:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/baidu/tts/e/o;->x:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/baidu/tts/e/o;->y:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/baidu/tts/e/o;->z:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/baidu/tts/e/o;->A:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/baidu/tts/e/o;->B:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/baidu/tts/e/o;->C:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/baidu/tts/e/o;->D:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/baidu/tts/e/o;->E:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/baidu/tts/e/o;->F:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/baidu/tts/e/o;->G:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/baidu/tts/e/o;->H:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/baidu/tts/e/o;->I:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/baidu/tts/e/o;->J:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/baidu/tts/e/o;->K:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/baidu/tts/e/o;->L:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/baidu/tts/e/o;->M:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/baidu/tts/e/o;->N:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/baidu/tts/e/o;->O:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/baidu/tts/e/o;->P:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/baidu/tts/e/o;->Q:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/baidu/tts/e/o;->R:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/baidu/tts/e/o;->S:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/baidu/tts/e/o;->T:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/baidu/tts/e/o;->U:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/baidu/tts/e/o;->V:Lcom/baidu/tts/e/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/tts/e/o;->Z:[Lcom/baidu/tts/e/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/baidu/tts/e/o$a;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lcom/baidu/tts/e/o;->W:Lcom/baidu/tts/e/o$a;

    .line 78
    iput p4, p0, Lcom/baidu/tts/e/o;->X:I

    .line 79
    iput-object p5, p0, Lcom/baidu/tts/e/o;->Y:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/o;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/baidu/tts/e/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/e/o;

    return-object v0
.end method

.method public static values()[Lcom/baidu/tts/e/o;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/tts/e/o;->Z:[Lcom/baidu/tts/e/o;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/tts/e/o;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/baidu/tts/e/o;->X:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/tts/e/o;->Y:Ljava/lang/String;

    return-object v0
.end method
