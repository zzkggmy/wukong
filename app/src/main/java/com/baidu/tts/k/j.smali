.class public Lcom/baidu/tts/k/j;
.super Lcom/baidu/tts/l/a;
.source "TtsParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/l/a",
        "<",
        "Lcom/baidu/tts/k/j;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic c:[I


# instance fields
.field private a:Lcom/baidu/tts/k/b;

.field private b:Lcom/baidu/tts/k/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/tts/l/a;-><init>()V

    .line 29
    new-instance v0, Lcom/baidu/tts/k/b;

    invoke-direct {v0}, Lcom/baidu/tts/k/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    .line 30
    new-instance v0, Lcom/baidu/tts/k/a;

    invoke-direct {v0}, Lcom/baidu/tts/k/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/k/j;->b:Lcom/baidu/tts/k/a;

    .line 31
    return-void
.end method

.method private b(Lcom/baidu/tts/e/g;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    invoke-virtual {v0}, Lcom/baidu/tts/k/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    invoke-virtual {v1}, Lcom/baidu/tts/k/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/baidu/tts/k/j;->b:Lcom/baidu/tts/k/a;

    invoke-virtual {v2}, Lcom/baidu/tts/k/a;->a()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v2

    .line 91
    invoke-static {}, Lcom/baidu/tts/k/j;->e()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    invoke-virtual {v0, p2}, Lcom/baidu/tts/k/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    invoke-virtual {v0, p2}, Lcom/baidu/tts/k/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    invoke-virtual {v0, p2}, Lcom/baidu/tts/k/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_4
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_5
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_6
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_7
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_8
    invoke-static {p2}, Lcom/baidu/tts/e/d;->a(Ljava/lang/String;)Lcom/baidu/tts/e/d;

    move-result-object v0

    .line 115
    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f$b;->a(Lcom/baidu/tts/e/d;)V

    goto :goto_0

    .line 118
    :pswitch_9
    invoke-virtual {v2, p2}, Lcom/baidu/tts/b/b/b/b$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_a
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_b
    invoke-static {p2}, Lcom/baidu/tts/e/b;->a(Ljava/lang/String;)Lcom/baidu/tts/e/b;

    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f$b;->a(Lcom/baidu/tts/e/b;)V

    goto :goto_0

    .line 128
    :pswitch_c
    invoke-static {p2}, Lcom/baidu/tts/e/c;->a(Ljava/lang/String;)Lcom/baidu/tts/e/c;

    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f$b;->a(Lcom/baidu/tts/e/c;)V

    goto :goto_0

    .line 132
    :pswitch_d
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_e
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_f
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->i(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_10
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_11
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_12
    invoke-static {p2}, Lcom/baidu/tts/e/l;->a(Ljava/lang/String;)Lcom/baidu/tts/e/l;

    move-result-object v0

    .line 149
    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/b/f$b;->a(Lcom/baidu/tts/e/l;)V

    goto :goto_0

    .line 152
    :pswitch_13
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_14
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_15
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_16
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_17
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :pswitch_18
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/baidu/tts/k/j;->b:Lcom/baidu/tts/k/a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/a;->a(I)V

    goto :goto_0

    .line 171
    :pswitch_19
    invoke-static {p2}, Lcom/baidu/tts/e/j;->valueOf(Ljava/lang/String;)Lcom/baidu/tts/e/j;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/k/b;->a(Lcom/baidu/tts/e/j;)V

    goto/16 :goto_0

    .line 175
    :pswitch_1a
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_19
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_f
        :pswitch_8
        :pswitch_18
        :pswitch_b
        :pswitch_c
        :pswitch_12
        :pswitch_13
        :pswitch_d
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_e
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_11
        :pswitch_0
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method static synthetic e()[I
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/baidu/tts/k/j;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/tts/e/g;->values()[Lcom/baidu/tts/e/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/baidu/tts/e/g;->h:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3d

    :goto_1
    :try_start_1
    sget-object v1, Lcom/baidu/tts/e/g;->ah:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3c

    :goto_2
    :try_start_2
    sget-object v1, Lcom/baidu/tts/e/g;->A:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3b

    :goto_3
    :try_start_3
    sget-object v1, Lcom/baidu/tts/e/g;->J:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3a

    :goto_4
    :try_start_4
    sget-object v1, Lcom/baidu/tts/e/g;->N:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_39

    :goto_5
    :try_start_5
    sget-object v1, Lcom/baidu/tts/e/g;->K:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_38

    :goto_6
    :try_start_6
    sget-object v1, Lcom/baidu/tts/e/g;->b:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_37

    :goto_7
    :try_start_7
    sget-object v1, Lcom/baidu/tts/e/g;->ag:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_36

    :goto_8
    :try_start_8
    sget-object v1, Lcom/baidu/tts/e/g;->Z:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_35

    :goto_9
    :try_start_9
    sget-object v1, Lcom/baidu/tts/e/g;->aa:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_34

    :goto_a
    :try_start_a
    sget-object v1, Lcom/baidu/tts/e/g;->S:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_33

    :goto_b
    :try_start_b
    sget-object v1, Lcom/baidu/tts/e/g;->c:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_32

    :goto_c
    :try_start_c
    sget-object v1, Lcom/baidu/tts/e/g;->n:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_31

    :goto_d
    :try_start_d
    sget-object v1, Lcom/baidu/tts/e/g;->o:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_30

    :goto_e
    :try_start_e
    sget-object v1, Lcom/baidu/tts/e/g;->l:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2f

    :goto_f
    :try_start_f
    sget-object v1, Lcom/baidu/tts/e/g;->ad:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2e

    :goto_10
    :try_start_10
    sget-object v1, Lcom/baidu/tts/e/g;->w:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2d

    :goto_11
    :try_start_11
    sget-object v1, Lcom/baidu/tts/e/g;->v:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2c

    :goto_12
    :try_start_12
    sget-object v1, Lcom/baidu/tts/e/g;->u:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2b

    :goto_13
    :try_start_13
    sget-object v1, Lcom/baidu/tts/e/g;->k:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2a

    :goto_14
    :try_start_14
    sget-object v1, Lcom/baidu/tts/e/g;->i:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_29

    :goto_15
    :try_start_15
    sget-object v1, Lcom/baidu/tts/e/g;->X:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_28

    :goto_16
    :try_start_16
    sget-object v1, Lcom/baidu/tts/e/g;->d:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_27

    :goto_17
    :try_start_17
    sget-object v1, Lcom/baidu/tts/e/g;->G:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_26

    :goto_18
    :try_start_18
    sget-object v1, Lcom/baidu/tts/e/g;->g:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_25

    :goto_19
    :try_start_19
    sget-object v1, Lcom/baidu/tts/e/g;->f:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_24

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/baidu/tts/e/g;->x:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_23

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/baidu/tts/e/g;->p:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_22

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/baidu/tts/e/g;->y:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_21

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/baidu/tts/e/g;->ac:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_20

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/baidu/tts/e/g;->T:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1f

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/baidu/tts/e/g;->B:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/baidu/tts/e/g;->z:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_1d

    :goto_21
    :try_start_21
    sget-object v1, Lcom/baidu/tts/e/g;->F:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_1c

    :goto_22
    :try_start_22
    sget-object v1, Lcom/baidu/tts/e/g;->C:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_1b

    :goto_23
    :try_start_23
    sget-object v1, Lcom/baidu/tts/e/g;->O:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1a

    :goto_24
    :try_start_24
    sget-object v1, Lcom/baidu/tts/e/g;->af:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_19

    :goto_25
    :try_start_25
    sget-object v1, Lcom/baidu/tts/e/g;->m:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_18

    :goto_26
    :try_start_26
    sget-object v1, Lcom/baidu/tts/e/g;->V:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_17

    :goto_27
    :try_start_27
    sget-object v1, Lcom/baidu/tts/e/g;->ai:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_16

    :goto_28
    :try_start_28
    sget-object v1, Lcom/baidu/tts/e/g;->W:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_15

    :goto_29
    :try_start_29
    sget-object v1, Lcom/baidu/tts/e/g;->j:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_14

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/baidu/tts/e/g;->L:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_13

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/baidu/tts/e/g;->t:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_12

    :goto_2c
    :try_start_2c
    sget-object v1, Lcom/baidu/tts/e/g;->Q:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_11

    :goto_2d
    :try_start_2d
    sget-object v1, Lcom/baidu/tts/e/g;->D:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_10

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/baidu/tts/e/g;->a:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_f

    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/baidu/tts/e/g;->I:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/baidu/tts/e/g;->M:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_d

    :goto_31
    :try_start_31
    sget-object v1, Lcom/baidu/tts/e/g;->ae:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_c

    :goto_32
    :try_start_32
    sget-object v1, Lcom/baidu/tts/e/g;->Y:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_b

    :goto_33
    :try_start_33
    sget-object v1, Lcom/baidu/tts/e/g;->s:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_a

    :goto_34
    :try_start_34
    sget-object v1, Lcom/baidu/tts/e/g;->P:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_9

    :goto_35
    :try_start_35
    sget-object v1, Lcom/baidu/tts/e/g;->H:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_8

    :goto_36
    :try_start_36
    sget-object v1, Lcom/baidu/tts/e/g;->aj:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_7

    :goto_37
    :try_start_37
    sget-object v1, Lcom/baidu/tts/e/g;->R:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_6

    :goto_38
    :try_start_38
    sget-object v1, Lcom/baidu/tts/e/g;->U:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_5

    :goto_39
    :try_start_39
    sget-object v1, Lcom/baidu/tts/e/g;->e:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_4

    :goto_3a
    :try_start_3a
    sget-object v1, Lcom/baidu/tts/e/g;->ab:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/baidu/tts/e/g;->r:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_2

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/baidu/tts/e/g;->q:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_1

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/baidu/tts/e/g;->E:Lcom/baidu/tts/e/g;

    invoke-virtual {v1}, Lcom/baidu/tts/e/g;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_0

    :goto_3e
    sput-object v0, Lcom/baidu/tts/k/j;->c:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_3e

    :catch_1
    move-exception v1

    goto :goto_3d

    :catch_2
    move-exception v1

    goto :goto_3c

    :catch_3
    move-exception v1

    goto :goto_3b

    :catch_4
    move-exception v1

    goto :goto_3a

    :catch_5
    move-exception v1

    goto :goto_39

    :catch_6
    move-exception v1

    goto :goto_38

    :catch_7
    move-exception v1

    goto :goto_37

    :catch_8
    move-exception v1

    goto :goto_36

    :catch_9
    move-exception v1

    goto :goto_35

    :catch_a
    move-exception v1

    goto :goto_34

    :catch_b
    move-exception v1

    goto/16 :goto_33

    :catch_c
    move-exception v1

    goto/16 :goto_32

    :catch_d
    move-exception v1

    goto/16 :goto_31

    :catch_e
    move-exception v1

    goto/16 :goto_30

    :catch_f
    move-exception v1

    goto/16 :goto_2f

    :catch_10
    move-exception v1

    goto/16 :goto_2e

    :catch_11
    move-exception v1

    goto/16 :goto_2d

    :catch_12
    move-exception v1

    goto/16 :goto_2c

    :catch_13
    move-exception v1

    goto/16 :goto_2b

    :catch_14
    move-exception v1

    goto/16 :goto_2a

    :catch_15
    move-exception v1

    goto/16 :goto_29

    :catch_16
    move-exception v1

    goto/16 :goto_28

    :catch_17
    move-exception v1

    goto/16 :goto_27

    :catch_18
    move-exception v1

    goto/16 :goto_26

    :catch_19
    move-exception v1

    goto/16 :goto_25

    :catch_1a
    move-exception v1

    goto/16 :goto_24

    :catch_1b
    move-exception v1

    goto/16 :goto_23

    :catch_1c
    move-exception v1

    goto/16 :goto_22

    :catch_1d
    move-exception v1

    goto/16 :goto_21

    :catch_1e
    move-exception v1

    goto/16 :goto_20

    :catch_1f
    move-exception v1

    goto/16 :goto_1f

    :catch_20
    move-exception v1

    goto/16 :goto_1e

    :catch_21
    move-exception v1

    goto/16 :goto_1d

    :catch_22
    move-exception v1

    goto/16 :goto_1c

    :catch_23
    move-exception v1

    goto/16 :goto_1b

    :catch_24
    move-exception v1

    goto/16 :goto_1a

    :catch_25
    move-exception v1

    goto/16 :goto_19

    :catch_26
    move-exception v1

    goto/16 :goto_18

    :catch_27
    move-exception v1

    goto/16 :goto_17

    :catch_28
    move-exception v1

    goto/16 :goto_16

    :catch_29
    move-exception v1

    goto/16 :goto_15

    :catch_2a
    move-exception v1

    goto/16 :goto_14

    :catch_2b
    move-exception v1

    goto/16 :goto_13

    :catch_2c
    move-exception v1

    goto/16 :goto_12

    :catch_2d
    move-exception v1

    goto/16 :goto_11

    :catch_2e
    move-exception v1

    goto/16 :goto_10

    :catch_2f
    move-exception v1

    goto/16 :goto_f

    :catch_30
    move-exception v1

    goto/16 :goto_e

    :catch_31
    move-exception v1

    goto/16 :goto_d

    :catch_32
    move-exception v1

    goto/16 :goto_c

    :catch_33
    move-exception v1

    goto/16 :goto_b

    :catch_34
    move-exception v1

    goto/16 :goto_a

    :catch_35
    move-exception v1

    goto/16 :goto_9

    :catch_36
    move-exception v1

    goto/16 :goto_8

    :catch_37
    move-exception v1

    goto/16 :goto_7

    :catch_38
    move-exception v1

    goto/16 :goto_6

    :catch_39
    move-exception v1

    goto/16 :goto_5

    :catch_3a
    move-exception v1

    goto/16 :goto_4

    :catch_3b
    move-exception v1

    goto/16 :goto_3

    :catch_3c
    move-exception v1

    goto/16 :goto_2

    :catch_3d
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public a()Lcom/baidu/tts/k/b;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/e/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/baidu/tts/k/j;->b(Lcom/baidu/tts/e/g;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public b()Lcom/baidu/tts/k/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/tts/k/j;->b:Lcom/baidu/tts/k/a;

    return-object v0
.end method

.method public c()Lcom/baidu/tts/b/a/b/f$b;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    invoke-virtual {v0}, Lcom/baidu/tts/k/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/baidu/tts/b/a/b/e$a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/tts/k/j;->a:Lcom/baidu/tts/k/b;

    invoke-virtual {v0}, Lcom/baidu/tts/k/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    return-object v0
.end method
