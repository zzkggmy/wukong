.class public Lcom/umeng/analytics/a;
.super Ljava/lang/Object;
.source "AnalyticsConstants.java"


# static fields
.field public static final a:Ljava/lang/String; = "Android"

.field public static final b:Ljava/lang/String; = "Android"

.field public static final c:Ljava/lang/String; = "5.6.4"

.field public static final d:Ljava/lang/String; = "5.6.4.0"

.field public static final e:Ljava/lang/String; = "MobclickAgent"

.field public static f:Z = false

.field public static final g:[Ljava/lang/String;

.field public static final h:J = 0x5265c00L

.field public static final i:J = 0x36ee80L

.field public static final j:Z = false

.field public static final k:I = 0x40

.field public static final l:I = 0x20

.field public static final m:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 18
    sput-boolean v3, Lcom/umeng/analytics/a;->f:Z

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://alog.umeng.com/app_logs"

    aput-object v2, v0, v1

    const-string v1, "http://alog.umeng.co/app_logs"

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/a;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
