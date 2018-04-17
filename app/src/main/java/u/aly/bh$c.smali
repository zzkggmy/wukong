.class Lu/aly/bh$c;
.super Lu/aly/dj;
.source "MiscInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dj",
        "<",
        "Lu/aly/bh;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bh$1;)V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0}, Lu/aly/bh$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/bh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 877
    check-cast p1, Lu/aly/de;

    .line 878
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 879
    invoke-virtual {p2}, Lu/aly/bh;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 882
    :cond_0
    invoke-virtual {p2}, Lu/aly/bh;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 885
    :cond_1
    invoke-virtual {p2}, Lu/aly/bh;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 886
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 888
    :cond_2
    invoke-virtual {p2}, Lu/aly/bh;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 889
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 891
    :cond_3
    invoke-virtual {p2}, Lu/aly/bh;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 892
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 894
    :cond_4
    invoke-virtual {p2}, Lu/aly/bh;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 895
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 897
    :cond_5
    invoke-virtual {p2}, Lu/aly/bh;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 898
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 900
    :cond_6
    invoke-virtual {p2}, Lu/aly/bh;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 901
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 903
    :cond_7
    invoke-virtual {p2}, Lu/aly/bh;->D()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 904
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 906
    :cond_8
    invoke-virtual {p2}, Lu/aly/bh;->G()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 907
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 909
    :cond_9
    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(Ljava/util/BitSet;I)V

    .line 910
    invoke-virtual {p2}, Lu/aly/bh;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 911
    iget v0, p2, Lu/aly/bh;->a:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 913
    :cond_a
    invoke-virtual {p2}, Lu/aly/bh;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 914
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 916
    :cond_b
    invoke-virtual {p2}, Lu/aly/bh;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 917
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 919
    :cond_c
    invoke-virtual {p2}, Lu/aly/bh;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 920
    iget-wide v0, p2, Lu/aly/bh;->d:D

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(D)V

    .line 922
    :cond_d
    invoke-virtual {p2}, Lu/aly/bh;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 923
    iget-wide v0, p2, Lu/aly/bh;->e:D

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(D)V

    .line 925
    :cond_e
    invoke-virtual {p2}, Lu/aly/bh;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 926
    iget-object v0, p2, Lu/aly/bh;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 928
    :cond_f
    invoke-virtual {p2}, Lu/aly/bh;->x()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 929
    iget v0, p2, Lu/aly/bh;->g:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 931
    :cond_10
    invoke-virtual {p2}, Lu/aly/bh;->A()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 932
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 934
    :cond_11
    invoke-virtual {p2}, Lu/aly/bh;->D()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 935
    iget-object v0, p2, Lu/aly/bh;->i:Lu/aly/ao;

    invoke-virtual {v0}, Lu/aly/ao;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 937
    :cond_12
    invoke-virtual {p2}, Lu/aly/bh;->G()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 938
    iget-object v0, p2, Lu/aly/bh;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 940
    :cond_13
    return-void
.end method

.method public bridge synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 872
    check-cast p2, Lu/aly/bh;

    invoke-virtual {p0, p1, p2}, Lu/aly/bh$c;->a(Lu/aly/cy;Lu/aly/bh;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/bh;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 945
    check-cast p1, Lu/aly/de;

    .line 946
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lu/aly/de;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 947
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v1

    iput v1, p2, Lu/aly/bh;->a:I

    .line 949
    invoke-virtual {p2, v4}, Lu/aly/bh;->a(Z)V

    .line 951
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 952
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bh;->b:Ljava/lang/String;

    .line 953
    invoke-virtual {p2, v4}, Lu/aly/bh;->b(Z)V

    .line 955
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 956
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bh;->c:Ljava/lang/String;

    .line 957
    invoke-virtual {p2, v4}, Lu/aly/bh;->c(Z)V

    .line 959
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 960
    invoke-virtual {p1}, Lu/aly/de;->y()D

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bh;->d:D

    .line 961
    invoke-virtual {p2, v4}, Lu/aly/bh;->d(Z)V

    .line 963
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 964
    invoke-virtual {p1}, Lu/aly/de;->y()D

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bh;->e:D

    .line 965
    invoke-virtual {p2, v4}, Lu/aly/bh;->e(Z)V

    .line 967
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 968
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bh;->f:Ljava/lang/String;

    .line 969
    invoke-virtual {p2, v4}, Lu/aly/bh;->f(Z)V

    .line 971
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 972
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v1

    iput v1, p2, Lu/aly/bh;->g:I

    .line 973
    invoke-virtual {p2, v4}, Lu/aly/bh;->g(Z)V

    .line 975
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 976
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bh;->h:Ljava/lang/String;

    .line 977
    invoke-virtual {p2, v4}, Lu/aly/bh;->h(Z)V

    .line 979
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 980
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v1

    invoke-static {v1}, Lu/aly/ao;->a(I)Lu/aly/ao;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bh;->i:Lu/aly/ao;

    .line 981
    invoke-virtual {p2, v4}, Lu/aly/bh;->i(Z)V

    .line 983
    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 984
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->j:Ljava/lang/String;

    .line 985
    invoke-virtual {p2, v4}, Lu/aly/bh;->j(Z)V

    .line 987
    :cond_9
    return-void
.end method

.method public bridge synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 872
    check-cast p2, Lu/aly/bh;

    invoke-virtual {p0, p1, p2}, Lu/aly/bh$c;->b(Lu/aly/cy;Lu/aly/bh;)V

    return-void
.end method
