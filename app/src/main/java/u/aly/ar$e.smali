.class public final enum Lu/aly/ar$e;
.super Ljava/lang/Enum;
.source "AppInfo.java"

# interfaces
.implements Lu/aly/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ar$e;",
        ">;",
        "Lu/aly/cg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ar$e;

.field public static final enum b:Lu/aly/ar$e;

.field public static final enum c:Lu/aly/ar$e;

.field public static final enum d:Lu/aly/ar$e;

.field public static final enum e:Lu/aly/ar$e;

.field public static final enum f:Lu/aly/ar$e;

.field public static final enum g:Lu/aly/ar$e;

.field public static final enum h:Lu/aly/ar$e;

.field public static final enum i:Lu/aly/ar$e;

.field public static final enum j:Lu/aly/ar$e;

.field public static final enum k:Lu/aly/ar$e;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ar$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic o:[Lu/aly/ar$e;


# instance fields
.field private final m:S

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 78
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "KEY"

    const/4 v2, 0x0

    const-string v3, "key"

    invoke-direct {v0, v1, v2, v5, v3}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    new-instance v0, Lu/aly/ar$e;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    new-instance v0, Lu/aly/ar$e;

    const-string v1, "VERSION_INDEX"

    const-string v2, "version_index"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    .line 79
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "PACKAGE_NAME"

    const-string v2, "package_name"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    .line 84
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "SDK_TYPE"

    const-string v2, "sdk_type"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    new-instance v0, Lu/aly/ar$e;

    const-string v1, "SDK_VERSION"

    const/4 v2, 0x6

    const-string v3, "sdk_version"

    invoke-direct {v0, v1, v9, v2, v3}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    new-instance v0, Lu/aly/ar$e;

    const-string v1, "CHANNEL"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "channel"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    .line 85
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "WRAPPER_TYPE"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "wrapper_type"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    new-instance v0, Lu/aly/ar$e;

    const-string v1, "WRAPPER_VERSION"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "wrapper_version"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    .line 86
    new-instance v0, Lu/aly/ar$e;

    const-string v1, "VERTICAL_TYPE"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "vertical_type"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    new-instance v0, Lu/aly/ar$e;

    const-string v1, "APP_SIGNATURE"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "app_signature"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ar$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [Lu/aly/ar$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    aput-object v2, v0, v1

    sget-object v1, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/ar$e;->o:[Lu/aly/ar$e;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ar$e;->l:Ljava/util/Map;

    .line 92
    const-class v0, Lu/aly/ar$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ar$e;

    .line 93
    sget-object v2, Lu/aly/ar$e;->l:Ljava/util/Map;

    invoke-virtual {v0}, Lu/aly/ar$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput-short p3, p0, Lu/aly/ar$e;->m:S

    .line 154
    iput-object p4, p0, Lu/aly/ar$e;->n:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static a(I)Lu/aly/ar$e;
    .locals 1

    .prologue
    .line 102
    packed-switch p0, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    sget-object v0, Lu/aly/ar$e;->a:Lu/aly/ar$e;

    goto :goto_0

    .line 106
    :pswitch_1
    sget-object v0, Lu/aly/ar$e;->b:Lu/aly/ar$e;

    goto :goto_0

    .line 108
    :pswitch_2
    sget-object v0, Lu/aly/ar$e;->c:Lu/aly/ar$e;

    goto :goto_0

    .line 110
    :pswitch_3
    sget-object v0, Lu/aly/ar$e;->d:Lu/aly/ar$e;

    goto :goto_0

    .line 112
    :pswitch_4
    sget-object v0, Lu/aly/ar$e;->e:Lu/aly/ar$e;

    goto :goto_0

    .line 114
    :pswitch_5
    sget-object v0, Lu/aly/ar$e;->f:Lu/aly/ar$e;

    goto :goto_0

    .line 116
    :pswitch_6
    sget-object v0, Lu/aly/ar$e;->g:Lu/aly/ar$e;

    goto :goto_0

    .line 118
    :pswitch_7
    sget-object v0, Lu/aly/ar$e;->h:Lu/aly/ar$e;

    goto :goto_0

    .line 120
    :pswitch_8
    sget-object v0, Lu/aly/ar$e;->i:Lu/aly/ar$e;

    goto :goto_0

    .line 122
    :pswitch_9
    sget-object v0, Lu/aly/ar$e;->j:Lu/aly/ar$e;

    goto :goto_0

    .line 124
    :pswitch_a
    sget-object v0, Lu/aly/ar$e;->k:Lu/aly/ar$e;

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/ar$e;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lu/aly/ar$e;->l:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ar$e;

    return-object v0
.end method

.method public static b(I)Lu/aly/ar$e;
    .locals 3

    .prologue
    .line 135
    invoke-static {p0}, Lu/aly/ar$e;->a(I)Lu/aly/ar$e;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ar$e;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lu/aly/ar$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ar$e;

    return-object v0
.end method

.method public static values()[Lu/aly/ar$e;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lu/aly/ar$e;->o:[Lu/aly/ar$e;

    invoke-virtual {v0}, [Lu/aly/ar$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/ar$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 158
    iget-short v0, p0, Lu/aly/ar$e;->m:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lu/aly/ar$e;->n:Ljava/lang/String;

    return-object v0
.end method
