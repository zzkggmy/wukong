.class Lu/aly/bh$a;
.super Lu/aly/di;
.source "MiscInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/di",
        "<",
        "Lu/aly/bh;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Lu/aly/di;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bh$1;)V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Lu/aly/bh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/bh;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 694
    invoke-virtual {p1}, Lu/aly/cy;->j()Lu/aly/dd;

    .line 696
    :goto_0
    invoke-virtual {p1}, Lu/aly/cy;->l()Lu/aly/ct;

    move-result-object v0

    .line 697
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-nez v1, :cond_0

    .line 786
    invoke-virtual {p1}, Lu/aly/cy;->k()V

    .line 790
    invoke-virtual {p2}, Lu/aly/bh;->H()V

    .line 791
    return-void

    .line 700
    :cond_0
    iget-short v1, v0, Lu/aly/ct;->c:S

    packed-switch v1, :pswitch_data_0

    .line 782
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    .line 784
    :goto_1
    invoke-virtual {p1}, Lu/aly/cy;->m()V

    goto :goto_0

    .line 702
    :pswitch_0
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_1

    .line 703
    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->a:I

    .line 704
    invoke-virtual {p2, v2}, Lu/aly/bh;->a(Z)V

    goto :goto_1

    .line 706
    :cond_1
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    .line 710
    :pswitch_1
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_2

    .line 711
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    .line 712
    invoke-virtual {p2, v2}, Lu/aly/bh;->b(Z)V

    goto :goto_1

    .line 714
    :cond_2
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    .line 718
    :pswitch_2
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_3

    .line 719
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    .line 720
    invoke-virtual {p2, v2}, Lu/aly/bh;->c(Z)V

    goto :goto_1

    .line 722
    :cond_3
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    .line 726
    :pswitch_3
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v5, :cond_4

    .line 727
    invoke-virtual {p1}, Lu/aly/cy;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bh;->d:D

    .line 728
    invoke-virtual {p2, v2}, Lu/aly/bh;->d(Z)V

    goto :goto_1

    .line 730
    :cond_4
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    .line 734
    :pswitch_4
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v5, :cond_5

    .line 735
    invoke-virtual {p1}, Lu/aly/cy;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bh;->e:D

    .line 736
    invoke-virtual {p2, v2}, Lu/aly/bh;->e(Z)V

    goto :goto_1

    .line 738
    :cond_5
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    .line 742
    :pswitch_5
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_6

    .line 743
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->f:Ljava/lang/String;

    .line 744
    invoke-virtual {p2, v2}, Lu/aly/bh;->f(Z)V

    goto :goto_1

    .line 746
    :cond_6
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto :goto_1

    .line 750
    :pswitch_6
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_7

    .line 751
    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->g:I

    .line 752
    invoke-virtual {p2, v2}, Lu/aly/bh;->g(Z)V

    goto/16 :goto_1

    .line 754
    :cond_7
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    .line 758
    :pswitch_7
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_8

    .line 759
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    .line 760
    invoke-virtual {p2, v2}, Lu/aly/bh;->h(Z)V

    goto/16 :goto_1

    .line 762
    :cond_8
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    .line 766
    :pswitch_8
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v4, :cond_9

    .line 767
    invoke-virtual {p1}, Lu/aly/cy;->w()I

    move-result v0

    invoke-static {v0}, Lu/aly/ao;->a(I)Lu/aly/ao;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->i:Lu/aly/ao;

    .line 768
    invoke-virtual {p2, v2}, Lu/aly/bh;->i(Z)V

    goto/16 :goto_1

    .line 770
    :cond_9
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    .line 774
    :pswitch_9
    iget-byte v1, v0, Lu/aly/ct;->b:B

    if-ne v1, v3, :cond_a

    .line 775
    invoke-virtual {p1}, Lu/aly/cy;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->j:Ljava/lang/String;

    .line 776
    invoke-virtual {p2, v2}, Lu/aly/bh;->j(Z)V

    goto/16 :goto_1

    .line 778
    :cond_a
    iget-byte v0, v0, Lu/aly/ct;->b:B

    invoke-static {p1, v0}, Lu/aly/db;->a(Lu/aly/cy;B)V

    goto/16 :goto_1

    .line 700
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
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 689
    check-cast p2, Lu/aly/bh;

    invoke-virtual {p0, p1, p2}, Lu/aly/bh$a;->b(Lu/aly/cy;Lu/aly/bh;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/bh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 795
    invoke-virtual {p2}, Lu/aly/bh;->H()V

    .line 797
    invoke-static {}, Lu/aly/bh;->I()Lu/aly/dd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/dd;)V

    .line 798
    invoke-virtual {p2}, Lu/aly/bh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-static {}, Lu/aly/bh;->J()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 800
    iget v0, p2, Lu/aly/bh;->a:I

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(I)V

    .line 801
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 803
    :cond_0
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {p2}, Lu/aly/bh;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    invoke-static {}, Lu/aly/bh;->K()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 806
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 810
    :cond_1
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 811
    invoke-virtual {p2}, Lu/aly/bh;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    invoke-static {}, Lu/aly/bh;->L()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 813
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 817
    :cond_2
    invoke-virtual {p2}, Lu/aly/bh;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 818
    invoke-static {}, Lu/aly/bh;->M()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 819
    iget-wide v0, p2, Lu/aly/bh;->d:D

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(D)V

    .line 820
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 822
    :cond_3
    invoke-virtual {p2}, Lu/aly/bh;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 823
    invoke-static {}, Lu/aly/bh;->N()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 824
    iget-wide v0, p2, Lu/aly/bh;->e:D

    invoke-virtual {p1, v0, v1}, Lu/aly/cy;->a(D)V

    .line 825
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 827
    :cond_4
    iget-object v0, p2, Lu/aly/bh;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 828
    invoke-virtual {p2}, Lu/aly/bh;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 829
    invoke-static {}, Lu/aly/bh;->O()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 830
    iget-object v0, p2, Lu/aly/bh;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 834
    :cond_5
    invoke-virtual {p2}, Lu/aly/bh;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 835
    invoke-static {}, Lu/aly/bh;->P()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 836
    iget v0, p2, Lu/aly/bh;->g:I

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(I)V

    .line 837
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 839
    :cond_6
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 840
    invoke-virtual {p2}, Lu/aly/bh;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 841
    invoke-static {}, Lu/aly/bh;->Q()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 842
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 846
    :cond_7
    iget-object v0, p2, Lu/aly/bh;->i:Lu/aly/ao;

    if-eqz v0, :cond_8

    .line 847
    invoke-virtual {p2}, Lu/aly/bh;->D()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 848
    invoke-static {}, Lu/aly/bh;->R()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 849
    iget-object v0, p2, Lu/aly/bh;->i:Lu/aly/ao;

    invoke-virtual {v0}, Lu/aly/ao;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(I)V

    .line 850
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 853
    :cond_8
    iget-object v0, p2, Lu/aly/bh;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 854
    invoke-virtual {p2}, Lu/aly/bh;->G()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 855
    invoke-static {}, Lu/aly/bh;->S()Lu/aly/ct;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Lu/aly/ct;)V

    .line 856
    iget-object v0, p2, Lu/aly/bh;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/cy;->a(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p1}, Lu/aly/cy;->c()V

    .line 860
    :cond_9
    invoke-virtual {p1}, Lu/aly/cy;->d()V

    .line 861
    invoke-virtual {p1}, Lu/aly/cy;->b()V

    .line 862
    return-void
.end method

.method public synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 689
    check-cast p2, Lu/aly/bh;

    invoke-virtual {p0, p1, p2}, Lu/aly/bh$a;->a(Lu/aly/cy;Lu/aly/bh;)V

    return-void
.end method
