.class public final enum Lu/aly/au$e;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"

# interfaces
.implements Lu/aly/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/au$e;",
        ">;",
        "Lu/aly/cg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/au$e;

.field public static final enum b:Lu/aly/au$e;

.field public static final enum c:Lu/aly/au$e;

.field public static final enum d:Lu/aly/au$e;

.field public static final enum e:Lu/aly/au$e;

.field public static final enum f:Lu/aly/au$e;

.field public static final enum g:Lu/aly/au$e;

.field public static final enum h:Lu/aly/au$e;

.field public static final enum i:Lu/aly/au$e;

.field public static final enum j:Lu/aly/au$e;

.field public static final enum k:Lu/aly/au$e;

.field public static final enum l:Lu/aly/au$e;

.field public static final enum m:Lu/aly/au$e;

.field public static final enum n:Lu/aly/au$e;

.field public static final enum o:Lu/aly/au$e;

.field public static final enum p:Lu/aly/au$e;

.field public static final enum q:Lu/aly/au$e;

.field public static final enum r:Lu/aly/au$e;

.field private static final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/au$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic v:[Lu/aly/au$e;


# instance fields
.field private final t:S

.field private final u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 96
    new-instance v0, Lu/aly/au$e;

    const-string v1, "DEVICE_ID"

    const/4 v2, 0x0

    const-string v3, "device_id"

    invoke-direct {v0, v1, v2, v5, v3}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->a:Lu/aly/au$e;

    new-instance v0, Lu/aly/au$e;

    const-string v1, "IDMD5"

    const-string v2, "idmd5"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->b:Lu/aly/au$e;

    new-instance v0, Lu/aly/au$e;

    const-string v1, "MAC_ADDRESS"

    const-string v2, "mac_address"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->c:Lu/aly/au$e;

    .line 97
    new-instance v0, Lu/aly/au$e;

    const-string v1, "OPEN_UDID"

    const-string v2, "open_udid"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->d:Lu/aly/au$e;

    new-instance v0, Lu/aly/au$e;

    const-string v1, "MODEL"

    const-string v2, "model"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->e:Lu/aly/au$e;

    new-instance v0, Lu/aly/au$e;

    const-string v1, "CPU"

    const/4 v2, 0x6

    const-string v3, "cpu"

    invoke-direct {v0, v1, v9, v2, v3}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->f:Lu/aly/au$e;

    .line 98
    new-instance v0, Lu/aly/au$e;

    const-string v1, "OS"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "os"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->g:Lu/aly/au$e;

    new-instance v0, Lu/aly/au$e;

    const-string v1, "OS_VERSION"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "os_version"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->h:Lu/aly/au$e;

    new-instance v0, Lu/aly/au$e;

    const-string v1, "RESOLUTION"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "resolution"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->i:Lu/aly/au$e;

    .line 99
    new-instance v0, Lu/aly/au$e;

    const-string v1, "IS_JAILBROKEN"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "is_jailbroken"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->j:Lu/aly/au$e;

    new-instance v0, Lu/aly/au$e;

    const-string v1, "IS_PIRATED"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "is_pirated"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->k:Lu/aly/au$e;

    .line 100
    new-instance v0, Lu/aly/au$e;

    const-string v1, "DEVICE_BOARD"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "device_board"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->l:Lu/aly/au$e;

    new-instance v0, Lu/aly/au$e;

    const-string v1, "DEVICE_BRAND"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "device_brand"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->m:Lu/aly/au$e;

    .line 101
    new-instance v0, Lu/aly/au$e;

    const-string v1, "DEVICE_MANUTIME"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "device_manutime"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->n:Lu/aly/au$e;

    .line 102
    new-instance v0, Lu/aly/au$e;

    const-string v1, "DEVICE_MANUFACTURER"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "device_manufacturer"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->o:Lu/aly/au$e;

    .line 103
    new-instance v0, Lu/aly/au$e;

    const-string v1, "DEVICE_MANUID"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "device_manuid"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->p:Lu/aly/au$e;

    .line 104
    new-instance v0, Lu/aly/au$e;

    const-string v1, "DEVICE_NAME"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const-string v4, "device_name"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->q:Lu/aly/au$e;

    .line 105
    new-instance v0, Lu/aly/au$e;

    const-string v1, "WP_DEVICE"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "wp_device"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/au$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/au$e;->r:Lu/aly/au$e;

    .line 95
    const/16 v0, 0x12

    new-array v0, v0, [Lu/aly/au$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/au$e;->a:Lu/aly/au$e;

    aput-object v2, v0, v1

    sget-object v1, Lu/aly/au$e;->b:Lu/aly/au$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/au$e;->c:Lu/aly/au$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/au$e;->d:Lu/aly/au$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/au$e;->e:Lu/aly/au$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/au$e;->f:Lu/aly/au$e;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lu/aly/au$e;->g:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/au$e;->h:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/au$e;->i:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/au$e;->j:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lu/aly/au$e;->k:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lu/aly/au$e;->l:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lu/aly/au$e;->m:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lu/aly/au$e;->n:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lu/aly/au$e;->o:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lu/aly/au$e;->p:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lu/aly/au$e;->q:Lu/aly/au$e;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lu/aly/au$e;->r:Lu/aly/au$e;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/au$e;->v:[Lu/aly/au$e;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/au$e;->s:Ljava/util/Map;

    .line 111
    const-class v0, Lu/aly/au$e;

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

    check-cast v0, Lu/aly/au$e;

    .line 112
    sget-object v2, Lu/aly/au$e;->s:Ljava/util/Map;

    invoke-virtual {v0}, Lu/aly/au$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
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
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 186
    iput-short p3, p0, Lu/aly/au$e;->t:S

    .line 187
    iput-object p4, p0, Lu/aly/au$e;->u:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public static a(I)Lu/aly/au$e;
    .locals 1

    .prologue
    .line 121
    packed-switch p0, :pswitch_data_0

    .line 159
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    sget-object v0, Lu/aly/au$e;->a:Lu/aly/au$e;

    goto :goto_0

    .line 125
    :pswitch_1
    sget-object v0, Lu/aly/au$e;->b:Lu/aly/au$e;

    goto :goto_0

    .line 127
    :pswitch_2
    sget-object v0, Lu/aly/au$e;->c:Lu/aly/au$e;

    goto :goto_0

    .line 129
    :pswitch_3
    sget-object v0, Lu/aly/au$e;->d:Lu/aly/au$e;

    goto :goto_0

    .line 131
    :pswitch_4
    sget-object v0, Lu/aly/au$e;->e:Lu/aly/au$e;

    goto :goto_0

    .line 133
    :pswitch_5
    sget-object v0, Lu/aly/au$e;->f:Lu/aly/au$e;

    goto :goto_0

    .line 135
    :pswitch_6
    sget-object v0, Lu/aly/au$e;->g:Lu/aly/au$e;

    goto :goto_0

    .line 137
    :pswitch_7
    sget-object v0, Lu/aly/au$e;->h:Lu/aly/au$e;

    goto :goto_0

    .line 139
    :pswitch_8
    sget-object v0, Lu/aly/au$e;->i:Lu/aly/au$e;

    goto :goto_0

    .line 141
    :pswitch_9
    sget-object v0, Lu/aly/au$e;->j:Lu/aly/au$e;

    goto :goto_0

    .line 143
    :pswitch_a
    sget-object v0, Lu/aly/au$e;->k:Lu/aly/au$e;

    goto :goto_0

    .line 145
    :pswitch_b
    sget-object v0, Lu/aly/au$e;->l:Lu/aly/au$e;

    goto :goto_0

    .line 147
    :pswitch_c
    sget-object v0, Lu/aly/au$e;->m:Lu/aly/au$e;

    goto :goto_0

    .line 149
    :pswitch_d
    sget-object v0, Lu/aly/au$e;->n:Lu/aly/au$e;

    goto :goto_0

    .line 151
    :pswitch_e
    sget-object v0, Lu/aly/au$e;->o:Lu/aly/au$e;

    goto :goto_0

    .line 153
    :pswitch_f
    sget-object v0, Lu/aly/au$e;->p:Lu/aly/au$e;

    goto :goto_0

    .line 155
    :pswitch_10
    sget-object v0, Lu/aly/au$e;->q:Lu/aly/au$e;

    goto :goto_0

    .line 157
    :pswitch_11
    sget-object v0, Lu/aly/au$e;->r:Lu/aly/au$e;

    goto :goto_0

    .line 121
    nop

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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/au$e;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lu/aly/au$e;->s:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/au$e;

    return-object v0
.end method

.method public static b(I)Lu/aly/au$e;
    .locals 3

    .prologue
    .line 168
    invoke-static {p0}, Lu/aly/au$e;->a(I)Lu/aly/au$e;

    move-result-object v0

    .line 169
    if-nez v0, :cond_0

    .line 170
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

    .line 171
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/au$e;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lu/aly/au$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/au$e;

    return-object v0
.end method

.method public static values()[Lu/aly/au$e;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lu/aly/au$e;->v:[Lu/aly/au$e;

    invoke-virtual {v0}, [Lu/aly/au$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/au$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .prologue
    .line 191
    iget-short v0, p0, Lu/aly/au$e;->t:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lu/aly/au$e;->u:Ljava/lang/String;

    return-object v0
.end method
