.class Lcom/baidu/tts/loopj/Base64$Encoder;
.super Lcom/baidu/tts/loopj/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/loopj/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 533
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/tts/loopj/Base64$Encoder;->ENCODE:[B

    .line 543
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/tts/loopj/Base64$Encoder;->ENCODE_WEBSAFE:[B

    .line 548
    return-void

    .line 533
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 543
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 559
    invoke-direct {p0}, Lcom/baidu/tts/loopj/Base64$Coder;-><init>()V

    .line 560
    iput-object p2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->output:[B

    .line 562
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_padding:Z

    .line 563
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    .line 564
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    .line 565
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/baidu/tts/loopj/Base64$Encoder;->ENCODE:[B

    :goto_3
    iput-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->alphabet:[B

    .line 567
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    .line 568
    iput v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    .line 570
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->count:I

    .line 571
    return-void

    :cond_0
    move v0, v2

    .line 562
    goto :goto_0

    :cond_1
    move v0, v2

    .line 563
    goto :goto_1

    :cond_2
    move v1, v2

    .line 564
    goto :goto_2

    .line 565
    :cond_3
    sget-object v0, Lcom/baidu/tts/loopj/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_3

    .line 570
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 577
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 10
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .prologue
    .line 582
    iget-object v6, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->alphabet:[B

    .line 583
    iget-object v7, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->output:[B

    .line 584
    const/4 v1, 0x0

    .line 585
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->count:I

    .line 588
    add-int/2addr p3, p2

    .line 589
    const/4 v2, -0x1

    .line 595
    iget v3, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v3, p2

    .line 622
    .end local p2    # "offset":I
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_14

    .line 623
    const/4 v4, 0x1

    shr-int/lit8 v5, v2, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 624
    const/4 v1, 0x2

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v4

    .line 625
    const/4 v4, 0x3

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 626
    const/4 v1, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 627
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_14

    .line 628
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 629
    :goto_1
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 630
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    .line 639
    :goto_2
    add-int/lit8 v0, v3, 0x3

    if-le v0, p3, :cond_5

    .line 656
    if-eqz p4, :cond_c

    .line 662
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    sub-int v0, v3, v0

    add-int/lit8 v1, p3, -0x1

    if-ne v0, v1, :cond_7

    .line 663
    const/4 v2, 0x0

    .line 664
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    move v2, v3

    :goto_3
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x4

    .line 665
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    .line 666
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v4

    .line 667
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v1

    .line 668
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_1

    .line 669
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v0

    .line 670
    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v1

    .line 672
    :cond_1
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_12

    .line 673
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xd

    aput-byte v3, v7, v0

    move v0, v1

    .line 674
    :cond_2
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    move v3, v2

    .line 696
    :cond_3
    :goto_4
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    if-nez v0, :cond_4

    if-eq v3, p3, :cond_d

    .line 697
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .restart local p2    # "offset":I
    :pswitch_0
    move v3, p2

    .line 598
    goto/16 :goto_0

    .line 601
    :pswitch_1
    add-int/lit8 v3, p2, 0x2

    if-gt v3, p3, :cond_0

    .line 604
    iget-object v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 605
    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 604
    or-int/2addr v2, v4

    .line 606
    add-int/lit8 p2, v3, 0x1

    aget-byte v3, p1, v3

    .end local p2    # "offset":I
    and-int/lit16 v3, v3, 0xff

    .line 604
    or-int/2addr v2, v3

    .line 607
    const/4 v3, 0x0

    iput v3, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    move v3, p2

    .line 609
    goto/16 :goto_0

    .line 612
    .restart local p2    # "offset":I
    :pswitch_2
    add-int/lit8 v3, p2, 0x1

    if-gt v3, p3, :cond_0

    .line 614
    iget-object v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 615
    iget-object v3, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 614
    or-int/2addr v2, v3

    .line 616
    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    .line 614
    or-int/2addr v2, v4

    .line 617
    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    goto/16 :goto_0

    .line 640
    .end local p2    # "offset":I
    :cond_5
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 641
    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 640
    or-int/2addr v0, v1

    .line 642
    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 640
    or-int/2addr v0, v1

    .line 643
    shr-int/lit8 v1, v0, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v4

    .line 644
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 645
    add-int/lit8 v1, v4, 0x2

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 646
    add-int/lit8 v1, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v1

    .line 647
    add-int/lit8 v3, v3, 0x3

    .line 648
    add-int/lit8 v1, v4, 0x4

    .line 649
    add-int/lit8 v0, v5, -0x1

    if-nez v0, :cond_14

    .line 650
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_13

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 651
    :goto_5
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 652
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    goto/16 :goto_2

    .line 664
    :cond_6
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v9, v2

    move v2, v1

    move v1, v9

    goto/16 :goto_3

    .line 676
    :cond_7
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    sub-int v0, v3, v0

    add-int/lit8 v1, p3, -0x2

    if-ne v0, v1, :cond_b

    .line 677
    const/4 v2, 0x0

    .line 678
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    :goto_6
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v8, v0, 0xa

    .line 679
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    move v1, v2

    :goto_7
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    .line 678
    or-int/2addr v0, v8

    .line 680
    iget v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    .line 681
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 682
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v1

    .line 683
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v2

    .line 684
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_padding:Z

    if-eqz v0, :cond_11

    .line 685
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v7, v1

    .line 687
    :goto_8
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_10

    .line 688
    iget-boolean v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v0

    move v0, v1

    .line 689
    :cond_8
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    goto/16 :goto_4

    .line 678
    :cond_9
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v1

    move v1, v2

    goto :goto_6

    .line 679
    :cond_a
    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v2

    goto :goto_7

    .line 691
    :cond_b
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_3

    if-lez v4, :cond_3

    const/16 v0, 0x13

    if-eq v5, v0, :cond_3

    .line 692
    iget-boolean v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->do_cr:Z

    if-eqz v0, :cond_f

    add-int/lit8 v0, v4, 0x1

    const/16 v1, 0xd

    aput-byte v1, v7, v4

    .line 693
    :goto_9
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    goto/16 :goto_4

    .line 703
    :cond_c
    add-int/lit8 v0, p3, -0x1

    if-ne v3, v0, :cond_e

    .line 704
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 711
    :cond_d
    :goto_a
    iput v4, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->op:I

    .line 712
    iput v5, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->count:I

    .line 714
    const/4 v0, 0x1

    return v0

    .line 705
    :cond_e
    add-int/lit8 v0, p3, -0x2

    if-ne v3, v0, :cond_d

    .line 706
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 707
    iget-object v0, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tail:[B

    iget v1, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/baidu/tts/loopj/Base64$Encoder;->tailLen:I

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    goto :goto_a

    :cond_f
    move v0, v4

    goto :goto_9

    :cond_10
    move v4, v0

    goto/16 :goto_4

    :cond_11
    move v0, v1

    goto :goto_8

    :cond_12
    move v3, v2

    move v4, v0

    goto/16 :goto_4

    :cond_13
    move v0, v1

    goto/16 :goto_5

    :cond_14
    move v5, v0

    move v4, v1

    goto/16 :goto_2

    :cond_15
    move v0, v1

    goto/16 :goto_1

    .line 595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
